# psalm_91

This is a Flutter Firebase project used to test and debug iOS build issues related to Apple Silicon and Firebase SDK v11 compatibility.

---

## ❌ Build Issue

When building for iOS, the following error is encountered:

Error (Xcode): unsupported option '-G' for target 'arm64-apple-ios10.0'
Encountered error while building for device.


---

## 💻 Environment

- **Flutter version:** 3.22.1 (stable)
- **Firebase SDK:** v11 (configured via `flutterfire`)
- **Minimum iOS Deployment Target:** 13.0
- **Machine:** MacBook Air M4 (Apple Silicon)
- **Terminal:** Using Rosetta (`arch -x86_64`)
- **CocoaPods version:** 1.14.3 (installed under Rosetta)

---

## 📁 Project Structure

- Firebase set up via `flutterfire_cli`
- CocoaPods setup through `arch -x86_64 pod install`
- Podfile customized for iOS 13.0 and gRPC fixes
- Firebase packages: `firebase_core`, `firebase_auth`, `cloud_firestore`

---

## 🧪 Reproduction Steps

```bash
flutter clean
rm -rf ios/Pods ios/Podfile.lock pubspec.lock
flutter pub get
cd ios
arch -x86_64 pod install --repo-update
cd ..
flutter build ios --release --no-codesign

Help Needed

What is injecting the unsupported -G flag?
Is this related to a plugin, podspec, or build config?
Is there a workaround for Firebase iOS v11 + gRPC compatibility?

