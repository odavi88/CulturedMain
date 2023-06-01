//
//  NewTaskListView.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 6/1/23.
//

import SwiftUI

struct NewTaskListView: View {
    @EnvironmentObject private var vm: DistrictsViewModel
    var body: some View {
        List {
            HStack {
                // Photo here
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

struct NewTaskListView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskListView()
            .environmentObject(DistrictsViewModel())
    }
}
