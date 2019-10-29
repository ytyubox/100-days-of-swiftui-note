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


 
