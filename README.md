# Better Progress

A Flutter application for tracking academic progress and managing student information.

## Features

- User authentication
- Academic progress tracking
- GPA calculation
- Multilingual support (Arabic/French)
- Dark/Light theme support
- Offline data persistence

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/better_progress.git
cd better_progress
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage
```

## Project Structure

```
lib/
├── core/                   # Core functionality
│   ├── di/                # Dependency injection
│   └── services/          # Core services (API, Storage, Auth)
├── features/              # Feature modules
│   ├── dashboard/         # Dashboard feature
│   ├── home/             # Home feature
│   └── bac/              # BAC related features
├── progress/             # Progress tracking
│   └── models/           # Data models
└── widgets/              # Reusable widgets
```

## Architecture

The project follows clean architecture principles with the following layers:
- Presentation Layer (UI)
- Domain Layer (Business Logic)
- Data Layer (Repository & Data Sources)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
