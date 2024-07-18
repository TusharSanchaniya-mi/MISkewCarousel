# MISKewCarousel for SwiftUI

The MISKewCarousel is a customizable SwiftUI component that provides carousel card layout view.

[![CI Status](https://img.shields.io/badge/swift-5.0-brightgreen)](https://img.shields.io/badge/swift-5.0-brightgreen)
[![Platform iOS](https://img.shields.io/badge/platform-iOS-red)](https://img.shields.io/badge/platform-iOS-red)
<a href="https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nikunjprajapati95/Reading-Animation&amp;utm_campaign=Badge_Grade"><img src="https://app.codacy.com/project/badge/Grade/44b16d6ddb96446b875d38bf2ec89b11"/></a>
<a href="https://github.com/TusharSanchaniya-mi/MISKewCarousel/blob/main/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/licence-MIT-orange">

## Requirements 🛠️

- iOS 17.0+
- Swift 5.8+
- SwiftUI

## Installation ⚙️

## Swift Package Manager

The [Swift Package Manager](https://www.swift.org/documentation/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding MISKewCarousel as a dependency is as easy as adding it to the dependencies value of your Package.swift or the Package list in Xcode.

```
dependencies: [
    .package(url: "https://github.com/TusharSanchaniya-mi/MISKewCarousel", .upToNextMajor(from: "1.0.0"))
]
```

## CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate MISKewCarousel into your Xcode project using CocoaPods, specify it in your Podfile:

```ruby
pod 'MISKewCarousel'
```

## Key Features: ✨

Smooth Animation: The carousel view provides smooth animation transitions of skew 3d effect.

Customizable: Easily customize the appearance of the card layout to match your app's branding and design aesthetic. Customize colors, icons, and tab bar item text to suit your needs.

Interactive: Users can tap on tab bar items to switch between different views quickly. The interactive nature of the component enhances usability and navigation within your app.

Responsive: The MISKewCarousel Tab is designed to be responsive and adapt to different screen sizes and orientations, ensuring consistent behavior across various devices.

## Example

```swift
import SwiftUI
import MISKewCarousel

struct ContainerView: View {

    var body: some View {
        VStack {
            MISKewCarousel(collection: .constant(Array(0..<20))) {
                VStack {
                    Text("Test")
                }
            }
        }
    }
}

```

## 🙋 Author

## [MindInventory](https://www.mindinventory.com/)

## 📱 Check out other lists of our Mobile UI libraries 🤩

<a href="https://github.com/Mindinventory?language=kotlin"> 
<img src="https://img.shields.io/badge/Kotlin-0095D5?&style=for-the-badge&logo=kotlin&logoColor=white"> </a>
<a href="https://github.com/Mindinventory?language=swift"> 
<img src="https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white"> </a>
<a href="https://github.com/Mindinventory?language=dart"> 
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"> </a>
<a href="https://github.com/Mindinventory/react-native-tabbar-interaction"> 
<img src="https://img.shields.io/badge/React_Native-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"> </a>

<br></br>

## 💻 Check out other lists of Web libraries 🤩

<a href="hhttps://github.com/Mindinventory?language=javascript"> 
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"></a>
<a href="https://github.com/Mindinventory?language=go"> 
<img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white"></a>
<a href="https://github.com/Mindinventory?language=python"> 
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"></a>

<br></br>

<h4><a href="https://www.mindinventory.com/whitepapers.php?utm_source=gthb&utm_medium=special&utm_campaign=folding-cell#demo"><u> 📝 Get FREE Industry WhitePapers →</u></a></h4>

## Check out our Work 📜

<a href="https://dribbble.com/mindinventory"> 
<img src="https://img.shields.io/badge/Dribbble-EA4C89?style=for-the-badge&logo=dribbble&logoColor=white" /> </a>
<br></br>

## 📄 License

MISKewCarousel is [MIT-licensed](/LICENSE).

If you use our open-source libraries in your project, please make sure to credit us and Give a star to www.mindinventory.com

<a href="https://www.mindinventory.com/contact-us.php?utm_source=gthb&utm_medium=repo&utm_campaign=swift-ui-libraries">
<img src="https://github.com/Sammindinventory/MindInventory/blob/main/hirebutton.png?raw=true" width="203" height="43"  alt="app development">
</a>
