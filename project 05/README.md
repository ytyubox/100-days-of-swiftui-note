---
tags: 100daysOfSwiftUI
---
#  Day 29 ~ 31 Project 5 Word Scramble

link: https://www.hackingwithswift.com/books/ios-swiftui/word-scramble-introduction


## Introducing List, your best friend

List doc: https://developer.apple.com/documentation/swiftui/list


The job of `List` is to provide a scrolling table of data. In fact, it’s pretty much identical to `Form`, **except it’s used for presentation of data** rather than requesting user input. Don’t get me wrong: you’ll use **Form** quite a lot too, but really it’s just a specialized type of **List**.

> 進階閱讀:
>  [SwiftUI List & Form 的畫面差異 - 彼得潘的 Swift iOS App 開發問題解答集 - Medium](https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E5%95%8F%E9%A1%8C%E8%A7%A3%E7%AD%94%E9%9B%86/swiftui-list-form-%E7%9A%84%E7%95%AB%E9%9D%A2%E5%B7%AE%E7%95%B0-780522303c0f)


```swift
List
.listStyle(GroupedListStyle())
```

When working with an array of data, SwiftUI still needs to know h**ow to identify each row uniquely**, so if one gets removed it can simply remove that one rather than having to redraw the whole list. This is where the id parameter comes in, and it works identically in both `List` and `ForEach` – it lets us tell SwiftUI exactly what makes each item in the array unique.

## Loading resources from your app bundle

Not SwiftUI, Skipped. Visit https://www.hackingwithswift.com/books/ios-swiftui/loading-resources-from-your-app-bundle

## Working with strings
Not SwiftUI, Skipped. Visit 
https://www.hackingwithswift.com/books/ios-swiftui/working-with-

## Adding to a list of words

```swift
@State private var usedWords = [String]()

NavigationView
    VStack
        TextField
        List
            [Text]...
    .navigationBarTitle
```

TextField:
```swift

TextField("Enter your word", text: $newWord, onCommit: addNewWord)
.textFieldStyle(RoundedBorderTextFieldStyle())
.padding()
.autocapitalization(.none)
```

## Running code when our app launches

onAppear(perform: startGame)

## Validating words with UITextChecker

Not SwiftUI, Skipped. Visit 
https://www.hackingwithswift.com/books/ios-swiftui/validating-words-with-uitextchecker
