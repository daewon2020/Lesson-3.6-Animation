//
//  Leaf.swift
//  Lesson 3.6 Animation
//
//  Created by Константин Андреев on 09.05.2022.
//

import SwiftUI

struct Leaf: View {
    @Binding var yOffset: CGFloat
    @Binding var rotation: Double
    @Binding var color: Color
    @Binding var opacity: Double
    let startPosition: Double
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle , y: height / 2))
                path.addQuadCurve(
                    to: CGPoint(x: middle ,y: height),
                    control: CGPoint(x: width, y: height * 0.7))
                path.addQuadCurve(
                    to: CGPoint(x: middle ,y: height / 2),
                    control: CGPoint(x: 0, y: height * 0.7))
            }.foregroundColor(color)    
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: height / 2 ))
                path.addLine(to: CGPoint(x: middle, y: height * 0.99))
            }.stroke(lineWidth: 2)
                .foregroundColor(.white)
                .opacity(0.4)
            
        }
        .frame(width: 40, height: 60)
        .rotationEffect(Angle.degrees(rotation + startPosition))
        .offset(y: yOffset)
        .opacity(opacity)
    }

}

struct Leaf_Previews: PreviewProvider {
    static var previews: some View {
        Leaf(
            yOffset: .constant(12.0),
            rotation: .constant(67),
            color: .constant(.green),
            opacity: .constant(1),
            startPosition: 40.0
        )
    }
}
