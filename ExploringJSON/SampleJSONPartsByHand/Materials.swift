//
//  Materials.swift
//  ExploringJSON
//
//  Created by macuser on 12/15/22.
//

import Foundation

class Materials {
    var anno: String? = ""
    var countries: [Countries?] = []
    var data: [Data1?] = []
    var desc: String? = ""
    var from: String? = ""
    var id: Int?
    var lang: [String?] = []
    var lastm: String? = ""
    var name: String? = ""
    var owner: String? = ""
    var until: String? = ""
}

//MARK: - Countries
struct Countries: Codable {
    var agelimit: Int?
    var uagelimit: Int?
    var country: String? = ""
}

//MARK: - Data1
struct Data1: Codable {
    var type: Int?
    var name: String? = ""
    var data: String? = ""
}
