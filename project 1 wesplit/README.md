#  Day 16~18 Wesplit

https://www.hackingwithswift.com/100/swiftui/16


This project is a check-sharing app that calculates how to split a check based on the number of people and how much tip you want to leave. 


## Part 1 - Day 16
<details><summary>1. File structure</summary>
<p>

* AppDelegate.swift contains code for managing your app. It used to be common to add code here, but these days it’s quite rare.
* SceneDelegate.swift contains code for launching one window in your app. This doesn’t do much on iPhone, but on iPad – where users can have multiple instances of your app open at the same time – this is important.
* ContentView.swift contains the initial user interface (UI) for your program, and is where we’ll be doing all the work in this project.
* Assets.xcassets is an asset catalog – a collection of pictures that you want to use in your app. You can also add colors here, along with app icons, iMessage stickers, and more.
* LaunchScreen.storyboard is a visual editor for creating a small piece of UI to show when your app is launching.
* Info.plist is a collection of special values that describe to the system how your app works – which version it is, which device orientations you support, and more. Things that aren’t code, but are still important.
* Preview Content is a yellow group, with Preview Assets.xcassets inside – this is another asset catalog, this time specifically for example images you want to use when you’re designing your user interfaces, to give you an idea of how they might look when the program is running.

</p>
</details>

<details><summary> 2.  tips: Automatic preview updating paused </summary>
<p>

Very often you’ll find that an error in your code stops Xcode’s canvas from updating – you’ll see something like “Automatic preview updating paused”, and can press Resume to fix it. As you’ll be doing this a lot, let me recommend an important shortcut: `Option+Cmd+p` does the same as clicking Resume.

</p>
</details>
<details><summary>3. body mutate self? </summary>
<p>

`var body: some View {...}` can't mutate self, and the `View` protocol is limiting follower should be struct, therefore you must use `@State` or other to handle property  state change.

</p>
</details>

key point: views are a function of their state.

## Part 2 - Day 17 

<details><summary>1. TextField be aware of pasting</summary>
<p>

doesn’t stop users from entering other values, like paste or hardware keyboard.
```swift
TextField(...).keyboardType(.decimalPad)
```

</p>
</details>

<details><summary>2. string with format</summary>
<p>

```swift
"$\(1.111111, specifier: "%.2f")" // 1.11
```

</p>
</details>
