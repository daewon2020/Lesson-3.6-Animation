//
//  Sun.swift
//  Lesson 3.6 Animation
//
//  Created by Константин Андреев on 09.05.2022.
//

import SwiftUI

struct Sun: View {
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .fill(Color.yellow)
                .opacity(0.8)
        }
    }
}

struct Sun_Previews: PreviewProvider {
    static var previews: some View {
        Sun()
    }
}
