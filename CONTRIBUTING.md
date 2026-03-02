# Contributing to iOSPhotoEditor

Thank you for your interest in contributing. This library is maintained by [@phucprime](https://github.com/phucprime) as the native iOS dependency for [`@phucprime/react-native-image-editor`](https://github.com/phucprime/react-native-image-editor).

---

## Scope

This repo focuses on **native iOS functionality only**. React Native bridge work belongs in the [react-native-image-editor](https://github.com/phucprime/react-native-image-editor) repo.

In-scope contributions:

- Bug fixes in existing editor features (crop, drawing, text, stickers)
- Performance and memory improvements
- Swift version compatibility updates
- Accessibility improvements

Out-of-scope:

- React Native / JavaScript bridge code
- New UI/UX paradigms that break the existing API surface

---

## Getting Started

1. Fork this repository
2. Clone your fork and open the workspace:

```bash
git clone https://github.com/<your-username>/photo-editor.git
cd photo-editor/Example
pod install
open Example.xcworkspace
```

3. Create a feature branch:

```bash
git checkout -b fix/your-fix-description
```

4. Make your changes and run the Example app to verify behavior.

---

## Code Style

- Swift 5.0, targeting iOS 9.0+
- Follow existing file organization (`PhotoEditor+<Feature>.swift` extension pattern)
- No third-party dependencies — this library must remain dependency-free
- Prefer `guard` early exits over deeply nested `if` blocks
- Use `// MARK: -` sections to organize code within files

---

## Commit Messages

Use the [Conventional Commits](https://www.conventionalcommits.org/) format:

```
fix(drawing): resolve canvas flicker on iOS 17
feat(crop): add aspect ratio lock option
chore: update podspec swift version
```

---

## Pull Request Process

1. Ensure the Example app builds and runs without warnings on the latest Xcode
2. Describe **what** changed and **why** in the PR description
3. Reference any related issue with `Closes #<issue-number>`
4. PRs that break the public `PhotoEditorDelegate` API require a major version bump discussion

---

## Reporting Issues

Please use the GitHub issue tracker. Include:

- iOS version and device/simulator
- Xcode version
- Minimal reproduction steps or sample code
- Expected vs actual behaviour

---

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE.md).
