//
//  Constants.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

let colorBackground = Color("ColorBackground")
let colorGray = Color(.systemGray4)

let players : [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")
let brands : [Brand] = Bundle.main.decode("brand.json")
let sampleProduct : Product = products[0]

let columnSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
