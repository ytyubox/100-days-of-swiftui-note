//
//  ForEachInForm.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI

struct ForEachInForm: View {
    var body: some View {
        Form {
            ForEach(0..<100) { index in
                Text("row \(index)")
            }
        }
    }
}

struct ForEachInForm_Previews: PreviewProvider {
    static var previews: some View {
        ForEachInForm()
    }
}
