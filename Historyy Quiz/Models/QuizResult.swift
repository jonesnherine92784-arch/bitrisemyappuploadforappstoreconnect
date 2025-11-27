import Foundation

struct QuizResult: Identifiable, Codable {
    let id: UUID
    let category: QuizCategory
    let score: Int
    let totalQuestions: Int
    let date: Date
    let timeSpent: TimeInterval
    
    var percentage: Double {
        Double(score) / Double(totalQuestions) * 100
    }
    
    var grade: String {
        switch percentage {
        case 90...100: return "A+"
        case 80..<90: return "A"
        case 70..<80: return "B"
        case 60..<70: return "C"
        case 50..<60: return "D"
        default: return "F"
        }
    }
    
    init(id: UUID = UUID(), category: QuizCategory, score: Int, totalQuestions: Int, date: Date = Date(), timeSpent: TimeInterval) {
        self.id = id
        self.category = category
        self.score = score
        self.totalQuestions = totalQuestions
        self.date = date
        self.timeSpent = timeSpent
    }
}

