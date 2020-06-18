//
//  ContentView.swift
//  diceApp
//
//  Created by W Wessels on 6/15/20.
//  Copyright © 2020 W Wessels. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var diceNumber =
        Int.random(in: 1...6)
    @State var images = ["1Dice", "2Dice", "3Dice", "4Dice", "5Dice", "6Dice"]
    @State var image = "1Dice"
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Dice App!").font(Font.custom("ArialRoundedMTBold", size: 30))
            Spacer()
            Text("Click on the button to roll the dice!").font(Font.custom("ArialRoundedMT", size: 18))
            Spacer()
            Image(image).resizable().aspectRatio(contentMode: .fit).padding([.leading, .trailing], 50.0).padding([.bottom, .top], 25.0)
            Spacer()
            Button(action: {
                self.rollDice()
                self.getCorrectImage()
            }) {
                Text("Roll the dice")
            }
            Spacer()
        }
    }
    
    func rollDice() {
        diceNumber = Int.random(in: 1...6)
        print(diceNumber)
    }
    
    func getCorrectImage() {
        image = images[diceNumber - 1]
//        if diceNumber == 1 {
//            image = "1Dice"
//        }
//        else if diceNumber == 2 {
//            image = "2Dice"
//        }
//        else if diceNumber == 3 {
//            image = "3Dice"
//        }
//        else if diceNumber == 4 {
//            image = "4Dice"
//        }
//        else if diceNumber == 5 {
//            image = "5Dice"
//        }
//        else if diceNumber == 6 {
//            image = "6Dice"
//        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
