//
//  SegmentedButtonsView.swift
//  CulturedMain
//
//  Created by Omar Davidson II on 6/1/23.
//

import SwiftUI

// Model
enum ViewCategories: String, CaseIterable {
    case tasks
    case progress
}

// ViewModel
class ViewModel: ObservableObject {
    @Published var selectedViewCategory: ViewCategories = .tasks
}

// View
struct SegmentedButtonView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Picker("Category", selection: $viewModel.selectedViewCategory) {
                ForEach(ViewCategories.allCases, id: \.self) { category in
                    Text(category.rawValue.capitalized)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if viewModel.selectedViewCategory == .tasks {
                BooksView()
            } else if viewModel.selectedViewCategory == .progress {
                MoviesView()
            }
        }
    }
}

struct BooksView: View {
    var body: some View {
        Text("Books View")
            .font(.title)
            .padding()
    }
}

struct MoviesView: View {
    var body: some View {
        Text("Movies View")
            .font(.title)
            .padding()
    }
}



struct SegmentedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedButtonView()
    }
}
