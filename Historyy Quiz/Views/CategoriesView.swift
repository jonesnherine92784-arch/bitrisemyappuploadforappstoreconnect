
import SwiftUI

struct CategoriesView: View {
    @Environment(QuizManager.self) var quizManager
    @Environment(\.dismiss) var dismiss
    @State private var selectedCategory: QuizCategory?
    @State private var startQuiz = false
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue.opacity(0.1), .purple.opacity(0.1)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Choose a Category")
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                        Text("Select a historical period to test your knowledge")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(QuizCategory.allCases, id: \.self) { category in
                            CategoryCard(category: category)
                                .onTapGesture {
                                    selectedCategory = category
                                    quizManager.startQuiz(category: category)
                                    startQuiz = true
                                }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom, 30)
            }
        }
        .navigationTitle("Categories")
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(isPresented: $startQuiz) {
            if let _ = selectedCategory {
                QuizView()
            }
        }
    }
}

struct CategoryCard: View {
    let category: QuizCategory
    @State private var isPressed = false
    
    var categoryColor: Color {
        switch category.color {
        case "brown": return .brown
        case "purple": return .purple
        case "blue": return .blue
        case "red": return .red
        case "indigo": return .indigo
        case "green": return .green
        default: return .blue
        }
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: category.icon)
                .font(.system(size: 50))
                .foregroundStyle(.white)
            
            Text(category.rawValue)
                .font(.headline)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.8)
        }
        .frame(height: 160)
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        colors: [categoryColor, categoryColor.opacity(0.7)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
        .shadow(color: categoryColor.opacity(0.4), radius: isPressed ? 5 : 10, y: isPressed ? 2 : 5)
        .scaleEffect(isPressed ? 0.95 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isPressed)
        .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity, pressing: { pressing in
            isPressed = pressing
        }, perform: {})
    }
}

#Preview {
    NavigationStack {
        CategoriesView()
            .environment(QuizManager())
    }
}

