//
//  NYCMainViewNetwork.swift
//  NYCHighSchool
//
//  Created by Manickam T on 27/08/24.
//

import Foundation

// MARK: - ManiModel

struct SchoolModel: Codable {
    var dbn, schoolName, boro, overviewParagraph: String?
    var school10ThSeats, academicopportunities1, academicopportunities2, ellPrograms: String?
    var neighborhood, buildingCode, location, phoneNumber: String?
    var faxNumber, schoolEmail, website, subway: String?
    var bus, grades2018, finalgrades, totalStudents: String?
    var extracurricularActivities, schoolSports, attendanceRate, pctStuEnoughVariety: String?
    var pctStuSafe, schoolAccessibilityDescription, directions1, requirement11: String?
    var requirement21, requirement31, requirement41, requirement51: String?
    var offerRate1, program1, code1, interest1: String?
    var method1, seats9Ge1, grade9Gefilledflag1, grade9Geapplicants1: String?
    var seats9Swd1, grade9Swdfilledflag1, grade9Swdapplicants1, seats101: String?
    var admissionspriority11, admissionspriority21, admissionspriority31, grade9Geapplicantsperseat1: String?
    var grade9Swdapplicantsperseat1, primaryAddressLine1, city, zip: String?
    var stateCode, latitude, longitude, communityBoard: String?
    var councilDistrict, censusTract, bin, bbl: String?
    var nta, borough, name: String?
    var founded: Int?
    var members: [String]?
    

    private enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case boro
        case overviewParagraph = "overview_paragraph"
        case school10ThSeats = "school_10th_seats"
        case academicopportunities1, academicopportunities2
        case ellPrograms = "ell_programs"
        case neighborhood
        case buildingCode = "building_code"
        case location
        case phoneNumber = "phone_number"
        case faxNumber = "fax_number"
        case schoolEmail = "school_email"
        case website, subway, bus, grades2018, finalgrades
        case totalStudents = "total_students"
        case extracurricularActivities = "extracurricular_activities"
        case schoolSports = "school_sports"
        case attendanceRate = "attendance_rate"
        case pctStuEnoughVariety = "pct_stu_enough_variety"
        case pctStuSafe = "pct_stu_safe"
        case schoolAccessibilityDescription = "school_accessibility_description"
        case directions1
        case requirement11 = "requirement1_1"
        case requirement21 = "requirement2_1"
        case requirement31 = "requirement3_1"
        case requirement41 = "requirement4_1"
        case requirement51 = "requirement5_1"
        case offerRate1 = "offer_rate1"
        case program1, code1, interest1, method1
        case seats9Ge1 = "seats9ge1"
        case grade9Gefilledflag1 = "grade9gefilledflag1"
        case grade9Geapplicants1 = "grade9geapplicants1"
        case seats9Swd1 = "seats9swd1"
        case grade9Swdfilledflag1 = "grade9swdfilledflag1"
        case grade9Swdapplicants1 = "grade9swdapplicants1"
        case seats101, admissionspriority11, admissionspriority21, admissionspriority31
        case grade9Geapplicantsperseat1 = "grade9geapplicantsperseat1"
        case grade9Swdapplicantsperseat1 = "grade9swdapplicantsperseat1"
        case primaryAddressLine1 = "primary_address_line_1"
        case city, zip
        case stateCode = "state_code"
        case latitude, longitude
        case communityBoard = "community_board"
        case councilDistrict = "council_district"
        case censusTract = "census_tract"
        case bin, bbl, nta, borough, name, founded, members
    }
    
//    init() {
//        dbn = ""
//    }
    
