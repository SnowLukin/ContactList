//
//  ContactsList.swift
//  ContactList
//
//  Created by Snow Lukin on 07.03.2022.
//

import SwiftUI

struct ContactsList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                HStack {
                    Image(person.sex == Sex.male ? "defaultUser" : "defaultUserFemale")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(person.fullName) {
                        ContactView(person: person)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(contacts: Person.getPersonsInfo())
    }
}
