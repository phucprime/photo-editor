# iOSPhotoEditor

[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
[![iOS](https://img.shields.io/badge/iOS-9.0%2B-blue.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE.md)
[![CocoaPods](https://img.shields.io/badge/CocoaPods-compatible-red.svg)](https://cocoapods.org)
[![React Native](https://img.shields.io/badge/React%20Native-integration-61DAFB.svg)](https://github.com/phucprime/react-native-image-editor)

> A native iOS photo editing library — maintained as the core native dependency for [`@phucprime/react-native-image-editor`](https://github.com/phucprime/react-native-image-editor).

This is a maintained fork of [M-Hamed/photo-editor](https://github.com/M-Hamed/photo-editor), kept up-to-date and integrated as the underlying iOS layer for the React Native image editing bridge.

---

## Features

| Feature                                 | Status |
| --------------------------------------- | ------ |
| Crop & resize                           | ✅     |
| Freehand drawing with color picker      | ✅     |
| Text overlay with custom colors & fonts | ✅     |
| Sticker / image overlay support         | ✅     |
| Emoji overlays                          | ✅     |
| Scale & rotate objects via gestures     | ✅     |
| Delete objects                          | ✅     |
| Save to photos & share sheet            | ✅     |
| Smooth animations                       | ✅     |
| iOS Taptic Engine haptic feedback       | ✅     |

---

## Integration Context

This library is consumed as a native iOS pod inside the React Native package [`@phucprime/react-native-image-editor`](https://github.com/phucprime/react-native-image-editor). If you are using that package, **you do not need to install this pod manually** — it is pulled in transitively via the podspec dependency.

For standalone iOS native usage, follow the installation steps below.

---

## Requirements

- iOS 9.0+
- Swift 5.0+
- Xcode 13+
- CocoaPods

---

## Installation

### CocoaPods

Add the following to your `Podfile`, pointing directly to this fork:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'YourTargetName' do
  pod 'iOSPhotoEditor', :git => 'https://github.com/phucprime/photo-editor.git', :tag => '1.0.0'
end
```

Then install:

```bash
pod install
```

---

## Usage

### Present the Editor

```swift
import UIKit

let photoEditor = PhotoEditorViewController(
    nibName: "PhotoEditorViewController",
    bundle: Bundle(for: PhotoEditorViewController.self)
)

// Delegate
photoEditor.photoEditorDelegate = self

// Required: image to edit
photoEditor.image = image

// Optional: stickers the user can add
photoEditor.stickers = [
    UIImage(named: "sticker_1")!,
    UIImage(named: "sticker_2")!
]

// Optional: hide specific toolbar controls
photoEditor.hiddenControls = [.share]

// Optional: custom palette for drawing & text (defaults used if omitted)
photoEditor.colors = [.red, .blue, .green, .yellow, .white, .black]

present(photoEditor, animated: true)
```

### Delegate

Conform your view controller to `PhotoEditorDelegate`:

```swift
extension ViewController: PhotoEditorDelegate {

    func doneEditing(image: UIImage) {
        // Handle the edited UIImage — persist, upload, or pass back to the React Native bridge
    }

    func canceledEditing() {
        dismiss(animated: true)
    }
}
```

### Available Controls

Pass these enum values to `hiddenControls` to remove them from the toolbar:

| Value      | Description            |
| ---------- | ---------------------- |
| `.crop`    | Crop tool              |
| `.draw`    | Freehand drawing       |
| `.text`    | Text overlay           |
| `.save`    | Save to camera roll    |
| `.share`   | Share sheet            |
| `.sticker` | Sticker / emoji picker |

---

## Architecture Overview

```
iOSPhotoEditor/
├── PhotoEditorViewController           # Main editor entry point
├── PhotoEditor+Controls                # Toolbar control bindings
├── PhotoEditor+Crop                    # Crop logic
├── PhotoEditor+Drawing                 # Canvas drawing layer
├── PhotoEditor+Font                    # Font picker
├── PhotoEditor+Gestures                # Pan / pinch / rotate recognizers
├── PhotoEditor+Keyboard                # Keyboard avoidance
├── PhotoEditor+StickersViewController  # Sticker sheet presentation
├── PhotoEditor+UITextView              # Text overlay handling
├── CropView / CropViewController       # Dedicated crop UI
├── StickersViewController              # Sticker collection sheet
├── GradientView                        # Background gradient
└── UIImage+Crop / UIImage+Size         # Image utility extensions
```

---

## Preview

<img src="Assets/screenshot.PNG" width="320" />

---

## Changelog

### 1.0.0

- Initial fork from [M-Hamed/photo-editor](https://github.com/M-Hamed/photo-editor)
- Metadata updated for `@phucprime` ownership
- Podspec source pointed to this fork
- README rewritten for professional standalone + React Native integration use

---

## Related

- [`@phucprime/react-native-image-editor`](https://github.com/phucprime/react-native-image-editor) — React Native bridge package that consumes this library as its native iOS layer

---

## Original Author

Originally written by [Mohamed Hamed](https://github.com/M-Hamed).  
Forked and maintained by [@phucprime](https://github.com/phucprime).

---

## License

Released under the [MIT License](LICENSE.md).
