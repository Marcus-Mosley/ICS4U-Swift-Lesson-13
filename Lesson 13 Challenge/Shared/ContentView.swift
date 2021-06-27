//
// Main.swift
// Lesson 13 Challenge
//
// Created by Marcus A. Mosley on 2021-01-22
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

let item1: UIImage =
let item2: UIImage =
let item3: UIImage =

struct ContentView: View {
    
    @State private var leftSlot = "item1"
    @State private var centerSlot = "item1"
    @State private var rightSlot = "item1"
    @State private var credits = 1000
    
    var body: some View {
        VStack() {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(String(credits))")
            Spacer()
            HStack() {
                Spacer()
                Image(uiImage: UIImage(imageLiteralResourceName: leftSlot))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(uiImage: UIImage(imageLiteralResourceName: centerSlot))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(uiImage: UIImage(imageLiteralResourceName: rightSlot))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            Button("Spin", action: {
                leftSlot = "item" + String(Int.random(in: 1...3))
                centerSlot = "item" + String(Int.random(in: 1...3))
                rightSlot = "item" + String(Int.random(in: 1...3))
                
                if leftSlot == centerSlot && leftSlot == rightSlot {
                    credits += 15
                } else {
                    credits -= 5
                }
            })
            .padding()
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
