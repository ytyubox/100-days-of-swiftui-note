//
//  BingingStateToUI.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI

struct BingingStateToUI: View {
    @State private var name = ""
    private var text: String { "youname is \(name)"}
    var body: some View {
        Form {
            /// Swift differentiates between
            /// 1. “show the value of this property here”
            /// 2. “show the value of this property here, but write any changes back to the property.”
            TextField("Enter your name", text: $name)
            Text(text)
        }
    }
}

struct BingingStateToUI_Previews: PreviewProvider {
    static var previews: some View {
        BingingStateToUI()
    }
}
