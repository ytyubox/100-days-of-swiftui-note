---
tags: 100daysOfSwiftUI
---
#  Day 32 ~ 34 Project 6 technique project: Animation

link: https://www.hackingwithswift.com/100/swiftui/32


## Creating implicit animations
In SwiftUI, the simplest type of animation is an implicit one: we tell our views ahead of time “if someone wants to animate you, here’s how you should respond”, and nothing more. SwiftUI will then take care of making sure any changes that do occur follow the animation you requested. In practice this makes animation trivial – it literally could not be any easier.

```swift
Button("Tap Me") {
    self.animationAmount += 1
}
.padding(50)
.background(Color.red)
.foregroundColor(.white)
.clipShape(Circle())
.scaleEffect(animationAmount)
.animation(.default)
.blur(radius: (animationAmount - 1) * 3)
```

## Customizing animations in SwiftUI
animation doc: 
https://developer.apple.com/documentation/swiftui/stepper/3275804-animation
```swift
static let `default`: Animation
static var easeIn: Animation
static var easeInOut: Animation
static var easeOut: Animation
static var linear: Animation
```
and some more Static func

## Animating bindings

太神奇了, 我不知道怎麼解釋

```swift
Stepper("Scale amount", value: $animationAmount.animation(
    Animation.easeInOut(duration: 1)
        .repeatCount(3, autoreverses: true)
), in: 1...10)
```
## Creating explicit animations

```swift
.rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
```

改值並動畫!

```swift
withAnimation {
    self.animationAmount += 360
}
```
## Controlling the animation stack
## Animating gestures
## Showing and hiding views with transitions
## Building custom transitions using ViewModifier
