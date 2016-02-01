//
//  Person.swift
//  PeopleDatabase
//
//  Created by Jason Noble on 1/31/16.
//  Copyright © 2016 Jason Noble. All rights reserved.
//

import Foundation

class Person {
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    func enterInfo() {
        print("What is the first name? ", terminator:"")
        firstName = input()
        print("What is the last name? ", terminator:"")
        lastName = input()
        print("How old is \(firstName)? ", terminator:"")
        let userInput = Int(input())
        if let number = userInput {
            age = number
        }
    }
    
    func printInfo() {
        print("\(firstName) \(lastName) is \(age) years old")
    }
    
    func changeFirstName(newFirstName:String) {
        firstName = newFirstName
    }
}

extension Person: CustomStringConvertible {
    var description: String {
        return "\(firstName) \(lastName) \(age)"
    }
}