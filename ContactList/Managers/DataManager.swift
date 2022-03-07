//
//  DataManager.swift
//  ContactList
//
//  Created by Snow Lukin on 07.03.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron",
        "Tim", "Ted",
        "Steven", "Sharon",
        "Nicola", "Allan",
        "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow",
        "Isaacson", "Pennyworth",
        "Jankin", "Butler",
        "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "jjjj@mail.ru", "aaaa@mail.ru",
        "eeee@mail.ru", "hhhh@mail.ru",
        "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru",
        "ssss@mail.ru", "llll@mail.ru"
    ]
    
    let phones = [
        "+7 (574) 960 9035", "+7 (468) 145 8763",
        "+7 (453) 256 9478", "+7 (522) 847 3590",
        "+7 (123) 783 0372", "+7 (345) 836 4902",
        "+7 (764) 749 3037", "+7 (667) 938 4763",
        "+7 (274) 464 3939", "+7 (999) 847 4739"
    ]
    
    private init() {}
}
