//
//  SectionsContactList.swift
//  ContactList
//
//  Created by Snow Lukin on 07.03.2022.
//

import SwiftUI

struct SectionsContactList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                Section(header: setHeader(person.fullName)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .listStyle(.sidebar)
            .navigationBarTitle("Numbers")
        }
    }
}

struct SectionsContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionsContactList(contacts: Person.getPersonsInfo())
    }
}

extension SectionsContactList {
    private func setHeader(_ text: String) -> some View {
        Text(text)
            .font(.headline)
    }
}
