---
tags: 100daysOfSwiftUI
---
#  Day 23 ~ 24 - Project 3 technique project

link: https://www.hackingwithswift.com/100/swiftui/23

## Why does SwiftUI use structs for views?

In SwiftUI, all our views are trivial structs and are almost free to create. Think about it: if you make a struct that holds a single integer, the entire size of your struct is… that one integer. Nothing else. No surprise extra values inherited from parent classes, or grandparent classes, or great-grandparent classes, etc – they contain exactly what you can see and nothing more.

By producing views that don’t mutate over time, SwiftUI encourages us to move to a more functional design approach: our views become simple, inert things that convert data into UI, rather than intelligent things that can grow out of control.
![](https://i.imgur.com/2FWlwqY.png)

![](https://i.imgur.com/Umic8Dk.png)


## What is behind the main SwiftUI view?

Let me say this as clearly as I can: for SwiftUI developers, **there is nothing behind our view.** You shouldn’t try to make that white space turn red with weird hacks or workarounds, and you certainly shouldn’t try to reach outside of SwiftUI to do it.
![](https://i.imgur.com/f6MtIv5.png)

這個範例 resize Text, 使得 Text 的範圍變大
```swift
Text("Hello World")
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.red)
    .edgesIgnoringSafeArea(.all)
```
## Why modifier order matters
```swift
Button("Hello World") {
    print(type(of: self.body))
}    
.background(Color.red)
.frame(width: 200, height: 200)
```
Swift’s `type(of:)` method prints the exact type of a particular value, and in this instance it will print the following: `ModifiedContent<ModifiedContent<Button<Text>, _BackgroundModifier<Color>>, _FrameLayout>`

```swift
Text("Hello World")
    .padding()
    .background(Color.red)
    .padding()
    .background(Color.blue)
    .padding()
    .background(Color.green)
    .padding()
    .background(Color.yellow)
```

## Why does SwiftUI use “some View” for its view type?
What some View lets us do is say “this will return one specific type of view, such as Button or Text, but I don’t want to say what.” 

Further: 
Well, if you create a VStack with two text views inside, SwiftUI silently creates a TupleView to contain those two views – a special type of view that holds exactly two views inside it. So, the VStack fills the “what kind of view is this?” with the answer “it’s a TupleView containing two text views.”
```swift
TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)>
```
## Conditional modifiers
```swift
var body: some View {
    if self.useRedText {
        return Text("Hello World")
    } else {
        return Text("Hello World")
            .background(Color.red)
    }
}
```

Remember, `some View` means “one specific type of View will be returned, but we don’t want to say what.” Because of the way SwiftUI creates new views using generic ModifiedContent wrappers, `Text(…)` and `Text(…).background(Color.red)` are different underlying types and that isn’t compatible with some View.

## Environment modifiers
```swift
VStack {
    Text("Gryffindor")
    Text("Hufflepuff")
    Text("Ravenclaw")
    Text("Slytherin")
}
.font(.title)
```

```swift
VStack {
    Text("Gryffindor")
        .font(.largeTitle)
    Text("Hufflepuff")
    Text("Ravenclaw")
    Text("Slytherin")
}
.font(.title)
```
There, `font()` is an environment modifier, which means the Gryffindor text view can override it with a custom font.

但是 regular modifier 如 `blur()` 是加上, 而不是取代

## Views as properties

```swift
let motto1 = Text("Draco dormiens")
var motto1: some View { Text("Draco dormiens") }
```

## View composition
將 View 封裝
```swift
struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}
```
## Custom modifiers

使用 ViewModifier 來處理
其中 `func body(content:) -> some View` 為出發點
```swift
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
```
## Custom containers
介紹 `ViewBuilder` 使 ViewMaker 可以自動壓縮

```swift

struct GridStack<Content: View>: View {
    let ...
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
     ...
    }
    
    var body: some View {
        // ...
    }
}
