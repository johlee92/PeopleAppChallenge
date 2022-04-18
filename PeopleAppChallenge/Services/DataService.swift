//
//  DataService.swift
//  PeopleAppChallenge
//
//  Created by Johnathan Lee on 4/17/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [People] {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [People]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let peopleData = try decoder.decode([People].self, from: data)
                
                for p in peopleData {
                    p.id = UUID()
                    print(p.name)
                }
                return peopleData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [People]()
    }
}
