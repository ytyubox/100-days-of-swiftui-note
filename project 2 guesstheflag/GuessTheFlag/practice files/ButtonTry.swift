//
//  ButtonTry.swift
//  GuessTheFlag
//
//  Created by 游宗諭 on 2019/10/29.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

struct ButtonTry: View {
    var body: some View {
        VStack {
            Button(action: {
                print("button tapped")
            }) {
                VStack {
                Image(systemName: "pencil")
                    .renderingMode(.original)
                    Text("Edit")
                }
            }
        }
    }
}

struct ButtonTry_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTry()
    }
}
