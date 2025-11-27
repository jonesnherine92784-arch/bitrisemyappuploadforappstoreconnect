
import SwiftUI

struct QuizView: View {
    @Environment(QuizManager.self) var quizManager
    @Environment(\.dismiss) var dismiss
    @State private var showResults = false
    @State private var progress: CGFloat = 0
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue.opacity(0.05), .purple.opacity(0.05)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            if let question = quizManager.currentQuestion {
                VStack(spacing: 0) {
                    VStack(spacing: 12) {
                        HStack {
                            Text("Question \(quizManager.currentQuestionIndex + 1) of \(quizManager.questions.count)")
                                .font(.subheadline.bold())
                                .foregroundStyle(.secondary)
                            Spacer()
                            Text("Score: \(quizManager.score)")
                                .font(.subheadline.bold())
                                .foregroundStyle(.blue)
                        }
                        
                        GeometryReader { geometry in
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.gray.opacity(0.2))
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(
                                        LinearGradient(
                                            colors: [.blue, .purple],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .frame(width: geometry.size.width * progress)
                                    .animation(.spring(response: 0.5, dampingFraction: 0.8), value: progress)
                            }
                        }
                        .frame(height: 8)
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    
                    ScrollView {
                        VStack(spacing: 24) {
                            VStack(alignment: .leading, spacing: 16) {
                                HStack {
                                    Label(question.difficulty.rawValue, systemImage: "star.fill")
                                        .font(.caption.bold())
                                        .foregroundStyle(.white)
                                        .padding(.horizontal, 12)
                                        .padding(.vertical, 6)
                                        .background(difficultyColor(question.difficulty))
                                        .clipShape(Capsule())
                                    Spacer()
                                }
                                
                                Text(question.question)
                                    .font(.title2.bold())
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding(24)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(color: .black.opacity(0.08), radius: 10, y: 5)
                            
                            VStack(spacing: 12) {
                                ForEach(0..<question.options.count, id: \.self) { index in
                                    AnswerButton(
                                        text: question.options[index],
                                        index: index,
                                        isSelected: quizManager.selectedAnswer == index,
                                        isCorrect: index == question.correctAnswer,
                                        showResult: quizManager.showingExplanation
                                    ) {
                                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                            quizManager.selectAnswer(index)
                                        }
                                    }
                                }
                            }
                            
                            if quizManager.showingExplanation {
                                VStack(alignment: .leading, spacing: 12) {
                                    HStack {
                                        Image(systemName: quizManager.selectedAnswer == question.correctAnswer ? "checkmark.circle.fill" : "xmark.circle.fill")
                                            .font(.title2)
                                            .foregroundStyle(quizManager.selectedAnswer == question.correctAnswer ? .green : .red)
                                        Text(quizManager.selectedAnswer == question.correctAnswer ? "Correct!" : "Incorrect")
                                            .font(.title3.bold())
                                    }
                                    
                                    Text(question.explanation)
                                        .font(.body)
                                        .foregroundStyle(.secondary)
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    Button(action: {
                                        withAnimation {
                                            if quizManager.currentQuestionIndex < quizManager.questions.count - 1 {
                                                quizManager.nextQuestion()
                                                updateProgress()
                                            } else {
                                                quizManager.completeQuiz()
                                                showResults = true
                                            }
                                        }
                                    }) {
                                        Text(quizManager.currentQuestionIndex < quizManager.questions.count - 1 ? "Next Question" : "See Results")
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(
                                                LinearGradient(
                                                    colors: [.blue, .purple],
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                )
                                            )
                                            .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                    .padding(.top, 8)
                                }
                                .padding(20)
                                .background(.blue.opacity(0.1))
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .transition(.asymmetric(
                                    insertion: .scale.combined(with: .opacity),
                                    removal: .scale.combined(with: .opacity)
                                ))
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(quizManager.questions.first?.category.rawValue ?? "Quiz")
        .onAppear {
            updateProgress()
        }
        .navigationDestination(isPresented: $showResults) {
            ResultsView()
        }
    }
    
    private func updateProgress() {
        progress = CGFloat(quizManager.currentQuestionIndex + 1) / CGFloat(quizManager.questions.count)
    }
    
    private func difficultyColor(_ difficulty: Difficulty) -> Color {
        switch difficulty {
        case .easy: return .green
        case .medium: return .orange
        case .hard: return .red
        }
    }
}

struct AnswerButton: View {
    let text: String
    let index: Int
    let isSelected: Bool
    let isCorrect: Bool
    let showResult: Bool
    let action: () -> Void
    
    var backgroundColor: Color {
        if showResult {
            if isCorrect {
                return .green
            } else if isSelected {
                return .red
            }
        }
        return isSelected ? .blue : .white
    }
    
    var textColor: Color {
        if showResult {
            return isCorrect || isSelected ? .white : .primary
        }
        return isSelected ? .white : .primary
    }
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(optionLabel(index))
                    .font(.title3.bold())
                    .frame(width: 32, height: 32)
                    .background(textColor.opacity(0.2))
                    .clipShape(Circle())
                
                Text(text)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                if showResult && (isCorrect || isSelected) {
                    Image(systemName: isCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .font(.title3)
                }
            }
            .padding()
            .foregroundStyle(textColor)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: .black.opacity(0.08), radius: 8, y: 4)
        }
        .disabled(showResult)
    }
    
    private func optionLabel(_ index: Int) -> String {
        ["A", "B", "C", "D"][index]
    }
}

#Preview {
    NavigationStack {
        QuizView()
            .environment(QuizManager())
    }
}

