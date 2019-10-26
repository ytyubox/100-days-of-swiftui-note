//
//  NavigationBar.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//

import SwiftUI
// By default iOS allows us to place content anywhere on the screen, including under the system clock and the home indicator. This doesn’t look great, which is why by default SwiftUI ensures components are placed in an area where they can’t be covered up by system UI or device rounded corners – an area known as the safe area.

struct NavigationBar: View {
    var body: some View {
        //
        NavigationView {
            Form{
                Section {
                    Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                }
            }
                //  ### Title for Form, not NavigationView ###
                //
                //.navigationBarTitle(_ title: Text)
                //.navigationBarTitle(_ titleKey: LocalizedStringKey)
                //.navigationBarTitle<S>(_ title: StringProtocol)
                //.navigationBarTitle(_ title: Text, displayMode: NavigationBarItem.TitleDisplayMode)
                //.navigationBarTitle(_ titleKey: LocalizedStringKey, displayMode: NavigationBarItem.TitleDisplayMode)
                .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
