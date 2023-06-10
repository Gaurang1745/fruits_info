//
//  ContentView.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI
//import UIView

struct ContentView: View {
    
    @EnvironmentObject var shop : Shop
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing : 0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack (spacing: 0) {
                            FeaturedItemTabView()
                                .aspectRatio(1.6, contentMode: .fill)
                                .padding(.vertical, 15)
                            
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15, pinnedViews: []) {
                                ForEach(products) { product  in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            } .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                        
                            
                            Footer()
                                .padding(.horizontal)
                        }
                    }
                    
                    
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
    
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
