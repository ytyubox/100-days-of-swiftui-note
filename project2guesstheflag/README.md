#  Guess the flag
resource: https://www.hackingwithswift.com/100/swiftui/20

## Part 1 six topics to work through, and you’ll meet VStack, Image, Alert, and more.

1. Guess the Flag: Introduction
1. Using stacks to arrange views
1. Colors and frames
1. Gradients
1. Buttons and images	
1. Showing alert messages


## Part 1 day 20
<details><summary>1. ZStack orders</summary>
<p>

ZStack doesn’t have the concept of spacing because the views overlap, but it does have alignment. So, if you have one large thing and one small thing inside your ZStack, you can make both views align to the top like this: ZStack(alignment: .top) {.

ZStack draws its contents from top to bottom, back to front. This means if you have an image then some text ZStack will draw them in that order, placing the text on top of the image.

</p>
</details>

<details><summary>2. Color in safe area</summary>
<p>

It is critically important that no important content be placed outside the safe area, because it might be hard if not impossible for the user to see. Some views, such as List, allow content to scroll outside the safe area but then add extra insets so the user can scroll things into view.

If your content is just decorative – like our background color here – then extending it outside the safe area is OK.

</p>
</details>
 
