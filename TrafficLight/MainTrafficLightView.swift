//
//  ContentView.swift
//  TrafficLight
//
//  Created by Иван Худяков on 19.10.2022.
//

import SwiftUI

struct MainTrafficLightView: View {
    
    @State private var redOpacity = Status.colorIsOff.rawValue
    @State private var yellowOpacity = Status.colorIsOff.rawValue
    @State private var greenOpacity = Status.colorIsOff.rawValue
    
    @State var buttonTitle = "Start"
    
    @State private var countTappedButton = 0
    
    enum Status: Double {
    case colorIsOn = 1
    case colorIsOff = 0.3
    }
    
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
                    ColorCircleView(image: "1", opacity: redOpacity)
                    ColorCircleView(image: "2", opacity: yellowOpacity)
                    ColorCircleView(image: "3", opacity: greenOpacity)
                }
            }
            Spacer()
            
            TrafficButtonActivate(action: {
                switch countTappedButton {
                case 0:
                    greenOpacity = Status.colorIsOff.rawValue
                    redOpacity = Status.colorIsOn.rawValue
                    countTappedButton += 1
                case 1:
                    redOpacity = Status.colorIsOff.rawValue
                    yellowOpacity = Status.colorIsOn.rawValue
                    countTappedButton += 1
                default:
                    yellowOpacity = Status.colorIsOff.rawValue
                    greenOpacity = Status.colorIsOn.rawValue
                    countTappedButton = 0
                }
                
                if buttonTitle == "Start" {
                    buttonTitle = "Next"
                }
            }, title: buttonTitle
    )
//
//            TrafficButtonActivate {
//                switch countTappedButton {
//                case 0:
//                    greenOpacity = Status.colorIsOff.rawValue
//                    redOpacity = Status.colorIsOn.rawValue
//                    countTappedButton += 1
//                case 1:
//                    redOpacity = Status.colorIsOff.rawValue
//                    yellowOpacity = Status.colorIsOn.rawValue
//                    countTappedButton += 1
//                default:
//                    yellowOpacity = Status.colorIsOff.rawValue
//                    greenOpacity = Status.colorIsOn.rawValue
//                    countTappedButton = 0
//                }
//            };, title: "Next")
        }
    }
}
                               

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTrafficLightView()
            .previewDevice("iPhone SE (3rd generation)")
    }
}
