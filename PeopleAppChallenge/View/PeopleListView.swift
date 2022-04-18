//
//  PeopleListView.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import SwiftUI

struct PeopleListView: View {
    
    @EnvironmentObject var model:PeopleModel
    
    @EnvironmentObject var displayModel:DisplayModel
    
    var body: some View {
        List(model.peoplelist) {
            p in
            VStack (alignment: .leading) {
                if displayModel.showName {
                    Text("Name: \(p.name)")
                }
                if displayModel.showAddress {
                    Text("Address: \(p.address)")
                }
                if displayModel.showCompany {
                    Text("Company: \(p.company)")
                }
                if displayModel.showYearsOfExperience {
                    Text("Year of Experience: \(p.yearsOfExperience)")
                }
                
            }
        }
    }
}

struct PeopleListView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
            .environmentObject(PeopleModel())
            .environmentObject(DisplayModel())
    }
}
