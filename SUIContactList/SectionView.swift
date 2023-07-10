//
//  SectionView.swift
//  SUIContactList
//
//  Created by Sergei Bakhmatov on 10.07.2023.
//

import SwiftUI

struct SectionView: View {
    
    let contacts : [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(contacts: Person.getContactList())
    }
}
