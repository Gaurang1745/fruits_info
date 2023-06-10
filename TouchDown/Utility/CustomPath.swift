//
//  CustomPath.swift
//  TouchDown
//
//  Created by Gaurang on 5/20/23.
//

import SwiftUI

struct CustomPath: Shape {
    func path(in rect : CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topRight,.topLeft], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct CustomPath_Previews: PreviewProvider {
    static var previews: some View {
        CustomPath()
            .previewLayout(.fixed(width: 428, height: 128))
            .padding()
    }
}
