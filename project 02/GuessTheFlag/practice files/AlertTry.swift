//
//  AlertTry.swift
//  GuessTheFlag
//
//  Created by 游宗諭 on 2019/10/29.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

struct AlertTry: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Tap me") {
            self.showingAlert.toggle()
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))

        }
    }
}

struct AlertTry_Previews: PreviewProvider {
    static var previews: some View {
        AlertTry()
    }
}
