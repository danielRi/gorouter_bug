# Go router Safari swipe-to-back bug

## To reproduce the bug

1. Build and run as **target web**
2. Open a iPhone emulator, I used older iPhone SE (3rd Generation) with iOS 16.2
3. Open Safari one iPhone emulator
4. After Chrome is loaded with the app, copy the URL into the Safari browser of the iPhone emulator to show the app there
5. Navigate to a sub route
6. Swipe back: **Important: ** Start swipe from left of the screen, **not** within the screen
7. Below page is shown twice. (See screenshot/gif)

### Expected behavior

Just the previous page is shown, without flickering or any animation triggered.