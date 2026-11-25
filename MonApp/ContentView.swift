import SwiftUI

struct ContentView: View {
    @State private var compteur = 0

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "iphone")
                .font(.system(size: 64))
                .foregroundStyle(.tint)

            Text("Mon App")
                .font(.largeTitle.bold())

            Text("Compilée sur un Mac de GitHub Actions,\ninstallée depuis Windows.")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)

            Button {
                compteur += 1
            } label: {
                Text("Touché \(compteur) fois")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
        .padding(32)
    }
}

#Preview {
    ContentView()
}
