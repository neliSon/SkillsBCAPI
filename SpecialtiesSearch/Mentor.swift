//
//  Mentor.swift
//  SpecialtiesSearch
//
//  Created by Nelson Chow on 2016-04-13.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

enum Specialties: String {
    case C = "C/C++/C#"
    case Python = "Python"
    case Java = "Java"
    case JavaScript = "JavaScript"
    case Ruby = "Ruby"
    case Rails = "Rails"
    case PHP = "PHP"
    case React = "React"
    case Ember = "Ember"
    case Angular = "Angular"
    case NodeJS = "NodeJS"
    case Backbone = "Backbone"
    case Phonegap = "Phonegap"
    case jQuery = "jQuery"
    case iOS = "iOS"
    case ObjectiveC = "Objective-C"
    case Swift = "Swift"
    case Linux = "Linux"
    case CoffeeScript = "CoffeeScript"
    case Bash = "Bash"
    case SQL = "SQL"
    case Vim = "Vim"
    case QBasic = "QBasic"
    case CSS = "CSS"
    case GameDevelopment = "Game Development"
    case LEMP = "LEMP"
    case HTML = "HTML"
    case Sinatra = "Sinatra"
    case Sass = "Sass"
    case Lisp = "Lisp"
    case Beer = "Beer"
    case Algorithms = "Algorithms"
    case Mongo = "Mongo"
    case Devops = "Devops"
    case Assembler = "Assembler"
    case Pascal = "Pascal"
    case Fortran = "Fortran"
    case Cobol = "Cobol"
    case Basic = "Basic"
    case VisualBasic = "VisualBasic"
    case WordPress = "WordPress"
}

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
