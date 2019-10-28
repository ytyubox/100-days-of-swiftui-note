//
//  UnitManger.swift
//  UnitConversions
//
//  Created by 游宗諭 on 2019/10/28.
//  Copyright © 2019 游宗諭. All rights reserved.
//

import Foundation

struct UnitManager<U: Dimension> {
    
    static var supportUnitList:[SupportUnit] { SupportUnit.allCases }
    enum SupportUnit:CaseIterable {
        case temperuture
        func getUnitManager<U:Dimension>() -> UnitManager<U>{
            return UnitManager<UnitTemperature>() as! UnitManager<U>
        }
    }
    
    
    private let formatter = MeasurementFormatter()
    
    func convert(_ value:Double,
                 unit:U,
                 to toUnit: U) -> Double{
        return Measurement(value: value, unit: unit).converted(to: toUnit).value
    }
}

extension UnitManager where U:CaseIterable & RawValueConvertable{
    var allCases:[String] { U.allCases.map{ $0.rawValue.description} }
}
