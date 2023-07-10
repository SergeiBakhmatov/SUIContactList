//
//  ContentView.swift
//  SUIContactList
//
//  Created by Sergei Bakhmatov on 10.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
