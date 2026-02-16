import SwiftUI

/// A pill-shaped toast overlay that appears at the bottom center of the terminal
/// and auto-dismisses. Used for brief, non-interactive notifications.
struct ToastView: View {
    let message: String
    let icon: String

    var body: some View {
        VStack {
            Spacer()

            HStack(spacing: 6) {
                Image(systemName: icon)
                    .font(.system(size: 12, weight: .medium))

                Text(message)
                    .font(.system(size: 12, weight: .medium))
                    .lineLimit(1)
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .background(
                Capsule()
                    .fill(.ultraThinMaterial)
            )
            .shadow(color: .black.opacity(0.2), radius: 4, y: 2)
            .padding(.bottom, 16)
        }
        .allowsHitTesting(false)
        .transition(.opacity.combined(with: .move(edge: .bottom)))
    }
}
