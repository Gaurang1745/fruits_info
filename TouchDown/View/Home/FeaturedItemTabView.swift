//
//  FeaturedItemTabView.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

struct FeaturedItemTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedItemTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemTabView()
            .background(Color.gray)
    }
}
