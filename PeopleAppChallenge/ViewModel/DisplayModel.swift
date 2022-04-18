//
//  DisplayModel.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import Foundation

class DisplayModel: ObservableObject {
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYearsOfExperience = true
    var name = "DisplayModel"
}
