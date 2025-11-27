
import SwiftUI
import StoreKit

struct SettingsView: View {
    @AppStorage("soundEnabled") private var soundEnabled = true
    @AppStorage("hapticEnabled") private var hapticEnabled = true
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @State private var showAbout = false
    @State private var showShareSheet = false
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 24) {
                    VStack(spacing: 16) {
                        Image(systemName: "book.closed.fill")
                            .font(.system(size: 80))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.blue, .purple],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                        
                        Text("History Quiz")
                            .font(.title.bold())
                        
                        Text("Version 1.0.0")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 20)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Preferences")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                            .padding(.horizontal)
                        
                        VStack(spacing: 0) {
                            SettingsRow(
                                icon: "speaker.wave.2.fill",
                                title: "Sound Effects",
                                color: .blue
                            ) {
                                Toggle("", isOn: $soundEnabled)
                            }
                            
                            Divider()
                                .padding(.leading, 60)
                            
                            SettingsRow(
                                icon: "hand.tap.fill",
                                title: "Haptic Feedback",
                                color: .orange
                            ) {
                                Toggle("", isOn: $hapticEnabled)
                            }
                        }
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("About")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                            .padding(.horizontal)
                        
                        VStack(spacing: 0) {
                            Button(action: { showAbout = true }) {
                                SettingsRow(
                                    icon: "info.circle.fill",
                                    title: "About the App",
                                    color: .purple,
                                    showChevron: true
                                )
                            }
                            
                            Divider()
                                .padding(.leading, 60)
                            
                            Button(action: { shareApp() }) {
                                SettingsRow(
                                    icon: "square.and.arrow.up.fill",
                                    title: "Share App",
                                    color: .green,
                                    showChevron: true
                                )
                            }
                            
                            Divider()
                                .padding(.leading, 60)
                            
                            Button(action: { rateApp() }) {
                                SettingsRow(
                                    icon: "star.fill",
                                    title: "Rate on App Store",
                                    color: .yellow,
                                    showChevron: true
                                )
                            }
                        }
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal)
                    }
                    
                    VStack(spacing: 8) {
                        Text("Made with ❤️ for History Enthusiasts")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        Text("© 2025 History Quiz. All rights reserved.")
                            .font(.caption2)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.top, 20)
                }
                .padding(.vertical)
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .sheet(isPresented: $showAbout) {
            AboutView()
        }
        .sheet(isPresented: $showShareSheet) {
            ShareSheet(items: [shareText])
        }
    }
    
    private var shareText: String {
        """
        Check out History Quiz! 📚
        
        Test your knowledge of historical events with this beautiful quiz app.
        
        Features:
        • 6 historical categories
        • Multiple difficulty levels
        • Track your progress
        • Beautiful design
        
        Download now and learn history in a fun way!
        """
    }
    
    private func shareApp() {
        showShareSheet = true
    }
    
    private func rateApp() {
        if #available(iOS 18.0, *) {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                AppStore.requestReview(in: windowScene)
            }
        } else {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                SKStoreReviewController.requestReview(in: windowScene)
            }
        }
    }
}

struct SettingsRow<Content: View>: View {
    let icon: String
    let title: String
    let color: Color
    var showChevron: Bool = false
    var content: (() -> Content)?
    
    init(icon: String, title: String, color: Color, showChevron: Bool = false, @ViewBuilder content: @escaping () -> Content) {
        self.icon = icon
        self.title = title
        self.color = color
        self.showChevron = showChevron
        self.content = content
    }
    
    init(icon: String, title: String, color: Color, showChevron: Bool = false) where Content == EmptyView {
        self.icon = icon
        self.title = title
        self.color = color
        self.showChevron = showChevron
        self.content = nil
    }
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(.white)
                .frame(width: 32, height: 32)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(title)
                .font(.body)
            
            Spacer()
            
            if let content = content {
                content()
            } else if showChevron {
                Image(systemName: "chevron.right")
                    .font(.caption.bold())
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .contentShape(Rectangle())
    }
}

struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    VStack(spacing: 16) {
                        Image(systemName: "book.closed.fill")
                            .font(.system(size: 60))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.blue, .purple],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                        
                        Text("History Quiz")
                            .font(.title.bold())
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("About")
                            .font(.title2.bold())
                        
                        Text("History Quiz is an interactive educational app designed to help you test and improve your knowledge of historical events, figures, and periods.")
                            .font(.body)
                            .foregroundStyle(.secondary)
                        
                        Text("Features:")
                            .font(.headline)
                            .padding(.top, 8)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            FeatureItem(icon: "list.bullet", text: "6 different historical categories")
                            FeatureItem(icon: "star.fill", text: "Multiple difficulty levels")
                            FeatureItem(icon: "chart.bar.fill", text: "Track your progress and statistics")
                            FeatureItem(icon: "lightbulb.fill", text: "Learn from detailed explanations")
                            FeatureItem(icon: "paintbrush.fill", text: "Beautiful, intuitive interface")
                        }
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Developer")
                            .font(.headline)
                        Text("Developed with Swift and SwiftUI")
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding()
            }
            .navigationTitle("About")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct FeatureItem: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(.blue)
                .frame(width: 24)
            
            Text(text)
                .font(.body)
        }
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    let items: [Any]
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(
            activityItems: items,
            applicationActivities: nil
        )
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}

