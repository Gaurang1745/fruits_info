//
//  SectionView.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

struct SectionView: View {
    
    @State var  isRotateClockwise : Bool
    
    var body: some View {
        VStack (spacing : 0){
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: isRotateClockwise ? 90 : -90))
            Spacer()
        }
            .background(Color.gray.cornerRadius(8))
            .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(isRotateClockwise : true)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
