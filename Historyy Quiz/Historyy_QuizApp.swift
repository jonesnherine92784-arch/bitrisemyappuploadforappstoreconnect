import SwiftUI

@main
struct Historyy_QuizApp: App {
    @State private var quizManager = QuizManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(quizManager)
        }
    }
}
