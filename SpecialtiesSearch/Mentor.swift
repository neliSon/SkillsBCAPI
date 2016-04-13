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
    
    static let allValues = [C, Python, Java, JavaScript, Ruby, Rails, PHP, React, Ember, Angular, NodeJS, Backbone, Phonegap, jQuery, iOS, ObjectiveC, Swift, Linux, CoffeeScript, Bash, SQL, Vim, QBasic, CSS, GameDevelopment, LEMP, HTML, Sinatra, Sass, Lisp, Beer, Algorithms, Mongo, Devops, Assembler, Pascal, Fortran, Cobol, Basic, VisualBasic, WordPress]

}

class Mentor {
    let id: String
    let firstName: String?
    let lastName: String?
    var specialties: [String]?
    var location: [Float]?
    
    // additional mentor information
    var email: String?
    var phoneNumber: String?
    var twitter: String?
    var skype: String?
    var slack: String?
    var githubUsername: String?
    var avatarURLString: String?
    var createdAt: String?
    var updatedAt: String?
    var isAdmin: Bool?
    var companyName: String?
    var companyURLString: String?
    var bio: String?
    var quirkyFact: String?
    var isOnDuty: Bool?
    
    init(dictionary: [String:NSObject]) {
        self.id = dictionary["_id"] as! String
        self.firstName = dictionary["first_name"] as? String
        self.lastName = dictionary["last_name"] as? String
        self.specialties = dictionary["specialties"] as? [String]
        self.location = dictionary["location"] as? [Float]

//        self.email = String(dictionary["email"])
//        self.phoneNumber = String(dictionary["phone"])
    }
    
}
