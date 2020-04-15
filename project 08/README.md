---
tags: 100daysOfSwiftUI
---
#  Day 39 ~ 42 – Project 8 Moonshot


topic: Codable, List, Text, GeometryReader, ScrollView V.S. List, NavigationLink, buttonStyle, layoutPriority

link: https://chrome.google.com/webstore/detail/jitsi-meetings/kglhbbefdnlheedjiejgomgmfplipfeb/related



## Resizing images to fit the screen using GeometryReader
```
Image
.resizable
.aspectRatio(contentMode: .fit)
```
```swift

VStack {
    GeometryReader { geo:GeometryProxy in
        Image("Example")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: geo.size.width, height: 300)
    }
}
```
## How ScrollView lets us work with scrolling data

```swift
ScrollView(.vertical) {
    VStack(spacing: 10) {
        ForEach(0..<100) {
            Text("Item \($0)")
                .font(.title)
        }
    }
    .frame(maxWidth: .infinity)
}
```

ScrollView will create all view at first, but List will create element once it's onAppear

## Pushing new views onto the stack using ## NavigationLink

```swift
NavigationView
    VStack
        NavigationLink<Text>
            ->Text("Hello World")
    .navigationBarTitle("SwiftUI")
```

## Working with hierarchical Codable data

Not SwiftUI. Nested Codable struct https://www.hackingwithswift.com/100/swiftui
## Loading a specific kind of Codable data
Not SwiftUI. Loading Data from XCode Project(Bundle)
https://www.hackingwithswift.com/books/ios-swiftui/loading-a-specific-kind-of-codable-data
## Using generics to load any kind of Codable data
Not SwiftUI. Generic for Codable.
https://www.hackingwithswift.com/books/ios-swiftui/using-generics-to-load-any-kind-of-codable-data

## Formatting our mission view
```swift
NavigationView 
    List(missions) 
        NavigationLink(destination: Text("Detail view")) 
            Image(mission.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 44, height: 44)

            VStack(alignment: .leading) {
                Text(mission.displayName)
                    .font(.headline)
                Text(mission.launchDate ?? "N/A")
            }
        }
    }
    .navigationBarTitle("Moonshot")
}
```
using Computed varible for quick result
```
var formattedLaunchDate: String {
    if let launchDate = launchDate {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: launchDate)
    } else {
        return "N/A"
    }
}
```
## Showing mission details with ScrollView and GeometryReader

```swift
struct MissionView: View {
    let mission: Mission

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.7)
                        .padding(.top)

                    Text(self.mission.description)
                        .padding()

                    Spacer(minLength: 25)
                }
            }
        }
        .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
    }
}
```

and it's Previews
```swi
struct MissionView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")

    static var previews: some View {
        MissionView(mission: missions[0])
    }
}
```
## Merging Codable structs using first(where:)


Not SwiftUI. 

`Array<T>.frist(where:)` 
https://www.hackingwithswift.com/books/ios-swiftui/merging-codable-structs-using-firstwhere


## Fixing problems with buttonStyle() and layoutPriority()

![](https://i.imgur.com/PpEt40R.png)
使用 ButtonStyle 修改 Button
`.buttonStyle(PlainButtonStyle())`

![](https://i.imgur.com/N2T4nJo.png)
使用 LayoutPriority

```swift
Text(self.astronaut.description)
    .padding()
    .layoutPriority(1)
```
