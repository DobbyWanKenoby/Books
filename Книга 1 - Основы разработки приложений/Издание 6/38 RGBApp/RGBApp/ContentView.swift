//
//  ContentView.swift
//  RGBApp
//
//  Created by Василий Усов on 21.04.2020.
//  Copyright © 2020 Василий Усов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $redComponent)
            Slider(value: $greenComponent)
            Slider(value: $blueComponent)
            Color(red: redComponent, green: greenComponent, blue: blueComponent)
        }
        .padding(.all, 10.0)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

