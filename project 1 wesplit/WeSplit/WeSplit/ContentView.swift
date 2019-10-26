//
//  ContentView.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    
    // MARK: - Modal property
    @State private var checkAmount:String = ""
    @State private var numberofPeople:String = ""
    @State private var tipPercentageIndex:Int = 2
    private let tipPercentages:[Int] = [10, 15, 20, 25, 0]
    
    private var totalPerPerson:Double {
        guard let peopleCount = Double(numberofPeople) else {return 0}
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    private var grandTotal:Double {
        let tipSelection = Double(tipPercentages[tipPercentageIndex])
        let orderAmount = Double(checkAmount) ?? 0
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        
        return grandTotal
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    TextField("Number of People", text: $numberofPeople)
                        .keyboardType(.numberPad)
                }
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentageIndex) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Amount per person")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
                Section(header: Text("Total amount")) {
                    Text("$\(grandTotal, specifier: "%g")")
                }
            }.navigationBarTitle("WeSplit")
        }
    }
}

