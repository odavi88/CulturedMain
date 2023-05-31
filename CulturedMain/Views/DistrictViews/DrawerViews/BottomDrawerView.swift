//
//  BottomDrawerView.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/30/23.
//

import SwiftUI

// DrawerView Code Here
struct BottomDrawerView: View {
    @State private var offSet: CGFloat = 800
    @State private var isInitialOffsetSet: Bool = false
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                ZStack {
                    //Blur Effect Here
                    BlurView(style: .systemUltraThinMaterial)
                    VStack {
                        CapsuleView()
                        Spacer()
                    // TabButtonView Here
                    }
                }
            }
            .offset(y: offSet)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        let startLocation = value.startLocation
                        offSet = startLocation.y + value.translation.height
                    }
            )
            .onAppear {
                if !isInitialOffsetSet {
                    offSet = UIScreen.main.bounds.height - 250
                    isInitialOffsetSet = true
                }
            }
        }
    }
}

struct BottomDrawerView_Previews: PreviewProvider {
    static var previews: some View {
        BottomDrawerView()
    }
}

// BottomDrawerCapsuleView

struct CapsuleView: View {
    var body: some View {
        VStack {
            Capsule()
                .frame(width: 70, height: 7)
                .foregroundColor(.white)
                .padding(9)
        }
    }
}
