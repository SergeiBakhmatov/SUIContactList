//
//  ContactListView.swift
//  SUIContactList
//
//  Created by Sergei Bakhmatov on 10.07.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                NavigationLink(
                    person.fullName,
                    destination: PersonView(person: person)
                )
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
