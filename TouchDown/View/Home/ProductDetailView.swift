//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Gaurang on 5/20/23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }?.safeAreaInsets.top)
            VStack(alignment: .leading, spacing: 6) {
                Text("Protective Gear")
                Text(shop.selectedProduct?.name ?? sampleProduct.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            
            TopPartDetailView()
                .padding()
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                RatingSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom,10)
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                Button(action: {}) {
                    Spacer()
                    Text("Add to Cart".uppercased())
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(15)
                .background(
                    Color(red : shop.selectedProduct?.color[0] ?? sampleProduct.color[0], green: shop.selectedProduct?.color[1] ?? sampleProduct.color[1], blue: shop.selectedProduct?.color[2] ?? sampleProduct.color[2])
                )
                .clipShape(Capsule())
                .padding(.bottom,20)
                
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomPath())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red : shop.selectedProduct?.color[0] ?? sampleProduct.color[0], green: shop.selectedProduct?.color[1] ?? sampleProduct.color[1], blue: shop.selectedProduct?.color[2] ?? sampleProduct.color[2])
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
