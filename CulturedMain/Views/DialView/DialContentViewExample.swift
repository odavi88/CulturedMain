//
//  DialContentViewExample.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/26/23.
//

import SwiftUI

struct ContentView: View {
    // Properties storing the completion progress of the three rings
    @State private var ringProgress: CGFloat = 0.0
    let circleLineWidth: CGFloat = 30

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            /// The three circles are stacked in a ZStack. You can plug in whatever colors you need. Make sure to plug in the darker shade as the first color and the lighter shade as the second color. The radius of the circle will dictate how large it is and the line width will configure how thick the stroke of the circle is
            ActivityRingView(progress: $ringProgress, gradientColors: [.darkRed, .lightRed], outlineColor: .outlineRed, radius: 150, lineWidth: circleLineWidth)
                .fixedSize()

            
            // Button that increments the rings progress value (just a demo to show the animation)
            VStack {
                Spacer()
                Button("Increment Ring") {
                    ringProgress += 0.01
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
