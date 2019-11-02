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
    @State private var score:Int = 0
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
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
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer]) // here with the Text “Estonia”, UI will show "Eston..." 🤔
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number % 3])
                            .renderingMode(.original)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                            .shadow(color: .black, radius: 1)
                    }
                }
                Text("Your score: \(score)")
                    .foregroundColor(.white)
                Spacer()
            }
        }.alert(isPresented: $showingScore) {
            
            let dissmissbutton = Alert.Button.default(Text("Continue")) { self.askQuestion() }
            
            return Alert(title: Text(scoreTitle),
                         message: Text("Your score is \(score)"),
                         dismissButton: dissmissbutton)
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
