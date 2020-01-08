//
//  SecondTab.swift
//  teste
//
//  Created by Guilherme Deconto on 08/01/20.
//  Copyright © 2020 Guilherme Deconto. All rights reserved.
//

import SwiftUI

struct SecondTab: View {
    @State var selectedInt: Double = 0
    @State var randomInt: Int = Int.random(in: 1...20)
    @State var gameOver: Bool = false
    @State var segmentedControl = 0
    @State var showingAlert = false
    
    @State private var difficulty = ["Easy","Hard","Impossible"] //Another way to make the picker
    
    var body: some View {
        VStack{
            
//            Picker(selection: $segmentedControl, label: Text("Game")) {
//                Text("Easy").tag(0)
//                Text("Hard").tag(1)
//            }.pickerStyle(SegmentedPickerStyle())
            
            
            Picker("Game", selection: $segmentedControl) {
                ForEach(0 ..< difficulty.count) { index in
                    Text(self.difficulty[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
//            Text("Value: \(segmentedControl)")    Check Difficulty debug
            
            Spacer()
            HStack{
                Text("Put the slider as close as you can to: ")
                Text("\(randomInt)").foregroundColor(Color.purple)
            }
            
            HStack{
                
                Spacer()
                
                Text("0")
                
                SliderView(segmentedControl: $segmentedControl, selectedInt: $selectedInt)
                
                Spacer()
            }
            
//            Text("Selected Value is \(Int(selectedInt))")    Check selected value debug
            
            Spacer()
            
            Button(action: {
                self.showingAlert = true
                if (Int(self.selectedInt) == self.randomInt){
                    self.gameOver = false
                }else{
                    self.gameOver = true
                }
            }){
                Text("Try the game").bold().foregroundColor(.white).frame(width: 150, height: 40, alignment: .center).background(Color.purple).cornerRadius(20)
            }.alert(isPresented: $showingAlert) {
                if (gameOver){
                    return Alert(title: Text("Game Over"), message: Text("Sorry, but you didnt select the right number."), dismissButton: .default(Text("Try Again!"), action: {
                        self.genRandomInt(difficulty: self.segmentedControl)
                    }))
                }else{
                    return Alert(title: Text("Success"), message: Text("You made it!"), dismissButton: .default(Text("Yey!"), action: {
                        self.genRandomInt(difficulty: self.segmentedControl)
                    }))
                }
            }
            
            Spacer()
        }
    }
    func genRandomInt(difficulty: Int){
        if (segmentedControl == 1){
            self.randomInt = Int.random(in: 1...50)
        }else if (segmentedControl == 0){
            self.randomInt = Int.random(in: 1...20)
        }else {
            self.randomInt = Int.random(in: 1...100)
        }
    }
}
