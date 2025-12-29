//
//  ProjectCardView.swift
//  
//
//  Created by Azra on 12/29/25.
//


import SwiftUI

struct ProjectCardView: View {
    let title: String
    let icon: String
    let description: String

    @State private var isPressed = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.white)

            Text(title)
                .font(.headline)
                .foregroundColor(.white)

            Text(description)
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.15))
        )
        .scaleEffect(isPressed ? 1.05 : 1)
        .shadow(color: .black.opacity(0.3), radius: 10)
        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: isPressed)
        .onTapGesture {
            isPressed.toggle()
        }
    }
}
