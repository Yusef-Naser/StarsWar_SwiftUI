//
//  ModelStarWars.swift
//  Star Wars Cats
//
//  Created by Yusef Naser on 12/11/2021.
//

import Foundation
import SwiftUI

struct ModelStarWars : Codable   {

    let results: [ModelResult]
}

struct ModelResult : Codable , Identifiable   {
    let id : Int
    let name : String
    let height, mass, hair_color: String
    let skin_color, eye_color, birth_year, gender: String
    let imageUrl : String

    enum CodingKeys: String, CodingKey {
        case name, height, mass
        case hair_color
        case skin_color
        case eye_color
        case birth_year
        case gender , id
        case imageUrl
     
    }
    
}
