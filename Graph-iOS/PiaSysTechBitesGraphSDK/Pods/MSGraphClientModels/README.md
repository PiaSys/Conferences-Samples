# Microsoft Graph Models SDK 


Get started with the Microsoft Graph Models SDK for ObjectiveC by integrating it into your iOS and MacOS applications!



## Installation


### Using CocoaPods

You can use [CocoaPods](https://cocoapods.org/) to remain up to date with our latest version. Include the following line in your podfile:
  ``` 
   pod 'MSGraphClientModels'
  ```


### Using Carthage



You can also chose to use [Carthage](https://github.com/Carthage/Carthage) for package management.



1. Install Carthage on your Mac using a download from their website or if using Homebrew `brew install carthage`.

2. You must create a `Cartfile` that lists the MSGraphClientSDK library for this project on Github.



```

github "microsoftgraph/msgraph-sdk-objc-models" "master"

```



3. Run `carthage update`. This will fetch dependencies into a `Carthage/Checkouts` folder, then build the MSGraphClientModels library.

4. On your application target's “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop the `MSGraphClientModels.framework` from the `Carthage/Build` folder on disk.

5. On your application target's “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase”. Create a Run Script in which you specify your shell (ex: `/bin/sh`), add the following contents to the script area below the shell:



```sh

/usr/local/bin/carthage copy-frameworks

```



and add the paths to the frameworks you want to use under “Input Files”, e.g.:



```

$(SRCROOT)/Carthage/Build/iOS/MSGraphClientModels.framework

```

This script works around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) triggered by universal binaries and ensures that necessary bitcode-related files and dSYMs are copied when archiving.



With the debug information copied into the built products directory, Xcode will be able to symbolicate the stack trace whenever you stop at a breakpoint. This will also enable you to step through third-party code in the debugger.



When archiving your application for submission to the App Store or TestFlight, Xcode will also copy these files into the dSYMs subdirectory of your application’s `.xcarchive` bundle.


## How to use SDK
 
 While de-serializing the data, you just call initializer of the appropriate model class with the relevant data.

 For example, MSGraphUser object can be initialized in following manner:
```
 NSError *error;
 MSGraphUser *user = [[MSGraphUser alloc] initWithData:data error:&error];
```

And to get serialized data, you need to call getSerializedData on the model instance.

For example, you can get serialized data from a user object in following manner:

```
NSData *userData = [user getSerializedDataWithError:&error];
```