//    required init(from decoder:Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        dbn = try values.decode(String?.self, forKey: .dbn)
//        boro = try values.decode(String?.self, forKey: .boro)
//        schoolName = try values.decode(String?.self, forKey: .schoolName)
//        overviewParagraph = try values.decode(String?.self, forKey: .overviewParagraph)
//        school10ThSeats = try values.decode(String?.self, forKey: .school10ThSeats)
//        academicopportunities1 = try values.decode(String?.self, forKey: .academicopportunities1)
//        academicopportunities2 = try values.decode(String?.self, forKey: .academicopportunities2)
//        ellPrograms = try values.decode(String?.self, forKey: .ellPrograms)
//        neighborhood = try values.decode(String?.self, forKey: .neighborhood)
//        buildingCode = try values.decode(String?.self, forKey: .buildingCode)
//        location = try values.decode(String?.self, forKey: .location)
//        phoneNumber = try values.decode(String?.self, forKey: .phoneNumber)
//        faxNumber = try values.decode(String?.self, forKey: .faxNumber)
//        schoolEmail = try values.decode(String?.self, forKey: .schoolEmail)
//        website = try values.decode(String?.self, forKey: .website)
//        subway = try values.decode(String?.self, forKey: .subway)
//        bus = try values.decode(String?.self, forKey: .bus)
//        grades2018 = try values.decode(String?.self, forKey: .grades2018)
//        finalgrades = try values.decode(String?.self, forKey: .finalgrades)
//        totalStudents = try values.decode(String?.self, forKey: .totalStudents)
//        extracurricularActivities = try values.decode(String?.self, forKey: .extracurricularActivities)
//        schoolSports = try values.decode(String?.self, forKey: .schoolSports)
//        attendanceRate = try values.decode(String?.self, forKey: .attendanceRate)
//        pctStuEnoughVariety = try values.decode(String?.self, forKey: .pctStuEnoughVariety)
//        pctStuSafe = try values.decode(String.self, forKey: .pctStuSafe)
//        schoolAccessibilityDescription = try values.decode(String?.self, forKey: .schoolAccessibilityDescription)
//        directions1 = try values.decode(String?.self, forKey: .directions1)
//        requirement11 = try values.decode(String?.self, forKey: .requirement11)
//        requirement21 = try values.decode(String?.self, forKey: .requirement21)
//        requirement31 = try values.decode(String?.self, forKey: .requirement31)
//        requirement41 = try values.decode(String?.self, forKey: .requirement41)
//        requirement51 = try values.decode(String?.self, forKey: .requirement51)
//        offerRate1 = try values.decode(String?.self, forKey: .offerRate1)
//        program1 = try values.decode(String?.self, forKey: .program1)
//        code1 = try values.decode(String?.self, forKey: .code1)
//        interest1 = try values.decode(String?.self, forKey: .interest1)
//        method1 = try values.decode(String?.self, forKey: .method1)
//        seats9Ge1 = try values.decode(String?.self, forKey: .seats9Ge1)
//        grade9Gefilledflag1 = try values.decode(String?.self, forKey: .grade9Gefilledflag1)
//        grade9Geapplicants1 = try values.decode(String?.self, forKey: .grade9Geapplicants1)
//        seats9Swd1 = try values.decode(String?.self, forKey: .seats9Swd1)
//        grade9Swdfilledflag1 = try values.decode(String?.self, forKey: .grade9Swdfilledflag1)
//        grade9Swdapplicants1 = try values.decode(String?.self, forKey: .grade9Swdapplicants1)
//        seats101 = try values.decode(String?.self, forKey: .seats101)
//        admissionspriority11 = try values.decode(String?.self, forKey: .admissionspriority11)
//        admissionspriority21 = try values.decode(String?.self, forKey: .admissionspriority21)
//        admissionspriority31 = try values.decode(String?.self, forKey: .admissionspriority31)
//        grade9Geapplicantsperseat1 = try values.decode(String?.self, forKey: .grade9Geapplicantsperseat1)
//        grade9Swdapplicantsperseat1 = try values.decode(String?.self, forKey: .grade9Swdapplicantsperseat1)
//        primaryAddressLine1 = try values.decode(String?.self, forKey: .primaryAddressLine1)
//        city = try values.decode(String?.self, forKey: .city)
//        zip = try values.decode(String?.self, forKey: .zip)
//        stateCode = try values.decode(String?.self, forKey: .stateCode)
//        latitude = try values.decode(String?.self, forKey: .latitude)
//        longitude = try values.decode(String?.self, forKey: .longitude)
//        communityBoard = try values.decode(String?.self, forKey: .communityBoard)
//        councilDistrict = try values.decode(String?.self, forKey: .councilDistrict)
//        censusTract = try values.decode(String?.self, forKey: .censusTract)
//        bin = try values.decode(String?.self, forKey: .bin)
//        bbl = try values.decode(String?.self, forKey: .bbl)
//        nta = try values.decode(String?.self, forKey: .nta)
//        borough = try values.decode(String?.self, forKey: .borough)
//        founded = try values.decode(Int?.self, forKey: .founded)
//        members = try values.decode([String]?.self, forKey: .members)
//        name = try values.decode(String?.self, forKey: .name)
//    }

}
