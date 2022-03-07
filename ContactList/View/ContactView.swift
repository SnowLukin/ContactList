//
//  ContactView.swift
//  ContactList
//
//  Created by Snow Lukin on 07.03.2022.
//

import SwiftUI

struct ContactView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Image(person.sex == Sex.male ? "defaultUser" : "defaultUserFemale")
            VStack {
                Text(person.fullName)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(person.phoneNumber)
                    .font(.title3)
                Text(person.email)
                    .font(.title3)
            }
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(person: Person.getPersonsInfo().first!)
    }
}
