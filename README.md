# TS Weather App

A Flutter application that displays current weather and 4-day forecast for the user's current location using the OpenWeatherMap API.

## Features

- Displays current temperature and location name
- Shows 4-day temperature forecast with average temperatures
- Handles various error cases gracefully
- Allows retrying on failure

## Technical Approach

### Architecture

The app follows Clean Architecture with Feature-first structure and BLoC for state management:

1. **Presentation Layer**: Contains UI components and BLoCs
2. **Domain Layer**: Contains business logic, entities, and use cases
3. **Data Layer**: Handles data sources and repositories

### Key Libraries

- **auto_route**: For navigation management
- **dio & retrofit**: For API calls
- **freezed**: For immutable models and union types
- **riverpod**: For dependency injection
- **flutter_bloc**: For state management
- **fpdart**: For functional programming utilities

### Testing

The app includes comprehensive unit tests with 100% coverage for critical components like BLoCs and use cases.

## Setup

1. Clone the repository
2. Run `flutter pub get`
5. Add your OpenWeatherMap API key in `lib/core/constants/app_constants.dart`
6. Run the app with `flutter run`