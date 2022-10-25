//
//  TrafficButtonActivate.swift
//  TrafficLight
//
//  Created by Иван Худяков on 19.10.2022.
//

import SwiftUI

struct TrafficButtonActivate: View {
    
    let action : () -> ()
    let title: String
    
    var body: some View {
        Button(title, action: action)
        .frame(width: 100, height: 100)
        .foregroundColor(.red)
        .font(.system(size: 25, weight: .bold, design: .serif))
        .padding()
    }
}

struct TrafficButtonActivate_Previews: PreviewProvider {
    static var previews: some View {
        TrafficButtonActivate(action: {}, title: "Старт")
    }
}

