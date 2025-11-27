
import SwiftUI

struct WelcomeView: View {
    @State private var animateGradient = false
    @State private var showCategories = false
    @State private var showStatistics = false
    @State private var showSettings = false
    @Environment(QuizManager.self) var quizManager
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.blue, .purple, .pink],
                    startPoint: animateGradient ? .topLeading : .bottomLeading,
                    endPoint: animateGradient ? .bottomTrailing : .topTrailing
                )
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                        animateGradient = true
                    }
                }
                
                VStack(spacing: 30) {
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Image(systemName: "book.closed.fill")
                            .font(.system(size: 100))
                            .foregroundStyle(.white)
                            .shadow(color: .black.opacity(0.2), radius: 10)
                        
                        Text("History Quiz")
                            .font(.system(size: 48, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                        
                        Text("Test your knowledge of the past")
                            .font(.title3)
                            .foregroundStyle(.white.opacity(0.9))
                    }
                    .padding(.bottom, 40)
                    
                    Spacer()
                    
                    VStack(spacing: 16) {
                        Button(action: {
                            showCategories = true
                        }) {
                            HStack {
                                Image(systemName: "play.fill")
                                    .font(.title2)
                                Text("Start Quiz")
                                    .font(.title2.bold())
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.white)
                            .foregroundStyle(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .shadow(color: .black.opacity(0.2), radius: 10, y: 5)
                        }
                        
                        HStack(spacing: 16) {
                            Button(action: {
                                showStatistics = true
                            }) {
                                VStack(spacing: 8) {
                                    Image(systemName: "chart.bar.fill")
                                        .font(.title)
                                    Text("Statistics")
                                        .font(.headline)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.white.opacity(0.2))
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                            
                            Button(action: {
                                showSettings = true
                            }) {
                                VStack(spacing: 8) {
                                    Image(systemName: "gearshape.fill")
                                        .font(.title)
                                    Text("Settings")
                                        .font(.headline)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.white.opacity(0.2))
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 50)
                }
            }
            .navigationDestination(isPresented: $showCategories) {
                CategoriesView()
            }
            .navigationDestination(isPresented: $showStatistics) {
                StatisticsView()
            }
            .navigationDestination(isPresented: $showSettings) {
                SettingsView()
            }
        }
    }
}

#Preview {
    WelcomeView()
        .environment(QuizManager())
}

