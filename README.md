# Folder by Feature Flutter Project Scheme Example

## About this project
The project's schema designed to be used when creating a new project with Flutter. It is built with a per-feature folder logic, categorized according to Reso Coder's clean code principles.

### Packages used in this project scheme:
- [dartz](https://pub.dev/packages/dartz)
- [equatable](https://pub.dev/packages/equatable)
- [get_it](https://pub.dev/packages/get_it)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [bloc](https://pub.dev/packages/bloc)

### Optional Extensions / Packages
These packages & extensions are included because they are frequently used but not mandatory.

#### VS Code Extensions
- [Dart Barrel File Generator](https://marketplace.visualstudio.com/items?itemName=miquelddg.dart-barrel-file-generator)
    - Barrel file creation automation plugin for the creation of export files of folders
#### Flutter Packages
- [animations](https://pub.dev/packages/animations)
    - For basic transitions & effects
- [dio](https://pub.dev/packages/dio)
    - You can use any http handler package.
    - If dio is not used, it is recommended to use at least the http & http_interceptor packages