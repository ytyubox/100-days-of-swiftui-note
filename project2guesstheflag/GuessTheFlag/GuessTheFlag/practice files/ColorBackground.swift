//
//  ColorBackground.swift
//  GuessTheFlag
//
//  Created by 游宗諭 on 2019/10/29.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

struct ColorBackground: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea([.bottom, Edge.Set.leading])
            Color.green
            Color.yellow.frame(width: 200, height: 200, alignment: .center)
            VStack {
                HStack {
                    Text("1")
                        .background(Color.red)
                    Text("2")
                    Text("3")
                }
                .background(Color.orange)
                HStack {
                    Text("4")
                    Text("5")
                    Text("6")
                }
                HStack {
                    Text("7")
                    Text("8")
                    Text("9")
                }
            }
        }
    }
}

struct ColorBackground_Previews: PreviewProvider {
    static var previews: some View {
        ColorBackground()
    }
}
