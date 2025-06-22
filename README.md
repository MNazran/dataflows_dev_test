# DataFlows UI Development Test

This project is a Flutter UI development test, focusing solely on implementing various user interface components and navigation. [Demo](https://appetize.io/app/b_6ghjkytgkeebom27jk6hnjm4wu)

### Technologies Used

- Flutter: UI Toolkit
- GetX: state management, simplified navigation.

## Getting Started

1.  Clone the repository

```
git clone <repository_url>
cd <project_directory_name>
```

2.  Install dependencies

```
flutter pub get
```

3. Prepare Environment File (.env)

- In the root directory of your project (at the same level as pubspec.yaml), create a file named .env
- Inside .env, add your Google Maps API key:

```
GOOGLE_MAP_API_KEY=Y0UR_G00GL3_M4PS_4P1_K3Y_H3R3
```

4.  Add Assets to pubspec.yaml

```
flutter:
  assets:
    - assets/images/
    - .env
```

5.  Run the application

```
flutter run
```
