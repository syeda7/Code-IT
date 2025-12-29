//
//  HeaderView.swift
//  
//
//  Created by Azra on 12/29/25.
//


import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("IT Project Dashboard")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text("System overview & metrics")
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}
