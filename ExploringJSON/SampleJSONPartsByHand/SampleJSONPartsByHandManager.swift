//
//  SampleJSONPartsByHandManager.swift
//  ExploringJSON
//
//  Created by macuser on 12/15/22.
//

import Foundation

class SampleJSONPartsByHandManager {
    
    static let shared = SampleJSONPartsByHandManager()
    private init(){}
    
    func samplejsonPartsByHand() {
        guard let path = Bundle.main.path(forResource: "Sample", ofType: "json") else {
            return }
        let age_limit1 = Age_limit()
        let attributes = Attributes()
        let promomedia = Promomedia()
        //let something = Facets()
        //let materials = Materials()
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonSerialization = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            print()
            if let json = jsonSerialization as? [String: Any] {
                
                if let age_limit0 = json["Sample"] as? Int {
                    age_limit1.age_limit = age_limit0
                }
                
                guard let attributes1 = json["Sample"] as? [String: Any] else {
                    return
                }
                
                if let facets = attributes1["facets"] as? Facets {
                    attributes.facets = facets
                }
                
                if let next = attributes1["next"] as? Array<Any> {
                    attributes.next = next
                }
                
//                guard let age_limit = json["Sample"] as? [String: Any] else {
//                    return
//                }
//
//                if let age_limit0 = age_limit["age_limit"] as? Int {
//                    age_limit1.age_limit = age_limit0
//                }
//
//                guard let attributes1 = json["Sample"] as? [String: Any] else {
//                    return
//                }
                
                //newTaskSport.q1 = task
                //something.
                
                
//                guard let facets = attributes1["facets"] as? [String: Any] else {
//                   return
//                }
                
//                if let age_limit0 = age_limit["age_limit"] as? Int {
//                    age_limit1.age_limit = age_limit0
//                }
                
//                if let options = qOne["options"] as? [String] {
//                    task.options = options
//                }
                
                //discipline.maths = newTaskMaths
                //discipline.sport = newTaskSport
                //attributes.facets = something
                age_limit1.attributes = attributes
                print(age_limit1)
            }
        } catch {
            print("Data err")
        }
    }
}
