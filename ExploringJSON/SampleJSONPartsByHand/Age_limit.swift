//
//  Age_limit.swift
//  ExploringJSON
//
//  Created by macuser on 12/15/22.
//

import Foundation

class Age_limit {
    var age_limit: Int?
    var attributes: Attributes? = nil
    var bucket: String? = ""
    var container_type: String? = ""
    var content_origin: Int?
    var content_rating: Content_rating?  = nil
    var content_type: String? = ""
    var dob_required: Bool?
    var gameContentTypesList: [GameContentTypesList]? = []
    var game_contentType: String? = ""
    var id: String? = ""
    var images: [Images]? = nil
    var legal_text: String? = ""
    var links: [Any]? = nil
    var long_desc: String? = ""
    var mediaList: MediaList? = nil
    var media_layouts: [Media_layouts]? = nil
    var metadata: [String : Cn_remotePlay]? = nil
    var name: String? = ""
    var pageTypeId: Int?
    var playable_platform: [String?] = []
    var promomedia: [Promomedia] = []
    var provider_name: String? = ""
    var release_date: String? = ""
    var restricted: Bool?
    var revision: Int?
    var short_name: String?
    var size: Int?
    var sku_links: [Any] = []
    var sort: String? = ""
    var star_rating: [Star_rating?] = []
    var start: Int?
    var timestamp: Int?
    var title_name: String? = ""
    var top_category: String? = ""
    var total_results: Int?
    
    
}

//MARK: - Content_rating
struct Content_rating: Codable {
    var description: String? = ""
    var rating_system: String? = ""
    var url: String? = ""
    
}


//MARK: - GameContentTypesList
struct GameContentTypesList: Codable {
    var name: String? = ""
    var key: String? = ""
    
}


//MARK: - Images
struct Images: Codable {
    var type: Int?
    var url: String? = ""
}

//MARK: - MediaList
struct MediaList: Codable {
    var previews: [Previews]? = nil
}

//MARK: - Previews
struct Previews: Codable {
    var type: String? = ""
    var typeId: Int?
    var source: String? = ""
    var url: String? = ""
    var order: Int?
    var streamUrl: String? = ""
    var shots: [String?] = []
    
}

//MARK: - Media_layouts
struct Media_layouts: Codable {
    var type: String? = ""
    var height: Int?
    var width: Int?
}

//MARK: - Cn_remotePlay
struct Cn_remotePlay: Codable {
    var name: String? = ""
    var values: [String?] = []
}

//MARK: - Star_rating
struct Star_rating: Codable {
    var total: String? = ""
    var score: String = ""
    var count: [Count?] = []
}

//MARK: - Count
struct Count: Codable {
    var star: Int?
    var count: Int?
}
