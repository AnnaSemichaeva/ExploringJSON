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
        var content_rating = Content_rating()
        var gameContentTypesList = GameContentTypesList()
        //let promomedia = Promomedia()
        //let something = Facets()
        //let materials = Materials()
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonSerialization = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            
            //print(">>jsonSerialization: \(jsonSerialization)")
            
            if let json = jsonSerialization as? [String: Any] {
                
//                var i = 0
//                for key in json.keys {
//                    print("[\(i)] = \(key)")
//                    i += 1
//                }
                
                if let age_limit0 = json["age_limit"] as? Int {
                    age_limit1.age_limit = age_limit0
                    //print(">> age_limit0: \(age_limit0)")
                } else {
                    //print(">> GG no age limit")
                }
                
                if let bucket = json["bucket"] as? String {
                    age_limit1.bucket = bucket
                }
                
                if let container_type = json["container_type"] as? String {
                    age_limit1.container_type = container_type
                }
                
                if let content_origin = json["content_origin"] as? Int {
                    age_limit1.content_origin = content_origin
                }
                
                if let content_type = json["content_type"] as? String {
                    age_limit1.container_type = content_type
                }
                
                if let dob_required = json["dob_required"] as? Bool {
                    age_limit1.dob_required = dob_required
                }
                
                if let game_contentType = json["game_contentType"] as? String {
                    age_limit1.game_contentType = game_contentType
                }
                
                if let id = json["id"] as? String {
                    age_limit1.id = id
                }
                
                if let legal_text = json["legal_text"] as? String {
                    age_limit1.legal_text = legal_text
                }
                
                if let links = json["links"] as? [Int] {
                    age_limit1.links = links
                }
                
                if let long_desc = json["long_desc"] as? String {
                    age_limit1.long_desc = long_desc
                }
                
                if let name = json["name"] as? String {
                    age_limit1.name = name
                }
                
                if let pageTypeId = json["pageTypeId"] as? Int {
                    age_limit1.pageTypeId = pageTypeId
                }
                
                if let provider_name = json["provider_name"] as? String {
                    age_limit1.provider_name = provider_name
                }
                
                if let release_date = json["release_date"] as? String {
                    age_limit1.release_date = release_date
                }
                
                if let restricted = json["restricted"] as? Bool {
                    age_limit1.restricted = restricted
                }
                
                if let revision = json["revision"] as? Int {
                    age_limit1.revision = revision
                }
                
                if let short_name = json["short_name"] as? String {
                    age_limit1.short_name = short_name
                }
                
                if let size = json["size"] as? Int {
                    age_limit1.size = size
                }
                
                if let sku_links = json["sku_links"] as? [Int] {
                    age_limit1.sku_links = sku_links
                }
                
                if let sort = json["sort"] as? String {
                    age_limit1.sort = sort
                }
                
                if let start = json["start"] as? Int {
                    age_limit1.start = start
                }
                
                if let timestamp = json["timestamp"] as? Int {
                    age_limit1.timestamp = timestamp
                }
                
                if let title_name = json["title_name"] as? String {
                    age_limit1.title_name = title_name
                }
                
                if let top_category = json["top_category"] as? String {
                    age_limit1.top_category = top_category
                }
                
                if let total_results = json["total_results"] as? Int {
                    age_limit1.total_results = total_results
                }
                
                //let attributes = Attributes()
                
                guard let attributes1 = json["Sample"] as? [String: Any] else {
                    return
                }
                
                if let facets = attributes1["facets"] as? Facets {
                    attributes.facets = facets
                }
                
                if let next = attributes1["next"] as? [Int] {
                    attributes.next = next
                }
                
                //let content_rating = Content_rating()
                
                guard let content_rating1 = json["Sample"] as? [String: Any] else {
                    return
                }
                
                if let description = content_rating1["description"] as? String {
                    content_rating.description = description
                }
                
                if let rating_system = content_rating1["rating_system"] as? String {
                    content_rating.rating_system = rating_system
                }
                
                if let url = content_rating1["url"] as? String {
                    content_rating.url = url
                }
                
                guard let gameContentTypesList1 = json["Sample"] as? [String: Any] else {
                    return
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
                //age_limit1.attributes = attributes
                
                print(age_limit1)
            }
        } catch {
            print("Data err: \(error)")
        }
    }
}
