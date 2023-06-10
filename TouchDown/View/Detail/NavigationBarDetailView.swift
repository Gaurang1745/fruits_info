//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Gaurang on 5/20/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        HStack {
            Button(action: {
                shop.showingProduct = false
                shop.selectedProduct = nil
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
