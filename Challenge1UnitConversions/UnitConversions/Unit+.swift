//
//  Unit+.swift
//  UnitConversions
//
//  Created by 游宗諭 on 2019/10/28.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import Foundation

public protocol RawValueConvertable {
    associatedtype RawValue:CustomStringConvertible
    var rawValue:RawValue {get}
}

extension UnitTemperature {
    public typealias AllCases = Array<UnitTemperature>
    public static var allCases: Array<UnitTemperature> {
        [
            .celsius,
            .fahrenheit,
            .kelvin
        ]
    }
}

extension UnitTemperature: RawValueConvertable {
    public typealias RawValue = String
    public var rawValue: String {
        let f = MeasurementFormatter()
        f.unitStyle = .long
        return f.string(from: self)
            .split(separator: " ")
            .first{
                $0.contains(description.last!.lowercased()) ||
                    $0.contains(description.last!.uppercased())
            }!.description
    }
    
}
