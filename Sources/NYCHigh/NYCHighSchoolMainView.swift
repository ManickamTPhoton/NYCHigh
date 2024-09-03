//
//  NYCHighSchoolMainView.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import SwiftUI
import NYCHigh

struct NYCHighSchoolMainView: View {
    @StateObject var viewModel = NYCHighSchoolMainViewModel()
    
    var body: some View {
        SwiftUIView()
//        VStack {
//    
//            if viewModel.isLoading {
//                ProgressView("Loading...")
//            } else if let errorMessage = viewModel.errorMessage {
//                Text("Error: \(errorMessage)")
//                    .foregroundColor(.red)
//            } else {
//                NavigationStack {
//                    List(viewModel.schoolsList, id: \.schoolName) { item in
//                        NavigationLink(destination: NYCHighSchoolDetailsView()) {
//                            Text(item.schoolName ?? "")
//                        }
//                    }
//                }
//            }
//        }
//        .task {
//            viewModel.fetchSchoolsList()
//        }
//        .navigationTitle("NYC Schools List Page")
    }
}

#Preview {
    NYCHighSchoolMainView()
}
