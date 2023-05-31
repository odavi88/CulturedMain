//
//  BottomDrawerView.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/30/23.
//

import SwiftUI

// DrawerView Code Here
struct BottomDrawerView: View {
    @State private var offSet: CGFloat = 200
    @State private var isInitialOffsetSet: Bool = false
   var body: some View {
        ZStack {
            GeometryReader { proxy in
                ZStack {
                    //Blur Effect Here
                    BlurView(style: .systemThinMaterialDark)
                    VStack {
                        Text("Hola Amigos")
                        Spacer()
                    }
                }
            }
            //                .background(Color.red)
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
