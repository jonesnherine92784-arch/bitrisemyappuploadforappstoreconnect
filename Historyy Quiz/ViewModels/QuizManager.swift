import Foundation
import SwiftUI

@Observable
class QuizManager {
    var currentQuestionIndex = 0
    var score = 0
    var selectedAnswer: Int?
    var showingExplanation = false
    var quizCompleted = false
    var startTime: Date?
    var questions: [Question] = []
    var results: [QuizResult] = []
    
    init() {
        loadResults()
    }
    
    func startQuiz(category: QuizCategory) {
        let filteredQuestions = QuizData.questions.filter { $0.category == category }.shuffled()
        let questionCount = min(25, filteredQuestions.count)
        questions = Array(filteredQuestions.prefix(questionCount))
        currentQuestionIndex = 0
        score = 0
        selectedAnswer = nil
        showingExplanation = false
        quizCompleted = false
        startTime = Date()
    }
    
    var currentQuestion: Question? {
        guard currentQuestionIndex < questions.count else { return nil }
        return questions[currentQuestionIndex]
    }
    
    func selectAnswer(_ index: Int) {
        guard selectedAnswer == nil else { return }
        selectedAnswer = index
        if index == currentQuestion?.correctAnswer {
            score += 1
        }
        showingExplanation = true
    }
    
    func nextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            selectedAnswer = nil
            showingExplanation = false
        } else {
            completeQuiz()
        }
    }
    
    func completeQuiz() {
        guard let startTime = startTime, let category = questions.first?.category else { return }
        let timeSpent = Date().timeIntervalSince(startTime)
        let result = QuizResult(
            category: category,
            score: score,
            totalQuestions: questions.count,
            timeSpent: timeSpent
        )
        results.append(result)
        saveResults()
        quizCompleted = true
    }
    
    private func saveResults() {
        if let encoded = try? JSONEncoder().encode(results) {
            UserDefaults.standard.set(encoded, forKey: "quizResults")
        }
    }
    
    private func loadResults() {
        if let data = UserDefaults.standard.data(forKey: "quizResults"),
           let decoded = try? JSONDecoder().decode([QuizResult].self, from: data) {
            results = decoded
        }
    }
    
    var totalQuizzesTaken: Int {
        results.count
    }
    
    var averageScore: Double {
        guard !results.isEmpty else { return 0 }
        let totalPercentage = results.reduce(0.0) { $0 + $1.percentage }
        return totalPercentage / Double(results.count)
    }
    
    func clearHistory() {
        results.removeAll()
        saveResults()
    }
}

