//
//  MyOverlays.swift
//  GradientBorderDemo
//
//  Created by Matt C on 5/13/22.
//

import SwiftUI

var myGradient = Gradient(
    colors: [
        Color(.systemTeal),
        Color(.systemPurple)
    ]
)

struct CardGradient: View{
    var body: some View {
        Rectangle()
            .stroke(
                LinearGradient(
                    gradient: myGradient,
                    startPoint: .leading,
                    endPoint: .trailing
                ),
                lineWidth: 5
            )
    }
}

struct ButtonGradient: View{
    var body: some View {
        Capsule()
            .stroke(
                LinearGradient(
                    gradient: myGradient,
                    startPoint: .leading,
                    endPoint: .trailing
                ),
                lineWidth: 5
            )
    }
}
