import Foundation

struct Question: Identifiable, Codable {
    let id: UUID
    let category: QuizCategory
    let question: String
    let options: [String]
    let correctAnswer: Int
    let difficulty: Difficulty
    let explanation: String
    
    init(id: UUID = UUID(), category: QuizCategory, question: String, options: [String], correctAnswer: Int, difficulty: Difficulty, explanation: String) {
        self.id = id
        self.category = category
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
        self.difficulty = difficulty
        self.explanation = explanation
    }
}

enum Difficulty: String, Codable, CaseIterable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

enum QuizCategory: String, Codable, CaseIterable {
    case ancientHistory = "Ancient History"
    case medievalHistory = "Medieval History"
    case modernHistory = "Modern History"
    case worldWars = "World Wars"
    case americanHistory = "American History"
    case europeanHistory = "European History"
    
    var icon: String {
        switch self {
        case .ancientHistory: return "building.columns"
        case .medievalHistory: return "crown"
        case .modernHistory: return "newspaper"
        case .worldWars: return "shield"
        case .americanHistory: return "flag"
        case .europeanHistory: return "globe.europe.africa"
        }
    }
    
    var color: String {
        switch self {
        case .ancientHistory: return "brown"
        case .medievalHistory: return "purple"
        case .modernHistory: return "blue"
        case .worldWars: return "red"
        case .americanHistory: return "indigo"
        case .europeanHistory: return "green"
        }
    }
}

