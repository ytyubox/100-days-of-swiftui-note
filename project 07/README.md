---
tags: 100daysOfSwiftUI
---
#  Day 36 ~ 38 – Project :7 iExpense



## Why @State only works with structs

```swift
struct User {

class User {
```
it doesn’t work any more. Sure, we can type into the text fields just like before, but the text view above doesn’t change.

When we use @State, we’re asking SwiftUI to watch a property for changes. So, if we change a string, flip a Boolean, add to an array, and so on, the property has changed and SwiftUI will re-invoke the body property of the view.

```swift
@ObservedObject
```
## Sharing SwiftUI state with @ObservedObject
```swift
class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}
```
## Showing and hiding views

```swift
struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}
```

Sheet dismiss self
```swift
@Environment(\.presentationMode) var presentationMode

Button("Dismiss") {
    self.presentationMode.wrappedValue.dismiss()
}
```
## Deleting items using onDelete()

```swift
NavigationView
    VStack
        ForEach
            Text
        .onDelete(perform: removeRows)
    .navigationBarItems(leading: EditButton())
```
## Storing user settings with UserDefaults

```swift
@State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
```

這太麻煩了, 可以參考 [ytyubox/StateDefaults](https://github.com/ytyubox/StateDefaults)

## Archiving Swift objects with Codable
```swift
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
@ObservedObject var expenses = Expenses()
```

Everytime the `@Publshed` changed, `body:som View` can get notification from `@ObservedObject`.

## Building a list we can delete from
並不建議使用 `Array<T>.indices`, 實測會導致 index out of range(隨機)
```swift
ForEach(expenses.items, id: \.name) { item in
    Text(item.name)
}
.onDelete(perform: removeItems)
```
## Working with Identifiable items in SwiftUI

```swift
struct ExpenseItem: Identifiable {
    let id = UUID() // id from Identifiable
    let name: String
    let type: String
    let amount: Int
}

ForEach(expenses.items, /* id: \.name 自動 id*/) { item in
    Text(item.name)
}
```

## Sharing an observed object with a new view
```swift
struct AddView: View {
    @ObservedObject var expenses: Expenses

    var body: some View {
      ...
    }
}


// ContentView

.sheet(isPresented: $showingAddExpense) {
    AddView(expenses: self.expenses)
}
```
## Making changes permanent with UserDefaults
## Final polish

```swift
@Published var items: [ExpenseItem] {
    didSet {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(items) {
            UserDefaults.standard.set(encoded, forKey: "Items")
        }
    }
}
```
