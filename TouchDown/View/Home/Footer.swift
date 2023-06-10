//
//  Footer.swift
//  TouchDown
//
//  Created by Gaurang on 4/1/23.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, light weight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Gaurang Kachhia\nAll rights reserved")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
                .foregroundColor(.gray)
                .fontWeight(.bold)
        }
        .padding()
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
