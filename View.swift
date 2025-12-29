//
//  View.swift
//  
//import SwiftUI

struct DashboardView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                HeaderView()

                LazyVGrid(
                    columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ],
                    spacing: 20
                ) {
                    ProjectCardView(
                        title: "Cloud Services",
                        icon: "cloud.fill",
                        description: "AWS / Azure"
                    )

                    ProjectCardView(
                        title: "DevOps",
                        icon: "gearshape.2.fill",
                        description: "CI/CD Pipelines"
                    )

                    ProjectCardView(
                        title: "Security",
                        icon: "lock.shield.fill",
                        description: "Zero Trust"
                    )

                    ProjectCardView(
                        title: "Analytics",
                        icon: "chart.bar.fill",
                        description: "Real-time Data"
                    )
                }
                .padding(.horizontal)
            }
        }
    }
}

//  Created by Azra on 12/29/25.
//

