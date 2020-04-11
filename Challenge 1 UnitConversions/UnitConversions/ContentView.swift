//
//  ContentView.swift
//  UnitConversions
//
//  Created by 游宗諭 on 2019/10/28.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import SwiftUI

// MARK: - State
struct ContentView {
    private let unitManager = UnitManager<UnitTemperature>()
    @State private var inputValue:String = ""
    @State private var inputUnit:UnitTemperature = .celsius
    @State private var outputUnit:UnitTemperature = .fahrenheit
    private var unitList:[UnitTemperature] = UnitTemperature.allCases
}
// MARK: - View
extension ContentView: View {
    private var convertedValueText: Text {
        if inputValue.isEmpty {return Text("0")}
        guard let input = Double(inputValue) else {return Text("Invaild input")}
        let value = unitManager.convert(input, unit: inputUnit, to: outputUnit)
        return Text("\(value, specifier: "%.2f")")
    }
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Input value")){
                    TextField("Amount to convert", text: $inputValue)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Choose Unit to convert")) {
                    Picker("Unit",selection: $inputUnit) {
                        ForEach(unitList, id: \.self) {
                            Text("\($0.rawValue)")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Choose Unit converting to")) {
                    Picker("Unit",selection: $outputUnit) {
                        ForEach(unitList, id: \.self) {
                            Text("\($0.rawValue)")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                convertedValueText
            }
            .navigationBarTitle("Unit Conversions", displayMode: .inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
