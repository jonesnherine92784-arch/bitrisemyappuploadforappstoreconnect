import SwiftUI

struct ContentView: View {
    @State private var quizManager = QuizManager()
    
    var body: some View {
        WelcomeView()
            .environment(quizManager)
    }
}

#Preview {
    ContentView()
}
