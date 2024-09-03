//
//  NYCHighSchoolDetailsView.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import SwiftUI

struct NYCHighSchoolDetailsView: View {
    @StateObject var viewModel = NYCHighSchoolDetailsViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
            } else {
                List(viewModel.schoolsDetailsList, id: \.schoolName) { school in
                    VStack(alignment: .leading) {
                        Text(school.schoolName ?? "")
                            .font(.headline)
                        Text(school.satMathAvgScore ?? "")
                            .font(.headline)
                        Text(school.satWritingAvgScore ?? "")
                            .font(.subheadline)
                    }
                }
            }
        }
        .task {
            viewModel.fetchParticularSchoolDetailList()
        }
        .navigationTitle("School Detail Page")
    }
}
