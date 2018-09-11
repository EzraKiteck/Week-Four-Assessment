//
//  School.swift
//  Assessment4
//
//  Created by Ezra Kiteck on 9/11/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

class School {
    let name: String
    var students: Int
    let isPublic: Bool
    let yearBuilt: Int
    
    init(name: String, students: Int, isPublic: Bool, yearBuilt: Int) {
        self.name = name
        self.students = students
        self.isPublic = isPublic
        self.yearBuilt = yearBuilt
    }
    
    func SchoolDescription() {
        print("\(name) was founded in \(yearBuilt) and has \(students) students currently in attendance.")
    }
}

class HighSchool: School {
    let rival: String
    let mascot: String
    
    init(name: String, students: Int, isPublic: Bool, yearBuilt: Int, rival: String, mascot: String) {
        self.rival = rival
        self.mascot = mascot
        super.init(name: name, students: students, isPublic: isPublic, yearBuilt: yearBuilt)
    }
    
    func PepRally() {
        print("\(name) is the best! \(rival) is awful!")
    }
    override func SchoolDescription() {
        print("\(name) is the best in the state since \(yearBuilt)! Go \(mascot)s!!!")
    }
}

class MagicalHighSchool: HighSchool {
    let castleSize: Double
    let secretPassageAmount: Int
    
    init(name: String, students: Int, isPublic: Bool, yearBuilt: Int, rival: String, mascot: String, castleSize: Double, secretPassageAmount: Int) {
        self.castleSize = castleSize
        self.secretPassageAmount = secretPassageAmount
        super.init(name: name, students: students, isPublic: isPublic, yearBuilt: yearBuilt, rival: rival, mascot: mascot)
    }
    
    override func PepRally() {
        print("\(name) is the most magical school on earth! It's castle is \(castleSize ) square feet, and it has \(secretPassageAmount) secret passageways! Hurray!")
    }
    
    func QuidditchMatch() {
        print("Time for the big quidditch game!")
    }
}
