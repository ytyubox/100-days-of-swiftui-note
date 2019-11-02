//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 游宗諭 on 2019/10/29.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

struct ContentView {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}
extension ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number % 3])
                            .renderingMode(.original)
                    }
                }
                Spacer()
            }
        }.alert(isPresented: $showingScore) {
            
            let dissmissbutton = Alert.Button.default(Text("Continue")) { self.askQuestion() }
            
            return Alert(title: Text(scoreTitle),
                  message: Text("Your score is ???"),
                  dismissButton: dissmissbutton)
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
