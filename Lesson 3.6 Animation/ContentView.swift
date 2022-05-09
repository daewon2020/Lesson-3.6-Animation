//
//  ContentView.swift
//  Lesson 3.6 Animation
//
//  Created by Константин Андреев on 07.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var yOffset: CGFloat = 0.0
    @State private var rotation = 0.0
    @State private var color = Color.green
    @State private var animated = true
    @State private var opacity = 1.0
    @State private var cloudXOffset = 320.0
    @State private var buttonText = "Tap for animation"
    @State private var timer: Timer?
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    var body: some View {
    
        ZStack {
            Color.blue.ignoresSafeArea().opacity(0.2)
            VStack {
                
                Button(action: { buttonPressed() }){
                    Text(buttonText)
                }

                ZStack {
                    
                    Sun().frame(width: 150, height: 150)
                        .position(x: 0, y: 0)
                    
                    Tree().frame(width: 400, height: 600)

                    Cloud().frame(width: 200, height: 100)
                        .offset(x: -cloudXOffset, y: -350)
                        .animation(.easeInOut(duration: 1), value: cloudXOffset)
                    
                    Cloud().frame(width: 200, height: 100)
                        .offset(x: cloudXOffset, y: -270)
                        .animation(.easeInOut(duration: 1), value: cloudXOffset)
                    
                    ForEach(0..<200) { _ in
                        let randomPosition = CGPoint(
                            x: CGFloat.random(in: 0...width),
                            y: CGFloat.random(in: height * 0.3...height * 0.5))
                        let randomRotation = Double.random(in: 0.0...360)
                        let randomDelay = Double.random(in: 3.0...6.0)
                        Leaf(yOffset: $yOffset,
                             rotation: $rotation,
                             color: $color,
                             opacity: $opacity,
                             startPosition: randomRotation
                        ).position(randomPosition)
                            .animation(
                                animated ? .easeInOut(duration: 3).delay(randomDelay) : .none,
                                value: yOffset
                            )
                    }
                }
            }
        }
    }
    
    private func buttonPressed() {
        
        timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: false, block: { _ in
            animated = yOffset == 0 ? true : false
            yOffset = yOffset == UIScreen.main.bounds.width
            ? 0.0
            : UIScreen.main.bounds.width
            color = .green
            rotation = rotation == 720 ? 0.0 : 720
            cloudXOffset = cloudXOffset == 320 ? 90 : 320
            withAnimation(.easeIn(duration: 2)) {
                opacity = 1
                cloudXOffset = 320
            }
        })
        
        if color == .green {
            withAnimation(.easeIn(duration: 2)) {
                color = .yellow
            }
            
        } else {
            withAnimation(.none) {
                color = .green
            }
        }
        
        animated = yOffset == 0 ? true : false
        yOffset = yOffset == UIScreen.main.bounds.width
        ? 0.0
        : UIScreen.main.bounds.width
        
        rotation = rotation == 720 ? 0.0 : 720
        cloudXOffset = cloudXOffset == 320 ? 90 : 320
        
        if opacity == 1 {
            withAnimation(.easeIn(duration: 2).delay(8)) {
                opacity = 0
            }
        }else {
            withAnimation(.easeIn(duration: 2)) {
                opacity = 1
                cloudXOffset = 320
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
