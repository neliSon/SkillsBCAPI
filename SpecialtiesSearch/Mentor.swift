//
//  Mentor.swift
//  SpecialtiesSearch
//
//  Created by Nelson Chow on 2016-04-13.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

struct Mentor {
    let id: String
    let firstName: String
    let lastName: String
    let specialties = [String]()
    let location = [Float]()
    
    // additional mentor information
    let email: String?
    let phoneNumber: String?
    let twitter: String?
    let skype: String?
    let slack: String?
    let githubUsername: String?
    let avatarURLString: String?
    let createdAt: String?
    let updatedAt: String?
    let isAdmin: Bool?
    let companyName: String?
    let companyURLString: String?
    let bio: String?
    let quirkyFact: String?
    let isOnDuty: Bool?
    
//    init(id: String, firstName: String , lastName: String) {
//        self.id = id
//        self.firstName = firstName
//        self.lastName = lastName
//        
//    }
    
}
