//
//  BasicStructureOfSwiftUI.swift
//  WeSplit
//
//  Created by 游宗諭 on 2019/10/26.
//  Copyright © 2019 ytyubox. All rights reserved.
//
// 1
///  use all the functionality given to us by the SwiftUI framework.
import SwiftUI

// 2
/// struct ContentView: View creates a new struct called ContentView, saying that it conforms to the View protocol. View comes from SwiftUI, and is the basic protocol that must be adopted by anything you want to draw on the screen – all text, buttons, images, and more are all views, including your own layouts that combine other views.
struct BasicStructureOfSwiftUI: View {
    // 3
    /// defines a new computed property called body, which has an interesting type: some View. This means it will return something that conforms to the View protocol, but that extra some keyword adds an important restriction: it must always be the same kind of view being returned – you can’t sometimes return one type of thing and other times return a different type of thing.
    var body: some View {
        // 4
        // Text("Hello World") creates a text view using the string “Hello World”. Text views are simple pieces of static text that get drawn onto the screen, and will automatically wrap across multiple lines as needed.
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}
/// A type that produces view previews in Xcode.
///
/// This piece of code won’t actually form part of your final app that goes to the App Store, but is instead specifically for Xcode to use so it can show a preview of your UI design alongside your code.
///
///  These previews use an Xcode feature called the canvas, which is usually visible directly to the right of your code. You can customize the preview code if you want, and they will only affect the way the canvas shows your layouts – it won’t change the actual app that gets run.
struct BasicStructureOfSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        BasicStructureOfSwiftUI()
    }
}
