//
//  ProductModel.swift
//  TouchDown
//
//  Created by Gaurang on 5/20/23.
//

import Foundation

struct Product : Codable, Identifiable {
    let id : Int
    let name :String
    let image :String
    let price : Int
    let description : String
    let color : [Double]
}
