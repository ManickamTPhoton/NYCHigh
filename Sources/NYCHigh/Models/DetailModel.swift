//
//  DetailModel.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import Foundation

// MARK: - DetailModel
struct DetailModel: Codable {
    var dbn, schoolName, numOfSatTestTakers, satCriticalReadingAvgScore: String?
    var satMathAvgScore, satWritingAvgScore, name: String?
    var founded: Int?
    var members: [String]?

    enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case numOfSatTestTakers = "num_of_sat_test_takers"
        case satCriticalReadingAvgScore = "sat_critical_reading_avg_score"
        case satMathAvgScore = "sat_math_avg_score"
        case satWritingAvgScore = "sat_writing_avg_score"
        case name, founded, members
    }
}
