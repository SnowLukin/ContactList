//
//  ContentView.swift
//  ContactList
//
//  Created by Snow Lukin on 07.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getPersonsInfo()
    
    var body: some View {
        TabView {
            ContactsList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            SectionsContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
