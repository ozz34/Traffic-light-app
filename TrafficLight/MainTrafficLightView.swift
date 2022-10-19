//
//  ContentView.swift
//  TrafficLight
//
//  Created by Иван Худяков on 19.10.2022.
//

import SwiftUI

struct MainTrafficLightView: View {
    
    @State private var countTappedButton = 0

    var body: some View {
        VStack {
            ZStack {
                Color(.white)
                    .frame(width: 150, height: 400)
                    .border(.black, width: 15)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 10, x: 10, y: 10)
                    .padding()
                VStack {
                    ColorCircleView(color: countTappedButton == 1 ? .red : .white)
                    ColorCircleView(color: countTappedButton == 2 ? .yellow : .white)
                    ColorCircleView(color: countTappedButton == 3 ? .green : .white)
                }
            }
            Spacer()
            
            TrafficButtonAction {
                switch countTappedButton {
                case 1:
                    countTappedButton += 1
                case 2:
                    countTappedButton += 1
                default:
                    countTappedButton = 1
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTrafficLightView()
            .previewDevice("iPhone SE (3rd generation)")
    }
}
