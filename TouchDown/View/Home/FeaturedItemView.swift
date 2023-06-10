//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

struct FeaturedItemView: View {
    
    var player : Player
    var body: some View {
        
//        GeometryReader { geometry in
            
            Image(player.image)
                .resizable()
                .scaledToFit()
//                .aspectRatio( contentMode: .fill)
//                .frame(width: geometry.size.width , height: geometry.size.width / 1.6)
                .cornerRadius(12)
//        }
        
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
