---
tags: 100daysOfSwiftUI
---
#  Day 26 ~ 28 Project 4 Better Rest
link: https://www.hackingwithswift.com/books/ios-swiftui/betterrest-introduction

## Entering numbers with Stepper
Stepper doc: https://developer.apple.com/documentation/swiftui/stepper

```swift
Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
    Text("\(sleepAmount, specifier: "%.2f") hours")
}
```

## Selecting dates and times with DatePicker

DatePicker doc:
https://developer.apple.com/documentation/swiftui/datepicker

```swift
@State var wakeup = Date()
DatePicker("Please enter a date", selection: $wakeUp)
    .labelsHidden()
    
DatePicker("Please enter a date", selection: $wakeUp, in: Date()...)
/// That will allow all dates in the future, but none in the past – read it as “from the current date up to anything.”
```

## Working with dates

make the date
```swift
var components = DateComponents()
components.hour = 8
components.minute = 0
let date = Calendar.current.date(from: components)
```

get the date's componets
```swift
let components = Calendar.current.dateComponents([.hour, .minute], from: someDate)
let hour = components.hour ?? 0
let minute = components.minute ?? 0
```

get the date string
```swift
let formatter = DateFormatter()
formatter.timeStyle = .short
let dateString = formatter.string(from: Date())
```


## Training a model with Create ML

Not SwiftUI, skipped
To Learn, visiting https://www.hackingwithswift.com/books/ios-swiftui/training-a-model-with-create-ml

## Building a basic layout
```
NavigationView
    VStack
        Text
        DatePicker
        Text
        Stepper
        Text
        Stepper
    .navigationBarTitle("BetterRest")
    .navigationBarItems(trailing:
        Button)
```    
    
## Connecting SwiftUI to Core ML

Not SwiftUI, skipped
To Learn, visiting https://www.hackingwithswift.com/books/ios-swiftui/connecting-swiftui-to-core-ml

## Cleaning up the user interface

```
NavigationView
    Form
        Text
        DatePicker
            .labelsHidden()
            .datePickerStyle(WheelDatePickerStyle())
        Text
        Stepper
            Text
        Text
        Stepper
            Text
    .navigationBarTitle("BetterRest")
    .navigationBarItems(trailing:
        Button)
```
