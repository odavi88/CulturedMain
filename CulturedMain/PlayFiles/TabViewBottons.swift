//
//  TabViewBottons.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/31/23.
//

import SwiftUI

struct TabViewButtons: View {
    @State private var selectedTab = 0
    var body: some View {
        
        TabView(selection: $selectedTab) {
            VStack(spacing: 10) {
                
                
                
//                Button(action: {
//                    selectedTab = 0
//                }) {
//                    Image(systemName: "1.circle")
//                }
//                .tag(0)
                
                Button(action: {
                    selectedTab = 1
                }) {
                    Image(systemName: "2.circle")
                }
                //                        .tag(1)
                
                Button(action: {
                    selectedTab = 2
                }) {
                    Image(systemName: "3.circle")
                }
                //                        .tag(2)
            }
            .font(.title)
        }
    }
}

struct TabViewButtons_Previews: PreviewProvider {
    static var previews: some View {
        TabViewButtons()
    }
}
