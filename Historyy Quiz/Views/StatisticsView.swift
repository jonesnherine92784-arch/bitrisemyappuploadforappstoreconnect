
import SwiftUI
import Charts

struct StatisticsView: View {
    @Environment(QuizManager.self) var quizManager
    @State private var showClearAlert = false
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 24) {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 16) {
                        OverviewCard(
                            icon: "trophy.fill",
                            value: "\(quizManager.totalQuizzesTaken)",
                            label: "Quizzes Taken",
                            color: .blue
                        )
                        
                        OverviewCard(
                            icon: "chart.line.uptrend.xyaxis",
                            value: String(format: "%.1f%%", quizManager.averageScore),
                            label: "Average Score",
                            color: .green
                        )
                    }
                    .padding(.horizontal)
                    
                    if !quizManager.results.isEmpty {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Recent Results")
                                .font(.title2.bold())
                                .padding(.horizontal)
                            
                            VStack(spacing: 12) {
                                ForEach(quizManager.results.reversed().prefix(10)) { result in
                                    ResultRow(result: result)
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        if quizManager.results.count >= 2 {
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Performance Trend")
                                    .font(.title2.bold())
                                    .padding(.horizontal)
                                
                                Chart {
                                    ForEach(Array(quizManager.results.enumerated()), id: \.offset) { index, result in
                                        LineMark(
                                            x: .value("Quiz", index + 1),
                                            y: .value("Score", result.percentage)
                                        )
                                        .foregroundStyle(.blue)
                                        .interpolationMethod(.catmullRom)
                                        
                                        AreaMark(
                                            x: .value("Quiz", index + 1),
                                            y: .value("Score", result.percentage)
                                        )
                                        .foregroundStyle(.blue.opacity(0.1))
                                        .interpolationMethod(.catmullRom)
                                    }
                                }
                                .frame(height: 200)
                                .chartYScale(domain: 0...100)
                                .chartYAxis {
                                    AxisMarks(position: .leading) { value in
                                        AxisGridLine()
                                        AxisValueLabel {
                                            if let intValue = value.as(Int.self) {
                                                Text("\(intValue)%")
                                            }
                                        }
                                    }
                                }
                                .padding()
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .shadow(color: .black.opacity(0.05), radius: 8, y: 4)
                                .padding(.horizontal)
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Category Performance")
                                .font(.title2.bold())
                                .padding(.horizontal)
                            
                            VStack(spacing: 12) {
                                ForEach(QuizCategory.allCases, id: \.self) { category in
                                    CategoryPerformanceRow(
                                        category: category,
                                        results: quizManager.results.filter { $0.category == category }
                                    )
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        Button(action: {
                            showClearAlert = true
                        }) {
                            Label("Clear History", systemImage: "trash")
                                .font(.headline)
                                .foregroundStyle(.red)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.red.opacity(0.1))
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    } else {
                        VStack(spacing: 16) {
                            Image(systemName: "chart.bar.doc.horizontal")
                                .font(.system(size: 60))
                                .foregroundStyle(.gray)
                            
                            Text("No Statistics Yet")
                                .font(.title2.bold())
                            
                            Text("Complete some quizzes to see your statistics here")
                                .font(.body)
                                .foregroundStyle(.secondary)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                        .padding(.top, 60)
                    }
                }
                .padding(.vertical)
            }
        }
        .navigationTitle("Statistics")
        .navigationBarTitleDisplayMode(.large)
        .alert("Clear History", isPresented: $showClearAlert) {
            Button("Cancel", role: .cancel) { }
            Button("Clear", role: .destructive) {
                quizManager.clearHistory()
            }
        } message: {
            Text("Are you sure you want to clear all quiz history? This action cannot be undone.")
        }
    }
}

struct OverviewCard: View {
    let icon: String
    let value: String
    let label: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(color)
            
            Text(value)
                .font(.system(size: 32, weight: .bold, design: .rounded))
            
            Text(label)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 4)
    }
}

struct ResultRow: View {
    let result: QuizResult
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: result.category.icon)
                .font(.title3)
                .foregroundStyle(.white)
                .frame(width: 50, height: 50)
                .background(categoryColor)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(result.category.rawValue)
                    .font(.headline)
                
                Text(result.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("\(result.score)/\(result.totalQuestions)")
                    .font(.title3.bold())
                
                Text(result.grade)
                    .font(.caption.bold())
                    .foregroundStyle(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                    .background(gradeColor)
                    .clipShape(Capsule())
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 4)
    }
    
    var categoryColor: Color {
        switch result.category.color {
        case "brown": return .brown
        case "purple": return .purple
        case "blue": return .blue
        case "red": return .red
        case "indigo": return .indigo
        case "green": return .green
        default: return .blue
        }
    }
    
    var gradeColor: Color {
        switch result.grade {
        case "A+", "A": return .green
        case "B": return .blue
        case "C": return .orange
        default: return .red
        }
    }
}

struct CategoryPerformanceRow: View {
    let category: QuizCategory
    let results: [QuizResult]
    
    var averageScore: Double {
        guard !results.isEmpty else { return 0 }
        let total = results.reduce(0.0) { $0 + $1.percentage }
        return total / Double(results.count)
    }
    
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
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: category.icon)
                    .foregroundStyle(categoryColor)
                Text(category.rawValue)
                    .font(.headline)
                Spacer()
                Text("\(results.count) quiz\(results.count != 1 ? "zes" : "")")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(.gray.opacity(0.2))
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(categoryColor)
                        .frame(width: geometry.size.width * (averageScore / 100))
                }
            }
            .frame(height: 8)
            
            if !results.isEmpty {
                Text(String(format: "%.1f%% average", averageScore))
                    .font(.caption.bold())
                    .foregroundStyle(categoryColor)
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 4)
        .opacity(results.isEmpty ? 0.5 : 1)
    }
}

#Preview {
    NavigationStack {
        StatisticsView()
            .environment(QuizManager())
    }
}

