//
//  StateAndButton.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI
struct StateAndButton: View {
    
    /// @State allows us to work around the limitation of structs: we know we can’t change their properties because structs are fixed, but @State allows that value to be stored separately by SwiftUI in a place that can be modified.
    
    /// Yes, it feels a bit like a cheat, and you might wonder why we don’t use classes instead – they can be modified freely. But trust me, it’s worthwhile: as you progress you’ll learn that SwiftUI destroys and recreates your structs frequently, so keeping them small and simple structs is important for performance.
    /// @State is specifically designed for simple properties that are stored in one view. As a result, Apple recommends we add private access control to those properties, like this: @State private var tapCount = 0.
    @State private var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            /// Because of Self is `Struct`, we can't mutate self without `mutating func`, and SwiftUI is smart to keep people doing dumb thing, can't using final class!!!!
            self.tapCount += 1
        }
    }
}

struct StateAndButton_Previews: PreviewProvider {
    static var previews: some View {
        StateAndButton()
    }
}
