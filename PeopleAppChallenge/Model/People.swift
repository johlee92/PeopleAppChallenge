//
//  People.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import Foundation

class People: Identifiable, Decodable {
//    var id = UUID()
    var id:UUID?
    var name:String
    var address:String
    var company:String
    var yearsOfExperience:Int
}
