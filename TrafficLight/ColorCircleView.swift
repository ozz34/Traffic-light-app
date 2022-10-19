//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by Иван Худяков on 19.10.2022.
//

import SwiftUI

struct ColorCircleView: View {

    var color: Color
 
    var body: some View {
        Circle()
        .frame(width: 100, height: 100)
        .foregroundStyle(color)
        .shadow(color: color, radius: 20, x: -10, y: -5)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(
            color: .red
        )
    }
}
