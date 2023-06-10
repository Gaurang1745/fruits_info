//
//  CateforyModel.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import Foundation

struct Category : Codable, Identifiable {
    let id : Int
    let name :String
    let image :String
}
