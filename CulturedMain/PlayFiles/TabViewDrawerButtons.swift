//
//  TabViewDrawerButtons.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 5/31/23.
//

import SwiftUI

struct TabViewDrawerButtonsView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                // Main content of the screen
                TabView(selection: $selectedTab) {
                    Text("First Tab Content")
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("Tab 1")
                        }
                        .tag(0)
                    
                    Text("Second Tab Content")
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("Tab 2")
                        }
                        .tag(1)
                    
                    Text("Third Tab Content")
                        .tabItem {
                            Image(systemName: "3.circle")
                            Text("Tab 3")
                        }
                        .tag(2)
                }
                
                // Bottom drawer view
                if selectedTab == 0 {
                    BottomDrawerView()
                } else if selectedTab == 1 {
                    BottomDrawerView()
                } else if selectedTab == 2 {
                    BottomDrawerView()
                }
            }
            
            // Add any additional views or content below the TabView
        }
        .edgesIgnoringSafeArea(.all)
    }
}

//struct BottomDrawerView: View {
//    let title: String
//
//    var body: some View {
//        VStack {
//            Text(title)
//                .font(.headline)
//                .padding()
//
//            Divider()
//
//            // Add your additional content for the bottom drawer view
//        }
//        .frame(maxWidth: .infinity)
//        .background(Color.white)
//        .cornerRadius(10)
//        .shadow(radius: 5)
//        .padding()
//        .transition(.move(edge: .bottom))
//    }
//}

struct TabViewDrawerButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDrawerButtonsView()
    }
}
