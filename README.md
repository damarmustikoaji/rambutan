# rambutan
Proyek belajar Robot Framework x Appium untuk Android Apps

# tested
- macOS Big Sur Version 11.6.1
- Appium Server GUI Version 1.22.0 / https://github.com/appium/appium-desktop/releases
- Appium Inspector Version: 2021.12.2 / https://github.com/appium/appium-inspector/releases
- Java Version 1.8.0 / https://www.java.com/en/download/
- Android SDK / https://developer.android.com/studio
- PyCharm 2021.2 (Community Edition) https://www.jetbrains.com/pycharm/

# preconditions
- APK https://apkpure.com/id/dagangan-stok-toko-kelontong-sembako-grosir/com.dagangan.store
- appPackage: com.dagangan.mall
- appActivity: com.dagangan.MainActivity
- adb devices: https://www.xda-developers.com/install-adb-windows-macos-linux/
- apk info: https://apk-info-kenumir.en.aptoide.com/app

# how to use
- open Appium Server GUI (advanced: localhost, 4723, Allow CORS) and Edit Configurations (ANDROID_HOME & JAVA_HOME)
- open Appium Inspector (localhost, /wd/hub, 4723) and Desired Capabilities

```
{
  "platformName": "android",
  "appium:platformVersion": "os version android device",
  "appium:deviceName": "nama android device",
  "appium:automationName": "UiAutomator2",
  "appium:appPackage": "com.dagangan.mall",
  "appium:app": "path/dagangan.apk"
}
```

- clone this proyeks
- open proyeks on PyCharm editor

# run
- robot tests/test.robot
