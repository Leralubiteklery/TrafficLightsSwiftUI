//
//  CircleView.swift
//  TrafficLightsSwiftUI
//
//  Created by Lera Savchenko on 26.09.23.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
            CircleView(color: .green, opacity: 1)
        } 
    }
}
