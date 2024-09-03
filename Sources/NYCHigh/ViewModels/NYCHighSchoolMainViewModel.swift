//
//  NYCHighSchoolMainViewModel.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import Foundation
import Combine

public class NYCHighSchoolMainViewModel: ObservableObject {
    @Published var schoolsList: [SchoolModel] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    

    private var cancellable: AnyCancellable?
    
    func fetchSchoolsList() {
        // Set loading state to true
        isLoading = true
        
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
            self.errorMessage = "Invalid URL"
            isLoading = false
            return
        }
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [SchoolModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    // Finished
                    self.isLoading = false
                case .failure(let error):
                    // Handle error
                    self.errorMessage = error.localizedDescription
                    self.isLoading = false
                }
            }, receiveValue: { List in
                // Update the published property
                self.schoolsList = List
            })
        
    }
}
