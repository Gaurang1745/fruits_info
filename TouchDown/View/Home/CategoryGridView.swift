//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(isRotateClockwise: false)
                } footer: {
                    SectionView(isRotateClockwise: true)
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
