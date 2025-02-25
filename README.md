# Todo App with BLoC Pattern

A Flutter Todo application demonstrating the implementation of the BLoC (Business Logic Component) pattern for state management.

## Features

- Add new todos
- Mark todos as complete/incomplete
- Delete todos
- Clean and intuitive user interface
- State management using BLoC pattern

## Architecture

The project follows a clean architecture pattern with BLoC for state management:

```
lib/
  ├── bloc/           # BLoC related files
  │   ├── todo_bloc.dart
  │   ├── todo_event.dart
  │   └── todo_state.dart
  ├── models/         # Data models
  │   └── todo.dart
  ├── screens/        # UI screens
  │   └── todo_screen.dart
  └── main.dart       # Entry point
```

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK (latest version)
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository
```bash
git clone https://github.com/MehulRaj/todo_bloc.git
```

2. Navigate to the project directory
```bash
cd bloc_arch
```

3. Install dependencies
```bash
flutter pub get
```

4. Run the app
```bash
flutter run
```

## Dependencies

- flutter_bloc: For BLoC pattern implementation
- Other Flutter standard libraries

## Learning Resources

For more information about Flutter and the BLoC pattern:

- [Flutter Documentation](https://docs.flutter.dev/)
- [BLoC Library Documentation](https://bloclibrary.dev/)
- [Flutter BLoC Pattern Guide](https://www.flutterclutter.dev/flutter/basics/bloc-pattern-in-flutter/2021/2101/)
