//
//  Person.swift
//  ContactList
//
//  Created by Snow Lukin on 07.03.2022.
//

import Foundation

enum Sex: CaseIterable {
    case male
    case female
}

struct Person: Identifiable {
    
    let id = UUID().uuidString
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    let sex: Sex
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersonsInfo() -> [Person] {
        
        var persons = [Person]()
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phones.shuffled()
        let sexes = Sex.allCases
        
        for index in 0..<names.count {
            persons.append(
                Person(name: names[index],
                       surname: surnames[index],
                       email: emails[index],
                       phoneNumber: phoneNumbers[index],
                       sex: sexes.randomElement()!)
            )
        }
        
        return persons
    }
    
}
