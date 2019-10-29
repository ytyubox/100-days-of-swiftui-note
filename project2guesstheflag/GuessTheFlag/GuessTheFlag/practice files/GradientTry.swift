//
//  GradientTry.swift
//  GuessTheFlag
//
//  Created by 游宗諭 on 2019/10/29.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

struct GradientTry: View {
    var body: some View {
        VStack(spacing:0) {
            LinearGradient(gradient: Gradient(colors: [.white, .black]),
                           startPoint: .top,
                           endPoint: .bottom)
            RadialGradient(gradient: Gradient(colors: [.blue, .black]),
                           center: .center,
                           startRadius: 20,
                           endRadius: 150)
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
                            center: .center)
            
        }
    }
}

struct GradientTry_Previews: PreviewProvider {
    static var previews: some View {
        GradientTry()
    }
}
