# Personal Portfolio

[Web Demo](https://mohamedibrahim.surge.sh/)

![screenshot](https://user-images.githubusercontent.com/26859947/121120957-a9ce2200-c7ec-11eb-93bf-debf2805bcca.png)

## Project Slides
[Slides](https://drive.google.com/file/d/1_gef3IUNgt25cnYvB_vA3YqavjdqoMVY/view?usp=sharing)

## Dependencies
```yaml
dependencies:
  animated_text_kit: ^4.2.1
  flutter:
    sdk: flutter
  font_awesome_flutter: ^9.0.0
  url_launcher: ^6.0.4

dev_dependencies:
  flutter_launcher_icons: ^0.9.0
  flutter_native_splash: ^1.1.8+4
  flutter_test:
    sdk: flutter
  lint: ^1.0.0

flutter_icons:
  android: "launcher_icon"
  ios: true
  remove_alpha_ios: true
  image_path: "assets/images/logo.png"
  adaptive_icon_background: "assets/images/logo.png"
  adaptive_icon_foreground: "assets/images/logo.png"

flutter_native_splash:
  color: "#FFFFFF"
  image: "assets/images/logo.png"
  android: true
  ios: true
```

## Configuring assets
```yaml
  assets:
    - assets/images/
    - assets/badges/
    - assets/projects/

  fonts:
    - family: FiraCode
      fonts:
        - asset: assets/fonts/FiraCode/FiraCode-Light.ttf
        - asset: assets/fonts/FiraCode/FiraCode-Medium.ttf
        - asset: assets/fonts/FiraCode/FiraCode-Regular.ttf
        - asset: assets/fonts/FiraCode/FiraCode-SemiBold.ttf
        - asset: assets/fonts/FiraCode/FiraCode-Bold.ttf
```

## HalalHacks Workshop

### Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter

  font_awesome_flutter: ^9.1.0
  url_launcher: ^6.0.6
```

### Assets and fonts
```yaml
  assets:
    - assets/images/
    - assets/badges/

  fonts:
    - family: FiraCode
      fonts:
        - asset: assets/fonts/FiraCode/FiraCode-Light.ttf
        - asset: assets/fonts/FiraCode/FiraCode-Medium.ttf
        - asset: assets/fonts/FiraCode/FiraCode-Regular.ttf
        - asset: assets/fonts/FiraCode/FiraCode-SemiBold.ttf
        - asset: assets/fonts/FiraCode/FiraCode-Bold.ttf
```

### url_launcher configuration

iOS (info.plist)
```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>https</string>
  <string>http</string>
</array>
```

Android (AndroidManifest.xml)
```
 <queries>
    <intent>
        <action android:name="android.intent.action.VIEW" />
        <data android:scheme="https" />
    </intent>
  </queries>
```

### Code 

main.dart
```dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const kDarkGrey = Color(0xFF262D40);
const kBlueColor = Color(0xFF2980B9);

void main() {
  runApp(
    Portfolio(),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  Future<void> _openUrl(String url) async {
    final isLaunchable = await canLaunch(url);
    if (isLaunchable) {
      launch(url);
    }
  }

  Widget _renderLinks() {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: [
        IconButton(
          onPressed: () => _openUrl("https://www.linkedin.com"),
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            color: kBlueColor,
          ),
        ),
        IconButton(
          onPressed: () => _openUrl("https://www.github.com"),
          icon: const FaIcon(
            FontAwesomeIcons.github,
            color: kBlueColor,
          ),
        ),
        IconButton(
          onPressed: () => _openUrl("https://www.instagram.com"),
          icon: const FaIcon(
            FontAwesomeIcons.instagram,
            color: kBlueColor,
          ),
        ),
        IconButton(
          onPressed: () => _openUrl("https://www.facebook.com"),
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: kBlueColor,
          ),
        ),
        IconButton(
          onPressed: () => _openUrl("https://www.twitter.com"),
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            color: kBlueColor,
          ),
        ),
      ],
    );
  }

  Widget _renderBadges() {
    const technologies = [
      'typescript',
      'javascript',
      'react',
      'flutter',
      'dart',
      'polymer',
      'java',
      'swift',
      'python',
      'ruby',
      'php',
      'graphql',
      'mongo',
      'firebase',
    ];
    return Wrap(
      alignment: WrapAlignment.center,
      children: technologies
          .map(
            (technology) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/badges/$technology.png",
                      width: 48,
                    ),
                    Text(technology),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'FiraCode',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Mohamed Ibrahim',
            style: TextStyle(
              color: kDarkGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 32.0),
                Image.asset(
                  'assets/images/profile-pic.png',
                  width: 200,
                ),
                const SizedBox(height: 24.0),
                Container(
                  constraints: BoxConstraints(maxWidth: 800),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const Text(
                        "Hello World, I'm Mohamed",
                        style: TextStyle(
                          color: kDarkGrey,
                          fontSize: kIsWeb ? 22.0 : 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'A software Engineer passionate about building web and mobile applications',
                        style: TextStyle(
                          color: kDarkGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: kIsWeb ? 28.0 : 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16.0),
                      _renderLinks(),
                      const SizedBox(height: 16.0),
                      _renderBadges(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```
