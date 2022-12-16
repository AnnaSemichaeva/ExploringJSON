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
        let age_limit = Age_limit()
        let attributes = Attributes()
        let promomedia = Promomedia()
        let materials = Materials()
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonSerialization = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            print()
            if let json = jsonSerialization as? [String: Any] {
                guard let age_limit = json["age_limit"] as? [String: Any] else {
                    return
                }
            }
            //discipline.maths = newTaskMaths
            //discipline.sport = newTaskSport
            //quiz.quiz = discipline
            //print(quiz)
        } catch {
            print("Data err")
        }
    }
}
