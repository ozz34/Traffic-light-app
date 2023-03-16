//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by Иван Худяков on 19.10.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let image: String
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .overlay(Image(image).resizable())
            .opacity(opacity)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(image: "1",
                        opacity: 1)
    }
}
