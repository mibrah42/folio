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
