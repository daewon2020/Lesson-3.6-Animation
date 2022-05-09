//
//  Tree.swift
//  Lesson 3.6 Animation
//
//  Created by Константин Андреев on 07.05.2022.
//

import SwiftUI

struct Tree: View {
    @State private var yOffset: CGFloat = 0.0
    @State private var rotation = 0.0
    @State private var color = Color.green
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            let middle = size / 2
            Path { path in
                path.move(to: CGPoint(x: middle - 20, y: height))
                path.addLine(to: CGPoint(x: middle - 20, y: height - 100))
                path.addLine(to: CGPoint(x: middle - 80, y: height - 120))
                path.addLine(to: CGPoint(x: middle - 80, y: height - 170))
                path.addLine(to: CGPoint(x: middle - 120, y: height - 190))
                path.addLine(to: CGPoint(x: middle - 120, y: height - 250))
                path.addLine(to: CGPoint(x: middle - 120, y: height - 250))
                path.addLine(to: CGPoint(x: middle - 150, y: height - 270))
                path.addLine(to: CGPoint(x: middle - 150, y: height - 370))
                
                path.move(to: CGPoint(x: middle - 150, y: height - 270))
                path.addLine(to: CGPoint(x: middle - 110, y: height - 300))
                path.addLine(to: CGPoint(x: middle - 110, y: height - 350))
                
                path.move(to: CGPoint(x: middle - 150, y: height - 290))
                path.addLine(to: CGPoint(x: middle - 180, y: height - 300))
                path.addLine(to: CGPoint(x: middle - 180, y: height - 370))
                
                path.move(to: CGPoint(x: middle - 20, y: height - 100))
                path.addLine(to: CGPoint(x: middle - 20, y: height - 340))
                
                path.move(to: CGPoint(x: middle - 20, y: height - 200))
                path.addLine(to: CGPoint(x: middle - 60, y: height - 240))
                path.addLine(to: CGPoint(x: middle - 60, y: height - 370))
                
                path.move(to: CGPoint(x: middle - 60, y: height - 270))
                path.addLine(to: CGPoint(x: middle - 80, y: height - 290))
                path.addLine(to: CGPoint(x: middle - 80, y: height - 360))
                
                path.move(to: CGPoint(x: middle + 20, y: height))
                path.addLine(to: CGPoint(x: middle + 20, y: height - 100))
                path.addLine(to: CGPoint(x: middle + 80, y: height - 120))
                path.addLine(to: CGPoint(x: middle + 80, y: height - 170))
                path.addLine(to: CGPoint(x: middle + 120, y: height - 190))
                path.addLine(to: CGPoint(x: middle + 120, y: height - 250))
                path.addLine(to: CGPoint(x: middle + 120, y: height - 250))
                path.addLine(to: CGPoint(x: middle + 150, y: height - 270))
                path.addLine(to: CGPoint(x: middle + 150, y: height - 370))
                
                path.move(to: CGPoint(x: middle + 150, y: height - 270))
                path.addLine(to: CGPoint(x: middle + 110, y: height - 300))
                path.addLine(to: CGPoint(x: middle + 110, y: height - 350))
                
                path.move(to: CGPoint(x: middle + 150, y: height - 290))
                path.addLine(to: CGPoint(x: middle + 180, y: height - 300))
                path.addLine(to: CGPoint(x: middle + 180, y: height - 370))
                
                path.move(to: CGPoint(x: middle + 20, y: height - 100))
                path.addLine(to: CGPoint(x: middle + 20, y: height - 340))
                
                path.move(to: CGPoint(x: middle + 20, y: height - 200))
                path.addLine(to: CGPoint(x: middle + 60, y: height - 240))
                path.addLine(to: CGPoint(x: middle + 60, y: height - 370))
                
                path.move(to: CGPoint(x: middle + 60, y: height - 270))
                path.addLine(to: CGPoint(x: middle + 80, y: height - 290))
                path.addLine(to: CGPoint(x: middle + 80, y: height - 360))
                
            }.stroke(lineWidth: 5)
            Path { path in
                path.move(to: CGPoint(x: 0, y: height))
                path.addLine(to: CGPoint(x: width, y: height))
            }.stroke(Color.brown,lineWidth: 10)
        }
    }
}

struct Tree_Previews: PreviewProvider {
    static var previews: some View {
        Tree()
    }
}
