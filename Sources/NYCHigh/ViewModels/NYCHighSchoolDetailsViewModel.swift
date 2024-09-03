//
//  NYCHighSchoolDetailsViewMOdel.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import Foundation
import Combine


class NYCHighSchoolDetailsViewModel: ObservableObject {
    @Published var schoolsDetailsList: [DetailModel] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private var cancellable: AnyCancellable?
    
    func fetchParticularSchoolDetailList() {
        // Set loading state to true
        isLoading = true
        
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json") else {
            self.errorMessage = "Invalid URL"
            isLoading = false
            return
        }
        
        // Create and start the URLSession data task
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [DetailModel].self, decoder: JSONDecoder())
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
                self.schoolsDetailsList = List
            })
    }
}
