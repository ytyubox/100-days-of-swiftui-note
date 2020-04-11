//
//  StackTry.swift
//  GuessTheFlag
//
//  Created by 游宗諭 on 2019/10/29.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

struct StackTry: View {
    var body: some View {
        ZStack {
            Color.red
            VStack {
                HStack {
                    Text("1")
                    Text("2")
                    Text("3")
                }
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

struct StackTry_Previews: PreviewProvider {
    static var previews: some View {
        StackTry()
    }
}
