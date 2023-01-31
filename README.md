# flutter_stt

## Overview
It is an app that turns speech into text using Flutter.  
Intended for use with Android and iOS smartphones.  
For more information on Flutter, please [click here](https://github.com/flutter/flutter).

## Getting Started
### 1. Use Git
- Clone this project.
  - `git clone https://github.com/wassy310/flutter_stt`
- Debug & Run
  - `flutter run`
### 2. Use Release
- [Download](https://github.com/wassy310/flutter_stt/releases)
  - Download the latest version
For more information on building a flutter runtime environment, please refer to [this page](https://docs.flutter.dev/get-started/install).

## Features
It has the ability to convert words recognized by the microphone as voice into text and display them on the screen.  
Using: Flutter- speech_to_text  
The introduction to this package states.  
> A library that exposes device specific speech recognition capability.This plugin contains a set of classes that make it easy to use the speech recognition capabilities of the underlying platform in Flutter. It supports Android, iOS and web. The target use cases for this library are commands and short phrases, not continuous spoken conversion or always on listening.
>
<img src="https://user-images.githubusercontent.com/74349349/215646173-2c2a4aa1-d0f6-4051-be23-d268e6955e15.png" width="300">
<img src="https://user-images.githubusercontent.com/74349349/215646195-87bac6fc-ed03-4468-b25c-ab1b4b57e3b2.png" width="300">

## Directory
Just the main ones.
```
.
├── android
|   └── .
├── assets
│   └── icon
|       └── icon01.png
├── ios
|   └── .
├── lib
│   ├── firebase_options.dart
│   ├── main.dart
│   └── settings.dart
├── web
|   └── .
└── pubspec.yaml
```
### android
This is a folder that is automatically created when you generate a Flutter project.  
It contains the configuration and source code for Android.

### assets
Stores data around assets related to the app.  
Images and json files containing information necessary for the application are often stored, but in this project, images of application icons are stored.

### ios
This is a folder that is automatically created when you generate a Flutter project.  
It contains the configuration and source code for iOS.

### lib
This folder manages product codes.
- firebase_options.dart  
This file contains the apiKey and other information necessary to handle Firebase.In addition, the methods of the classes in this file can be used to get the necessary information by conditional branching on the platform.
Calling this method at initialization time will access Firebase and initialize the Flutter project.

- main.dart  
This file is the highest level (entry point) of the application.  
This project implements the design and major movements of the application.  
It often does the following
  - Fix the screen vertically
  - Firebase initialization process
  - Loading env file
  - Setting the scope of riverpod  

- settings.dart  
This file implementing a settings screen in the application.

### web
This is a folder that is automatically created when you generate a Flutter project.  
It contains the configuration and source code for Web.

### pubspec.yaml
This file is used to set up the Project environment.

## Environments
|        |                           |
|  :-:   | ------------------------- |
| OS     | Windows 10 Pro            |
| IDE    | Visual Studio Code        |
| DEBUG  | Android 9                 |
| OTHERS | Flutter 3.9.9, Firebase   |

## Packages, Tools
- [speech_to_text](https://pub.dev/packages/speech_to_text)
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)
- [Firebase](https://firebase.google.com/)
- [firebase_crashlytics](https://firebase.google.com/docs/crashlytics)

## Author
[Wassy | Ryoga Washizawa](https://github.com/wassy310)

## LICENSE
[Apache-2.0 license](https://github.com/apache/.github/blob/main/LICENSE)

## Version
[Please see CHANGELOG](https://github.com/wassy310/flutter_stt/blob/master/CHANGELOG.md) or [Releases](https://github.com/wassy310/flutter_stt/releases)

## Contact
Bugs and feature requests please visit [GitHub Issues](https://github.com/wassy310/flutter_stt/issues).  
For less important matters, please contact us through the following means.
- Twitter
  - waaaa5267
- Discord
  - Account: Wassy#3241
  - Server: https://discord.gg/uAUrUnwAh9
