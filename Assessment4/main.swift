//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

let glasgowSchool = School(name: "Glasgow High School", students: 900, isPublic: true, yearBuilt: 1970)

glasgowSchool.SchoolDescription()


//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

let bchs = HighSchool(name: "Barren County High", students: 1300, isPublic: true, yearBuilt: 1970, rival: "Glasgow High School", mascot: "Trojan")

bchs.SchoolDescription()
bchs.PepRally()


//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

let magicSchool = MagicalHighSchool(name: "Hogwarts", students: 1500, isPublic: true, yearBuilt: 1860, rival: "Warthogs", mascot: "Wizard", castleSize: 2000.00, secretPassageAmount: 49)

magicSchool.SchoolDescription()
magicSchool.PepRally()
magicSchool.QuidditchMatch()


//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

var currentDate = Date()

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MMMM d, yyyy"

print("The current date is \(dateFormatter.string(from: currentDate))")

