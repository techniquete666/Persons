//
//  Person.swift
//  Persons
//
//  Created by Vyacheslav on 19.10.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        let dataStore = DataStore()
        
        var names = dataStore.names.shuffled()
        var surnames = dataStore.surnames.shuffled()
        var emails = dataStore.emails.shuffled()
        var phoneNumbers = dataStore.phoneNumbers.shuffled()
        
        var personsList: [Person] = []
        
        for _ in 1...dataStore.names.count {
            personsList.append(Person(
                name: names.removeLast(),
                surname: surnames.removeLast(),
                email: emails.removeLast(),
                phoneNumber: phoneNumbers.removeLast()
            ))
        }
        return personsList
    }
}
