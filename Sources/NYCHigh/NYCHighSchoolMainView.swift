//
//  NYCHighSchoolMainView.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import SwiftUI

public struct NYCHighSchoolMainView: View {
    
    @StateObject var viewModel = NYCHighSchoolMainViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack {
    
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            } else {
                TextField("Enter Something", text: $viewModel.searchText)
                    .frame(height: 30)
                    .padding(.leading, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.blue, lineWidth: 1)
                    )
                    .padding(.horizontal, 20)
                List(viewModel.schoolsList, id: \.schoolName) { item in
                    NavigationLink(destination: NYCHighSchoolDetailsView()) {
                        Text(item.schoolName ?? "")
                    }
                }
            }
        }
        .task {
            viewModel.fetchSchoolsList()
        }
        .navigationTitle("NYC Schools List Page")
    }
}

#Preview {
    NYCHighSchoolMainView()
}
