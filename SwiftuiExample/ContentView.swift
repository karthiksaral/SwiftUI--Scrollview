//
//  ContentView.swift
//  SwiftuiExample
//
//  Created by Karthikeyan A. on 24/09/19.
//  Copyright © 2019 Karthikeyan A. All rights reserved.
//

import SwiftUI

 

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Select your Menu").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(Range(1...5)) { getEachIndex in
                            GeometryReader { reader in
                                Image("Image-\(getEachIndex)").resizable().frame(width: 175, height: 175).scaledToFill().clipped().padding().shadow(radius:  CGFloat(3))
                                    .background(Color.white).shadow(radius: CGFloat(3))
                                    .rotation3DEffect(Angle(degrees: Double((reader.frame(in: .global).midX) / 20)), axis: (x: 100.0, y: -100.0, z: 100.0))
                            }
                            .frame(width: 200, height: 300)
                            
                        }
                    }
                }
            }
            
            Spacer()
        }
        .background(Image("bgImage").resizable().scaledToFill()).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
