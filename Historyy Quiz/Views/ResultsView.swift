
import SwiftUI

struct ResultsView: View {
    @Environment(QuizManager.self) var quizManager
    @Environment(\.dismiss) var dismiss
    @State private var animateScore = false
    @State private var showConfetti = false
    
    var result: QuizResult? {
        quizManager.results.last
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            if let result = result {
                ScrollView {
                    VStack(spacing: 32) {
                        VStack(spacing: 20) {
                            ZStack {
                                Circle()
                                    .fill(.white.opacity(0.2))
                                    .frame(width: 160, height: 160)
                                
                                Image(systemName: trophyIcon(for: result.percentage))
                                    .font(.system(size: 80))
                                    .foregroundStyle(.white)
                            }
                            .scaleEffect(animateScore ? 1.0 : 0.5)
                            .animation(.spring(response: 0.6, dampingFraction: 0.6).delay(0.2), value: animateScore)
                            
                            VStack(spacing: 8) {
                                Text(resultMessage(for: result.percentage))
                                    .font(.system(size: 36, weight: .bold, design: .rounded))
                                    .foregroundStyle(.white)
                                
                                Text("You scored")
                                    .font(.title3)
                                    .foregroundStyle(.white.opacity(0.9))
                            }
                            .opacity(animateScore ? 1 : 0)
                            .offset(y: animateScore ? 0 : 20)
                            .animation(.easeOut(duration: 0.6).delay(0.4), value: animateScore)
                        }
                        .padding(.top, 40)
                        
                        VStack(spacing: 24) {
                            VStack(spacing: 12) {
                                Text("\(result.score)")
                                    .font(.system(size: 72, weight: .bold, design: .rounded))
                                    .foregroundStyle(
                                        LinearGradient(
                                            colors: [.blue, .purple],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                
                                Text("out of \(result.totalQuestions) questions")
                                    .font(.title3)
                                    .foregroundStyle(.secondary)
                            }
                            
                            Divider()
                            
                            LazyVGrid(columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ], spacing: 20) {
                                StatCard(
                                    icon: "percent",
                                    value: String(format: "%.0f%%", result.percentage),
                                    label: "Accuracy"
                                )
                                
                                StatCard(
                                    icon: "text.badge.star",
                                    value: result.grade,
                                    label: "Grade"
                                )
                                
                                StatCard(
                                    icon: "clock.fill",
                                    value: timeString(from: result.timeSpent),
                                    label: "Time"
                                )
                                
                                StatCard(
                                    icon: result.category.icon,
                                    value: result.category.rawValue,
                                    label: "Category"
                                )
                            }
                        }
                        .padding(24)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                        .shadow(color: .black.opacity(0.1), radius: 20, y: 10)
                        .padding(.horizontal)
                        .opacity(animateScore ? 1 : 0)
                        .offset(y: animateScore ? 0 : 30)
                        .animation(.easeOut(duration: 0.6).delay(0.6), value: animateScore)
                        
                        VStack(spacing: 12) {
                            Button(action: {
                                dismiss()
                                dismiss()
                            }) {
                                Label("Try Another Category", systemImage: "arrow.counterclockwise")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(.white.opacity(0.2))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                            
                            Button(action: {
                                dismiss()
                                dismiss()
                                dismiss()
                            }) {
                                Label("Back to Home", systemImage: "house.fill")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(.white.opacity(0.2))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                        }
                        .padding(.horizontal)
                        .opacity(animateScore ? 1 : 0)
                        .animation(.easeOut(duration: 0.6).delay(0.8), value: animateScore)
                    }
                    .padding(.bottom, 40)
                }
            } else {
                VStack(spacing: 20) {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(.white)
                    
                    Text("Results Not Available")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                    
                    Text("Please try taking the quiz again")
                        .font(.body)
                        .foregroundStyle(.white.opacity(0.8))
                    
                    Button(action: {
                        dismiss()
                        dismiss()
                    }) {
                        Text("Back to Categories")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.white.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    .padding(.horizontal)
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            animateScore = true
        }
    }
    
    private var gradientColors: [Color] {
        guard let result = result else { return [.blue, .purple] }
        if result.percentage >= 80 {
            return [.green, .mint]
        } else if result.percentage >= 60 {
            return [.blue, .cyan]
        } else {
            return [.orange, .red]
        }
    }
    
    private func trophyIcon(for percentage: Double) -> String {
        if percentage >= 90 {
            return "trophy.fill"
        } else if percentage >= 70 {
            return "star.fill"
        } else {
            return "hand.thumbsup.fill"
        }
    }
    
    private func resultMessage(for percentage: Double) -> String {
        if percentage >= 90 {
            return "Outstanding!"
        } else if percentage >= 80 {
            return "Excellent!"
        } else if percentage >= 70 {
            return "Great Job!"
        } else if percentage >= 60 {
            return "Good Effort!"
        } else {
            return "Keep Trying!"
        }
    }
    
    private func timeString(from timeInterval: TimeInterval) -> String {
        let minutes = Int(timeInterval) / 60
        let seconds = Int(timeInterval) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

struct StatCard: View {
    let icon: String
    let value: String
    let label: String
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(.blue)
            
            Text(value)
                .font(.title3.bold())
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            
            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    NavigationStack {
        ResultsView()
            .environment(QuizManager())
    }
}

