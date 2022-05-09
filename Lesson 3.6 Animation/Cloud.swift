//
//  Cloud.swift
//  Lesson 3.6 Animation
//
//  Created by Константин Андреев on 09.05.2022.
//

import SwiftUI

struct Cloud: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: 0 , y: height))
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.2, y: height * 0.5),
                    control: CGPoint(x: width * -0.1,y: height * 0.4)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.6, y: height * 0.4),
                    control: CGPoint(x: width * 0.4,y: height * -0.1)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width, y: height),
                    control: CGPoint(x: width * 1.2,y: 0)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.5, y: height * 1.6),
                    control: CGPoint(x: width * 1.2,y: height*2)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: 0, y: height),
                    control: CGPoint(x: width * -0.2, y: height * 2)
                )
 
            }.fill(Color.gray)
                .opacity(0.1)
        }
    }
}

struct Cloud_Previews: PreviewProvider {
    static var previews: some View {
        Cloud()
            .frame(width: 150, height: 100)
    }
}
