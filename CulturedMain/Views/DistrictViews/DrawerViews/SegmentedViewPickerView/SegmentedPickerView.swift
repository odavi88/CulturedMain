//
//  SegmentedPickerView.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 6/1/23.
//

import SwiftUI

struct SegmentedPickerView: View {
    @StateObject private var vm = DistrictsViewModel()
    var body: some View {
        VStack {
            Picker("Category", selection: $vm.selectedViewCategory) {
                ForEach(ViewCategories.allCases, id: \.self) { category in
                    Text(category.rawValue.capitalized)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if vm.selectedViewCategory == .tasks {
               BooksView()
            } else if vm.selectedViewCategory == .progress {
                DetroitDialView(progressPercent: 0.0)
                    .padding(.top, 20)
            }
        }
    }
}

struct SegmentedPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPickerView()
    }
}
