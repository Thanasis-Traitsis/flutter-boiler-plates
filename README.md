# Flutter Boilerplate Repository

![alt text](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/Header_Image.png)

This repository provides a Flutter boilerplate project with a predefined code structure, including folder organization and assets. Use this project as a starting point for your Flutter applications.

## Table of Contents

1. [Project Structure](#project-structure)
2. [Getting Started](#getting-started)
    - [Assets](#assets)
    - [Dependencies](#dependencies)
3. [Boilerplate Examples](#boilerplate-examples)
    - [No Login-Sign Up or Navbar](#no-login-sign-up-or-navbar)
    - [Bottom Navbar Only](#bottom-navbar-only)
    - [Login-Sign Up without Navbar](#login-sign-up-without-navbar)
    - [Login-Sign Up with Navbar](#login-sign-up-with-navbar)

## Project Structure

The project follows a well-organized structure to promote maintainability and scalability:

```
📦lib
 ┗ 📂config
    ┗ 📂routes
    ┗ 📂themes
 ┗ 📂core
    ┣ 📂constants
    ┣ 📂usecases
    ┣ 📂utils
    ┗ 📂widgets
 ┗ 📂features
    ┗ 📂feature_example
      ┣ 📂data
      ┣ 📂domain
      ┗ 📂presentation
        ┣ 📂(state-manager)
        ┣ 📂pages
        ┗ 📂widgets
```

- **config**: Configuration files, including routes and themes.
- **core**: Core functionalities and utilities used throughout the app.
- **features**: Application features organized by screens or modules.

## Getting Started

To start a new project using this boilerplate, follow these steps:

### Assets

Download the assets folder, and insert it in your root directory of your project.
There, you can set all the images that you want to use in your app, and the font family of your preference.

### Dependencies

1. Add the required packages to your `pubspec.yaml` file:

   ```
   dependencies:
     flutter:
       sdk: flutter
     # Add other dependencies here
     ```
     
    **Required Packages :**
    - [go_router](https://pub.dev/packages/go_router/install)
    
    *if your app needs internet connection, you can download*
    [connectivity_plus](https://pub.dev/packages/connectivity_plus/install)
    *and then uncomment the files below :*
    ```
    - network_helper.dart
    - listen_to_connectivity.dart
    ```
    *and, the functionality at main.dart*


2. Add the required code in your 'pubspec.yaml' file, to make use of your assets folder

   ```
    assets:
      - ./assets/images/

    fonts:
      - family: Manrope
        fonts:
          - asset: assets/fonts/Manrope-Regular.ttf
          - asset: assets/fonts/Manrope-Medium.ttf
            weight: 500
          - asset: assets/fonts/Manrope-Bold.ttf
            weight: 700
    ```

 Run flutter pub get to install the dependencies.
 
 ## Boilerplate Examples
 
There are four distinct boilerplate templates tailored to cater to various application requirements:

1. **No Login/Sign Up or Bottom Navbar:** This boilerplate template does not include either login/sign-up features or a bottom navigation bar, offering a clean and minimalistic starting point for your application.

2. **Bottom Navbar Only:** In this template, you'll find a bottom navigation bar for easy navigation, but there are no login or sign-up components.

3. **Login/Sign Up without Bottom Navbar:** This template provides login and sign-up features but omits the use of a bottom navigation bar.

4. **Login/Sign Up with Bottom Navbar:** This template includes both login and sign-up functionalities, along with a bottom navigation bar.

| Template Name                | Login/Sign Up | Bottom Navbar |
|------------------------------|---------------|---------------|
| No Login-Sign Up or Navbar   | No            | No            |
| Bottom Navbar Only           | No            | Yes           |
| Login-Sign Up without Navbar | Yes           | No            |
| Login-Sign Up with Navbar    | Yes           | Yes           |



All you have to do, is download the lib folder and replace it with the one in your project.

### No Login-Sign Up or Navbar

This boilerplate provides the best starting point of a simple app. With clean architecture, you can easily transform your app and scale it as much as you want.

|   Home Page (First Screen)   |   Second Page   |
|:-----------------------:|:-----------------------:|
| ![Image 1](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/no-login-no-navbar/homepage_1.png) | ![Image 1](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/no-login-no-navbar/secondpage_1.png)|

### Bottom Navbar Only

This boilerplate provides the best starting point of a simple app with bottom navigation bar. With clean architecture, you can easily transform your app and scale it as much as you want.

|   Home Page (First Screen)   |   Second Page   |
|:-----------------------:|:-----------------------:|
| ![Image 1](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/bottom-navbar-only/homepage_2.png) | ![Image 1](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/bottom-navbar-only/secondpage_2.png)|

### Login-Sign Up without Navbar

In this advanced boilerplate, the 'lib' folder has been significantly enhanced, boasting the addition of two new screens and a carefully curated selection of additional packages. This implementation includes comprehensive Login and Signup functionalities, powered by the Bloc state management architecture. This dynamic approach allows your app to seamlessly respond to user inputs within the text fields, offering a solid foundation for building complex and scalable applications.

**Extra Required Packages :**
- [bloc](https://pub.dev/packages/bloc/install)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc/install)
- [equatable](https://pub.dev/packages/equatable/install)
- [http](https://pub.dev/packages/http/install)

**Rest API** for login and sign up
- [reqres](https://reqres.in/)

|   Log in (First Screen)   |   Sign up   |
|:-----------------------:|:-----------------------:|
| ![Image 1](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-without-navbar/login_1.png) | ![Image 2](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-without-navbar/signup_1.png)|

|   Home Page   |   Second Page   |
|:-----------------------:|:-----------------------:|
| ![Image 3](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-without-navbar/homepage_3.png) | ![Image 4](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-without-navbar/secondpage_3.png)|

### Login-Sign Up with Navbar

In this advanced boilerplate, the 'lib' folder has been significantly enhanced, building upon the foundation of the previous version. Now, it comes with the inclusion of a user-friendly bottom navigation bar, providing an intuitive way for users to navigate between different sections of your app. Along with the two existing screens and the Bloc state management architecture powering Login and Signup functionalities, this dynamic approach seamlessly responds to user inputs within text fields. These additions offer not only a solid foundation for complex and scalable applications but also an improved user experience, making your app even more versatile and engaging.

**Extra Required Packages :**
- [bloc](https://pub.dev/packages/bloc/install)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc/install)
- [equatable](https://pub.dev/packages/equatable/install)
- [http](https://pub.dev/packages/http/install)

**Rest API** for login and sign up
- [reqres](https://reqres.in/)

|   Log in (First Screen)   |   Sign up   |
|:-----------------------:|:-----------------------:|
| ![Image 1](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-with-navbar/login_2.png) | ![Image 2](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-with-navbar/signup_2.png)|

|   Home Page   |   Second Page   |
|:-----------------------:|:-----------------------:|
| ![Image 3](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-with-navbar/homepage_4.png) | ![Image 4](https://github.com/Thanasis-Traitsis/flutter-boiler-plates/blob/main/screenshots/login-signup-with-navbar/secondpage_4.png)|

This README provides a brief overview of the project structure and asset configuration. Feel free to modify it to include any additional information specific to your project.
