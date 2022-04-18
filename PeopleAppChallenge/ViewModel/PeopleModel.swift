//
//  PeopleModel.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import Foundation

class PeopleModel: ObservableObject {
    @Published var peoplelist = [People]()
    
    init() {
        self.peoplelist = DataService.getLocalData()
    }
    
}
