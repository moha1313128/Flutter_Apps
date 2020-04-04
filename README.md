# flutter_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tutorial
https://github.com/ionicfirebaseapp/Flutter-firestore-auth
https://medium.com/flutterpub/flutter-how-to-do-user-login-with-firebase-a6af760b14d5
https://github.com/tattwei46/flutter_login_demo
https://flutterawesome.com/provides-login-screen-with-login-signup-functionalities/

## Get SHA1 from debug.keystore file
```
keytool -list -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android
```
## Create debug.keystore file again at the same location if required.
```
keytool -genkey -v -keystore debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000
```

## cmd
```
keytool -list -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android
```


