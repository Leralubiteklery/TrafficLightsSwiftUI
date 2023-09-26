//
//  CircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Lera Savchenko on 26.09.23.
//

import SwiftUI

struct CircleView: View {
    var color: Color
    @State var isOn = false
    
    var body: some View {
        
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .opacity(setOpacity())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
    
    private func setOpacity() -> Double{
        var opacity = 0.5
        if isOn {
            opacity = 1
            isOn.toggle()
        }
        return opacity
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
            CircleView(color: .green)
        }
        
        
    }
}
