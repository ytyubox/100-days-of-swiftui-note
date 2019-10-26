//
//  ContentView.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Modal property
    @State private var checkAmount = ""
    @State private var numberOPerple = 2
    @State private var tipPercentageIndex = 2
    private let tipPercentages = [10, 15, 20, 25, 0]
    
    
    var body: some View {
       Form {
            Section {
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }

            Section {
                Text("$\(checkAmount)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
