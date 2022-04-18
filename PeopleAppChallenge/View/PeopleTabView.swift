//
//  ContentView.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import SwiftUI

struct PeopleTabView: View {
    
    @EnvironmentObject var displayModel: DisplayModel
    
    var body: some View {
        TabView {
            PeopleListView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            
            VStack {
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $displayModel.showName)
                
                Toggle("Show address:", isOn: $displayModel.showAddress)
                
                Toggle("Show company:", isOn: $displayModel.showCompany)
                
                Toggle("Show years of experience:", isOn: $displayModel.showYearsOfExperience)
                
                Spacer()
            }
            .tabItem { Image(systemName: "gearshape") }
            .padding()
        }
        .environmentObject(PeopleModel())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleTabView()
            .environmentObject(PeopleModel())
            .environmentObject(DisplayModel())
    }
}
