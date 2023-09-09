# Flutter Boilerplate Repository

This repository provides a Flutter boilerplate project with a predefined code structure, including folder organization and assets. Use this project as a starting point for your Flutter applications.

## Table of Contents

1. [Project Structure](#project-structure)
2. [Getting Started](#getting-started)
    - [Assets](#assets)
    - [Dependencies](#dependencies)
3. [Boilerplate Examples](#boilerplate-examples)
    - [Example 1](#example-1)

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

This README provides a brief overview of the project structure and asset configuration. Feel free to modify it to include any additional information specific to your project.