#  Day 23 ~ 24


## Why does SwiftUI use structs for views?

In SwiftUI, all our views are trivial structs and are almost free to create. Think about it: if you make a struct that holds a single integer, the entire size of your struct is… that one integer. Nothing else. No surprise extra values inherited from parent classes, or grandparent classes, or great-grandparent classes, etc – they contain exactly what you can see and nothing more.

By producing views that don’t mutate over time, SwiftUI encourages us to move to a more functional design approach: our views become simple, inert things that convert data into UI, rather than intelligent things that can grow out of control.

## What is behind the main SwiftUI view?

Let me say this as clearly as I can: for SwiftUI developers, **there is nothing behind our view.** You shouldn’t try to make that white space turn red with weird hacks or workarounds, and you certainly shouldn’t try to reach outside of SwiftUI to do it.

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

## Conditional modifiers

## Environment modifiers

## Views as properties

## View composition

## Custom modifiers

## Custom containers


