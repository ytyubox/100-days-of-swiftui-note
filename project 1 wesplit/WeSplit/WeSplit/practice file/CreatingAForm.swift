//
//  CreatingAFrom.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI

struct CreatingAForm: View {
    /// Any View is limited in 10 subView but List
    var body: some View {
        Form{
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
            
            // Group is just a container of 10 views
            Group {
                Text("Hello World!")
                Text("Hello World!")
            }
            Section {
                Text("Hello World!")
            }
            Group {
                Text("Hello World!")
                Text("Hello World!")
            }
        }
    }
}

struct CreatingAFrom_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAForm()
    }
}
