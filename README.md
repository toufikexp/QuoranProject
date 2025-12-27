# Al-Mushaf Al-Elite 📖

<div align="center">

**Your spiritual companion for the Holy Quran**

A premium, modern Flutter application designed to provide an immersive and interactive experience for reading, studying, and engaging with the Holy Quran.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

</div>

---

## ✨ Features

### 🎨 Premium UI/UX Design
- **Glassmorphism Design**: Modern frosted-glass cards with subtle gradients and shadows
- **Animated Gradient Backgrounds**: Dynamic, animated backgrounds with particle effects
- **Smooth Animations**: Physics-based interactions, fade transitions, parallax effects
- **Responsive Design**: Optimized for all device sizes and screen orientations
- **Dark Mode**: Beautiful dark theme as default with light mode support

### 🌍 Multi-Language Support
- **4 Languages**: Arabic (العربية), English, French (Français), Spanish (Español)
- **Dynamic Locale Switching**: Change language instantly with persistence
- **RTL Support**: Full right-to-left support for Arabic
- **Localized Content**: All UI strings and content are fully localized

### 🚀 Onboarding Experience
- **3-Step Onboarding Flow**:
  1. **Language Selection**: Choose your preferred translation language
  2. **Reciter Selection**: Select your favorite Quran reciter
  3. **Theme Selection**: Choose between light and dark mode
- **Interactive Cards**: Tap to select with smooth animations and haptic feedback
- **Persistent Preferences**: All selections are saved and remembered

### 🏠 Home Dashboard
- **Dynamic Header**: Personalized greeting with Hijri date and time
- **Last Read Card**: Quick access to continue reading from where you left off
- **Daily Verse**: Beautifully displayed verse of the day with Arabic text
- **Reading Progress Tracker**: Track your daily, weekly reading time and streak
- **Featured Content Carousel**: Browse featured Surahs and recitations
- **Notifications Preview**: Stay updated with reminders and spiritual prompts
- **Quick Navigation**: Bottom navigation bar for easy access to main sections

### 📱 Additional Features
- **Hijri Calendar Integration**: Display current Hijri date and time
- **Reading Progress**: Track reading time and maintain streaks
- **Bookmarks**: Save and manage your favorite verses
- **Audio Support**: Ready for Quran recitation playback
- **Offline Support**: Local storage for preferences and data

---

## 🛠️ Technology Stack

### Core Framework
- **Flutter**: Cross-platform mobile development
- **Dart**: Programming language

### State Management
- **Flutter BLoC**: Business Logic Component pattern for state management
- **Equatable**: Value equality for state objects

### Localization
- **flutter_localizations**: Flutter's built-in localization support
- **intl**: Internationalization and localization utilities

### Storage
- **SharedPreferences**: Lightweight key-value storage for preferences
- **Isar**: High-performance NoSQL database for complex data

### UI/UX Libraries
- **cached_network_image**: Efficient image loading and caching
- **hijri_date**: Hijri calendar calculations

### Audio (Ready for Implementation)
- **audio_service**: Background audio playback
- **just_audio**: Audio player for Quran recitations

### Network
- **dio**: Powerful HTTP client for API calls

---

## 📋 Prerequisites

Before you begin, ensure you have met the following requirements:

- **Flutter SDK**: Version 3.0.0 or higher
- **Dart SDK**: Version 3.0.0 or higher
- **Android Studio** or **VS Code** with Flutter extensions
- **Android SDK**: For Android development
- **Xcode**: For iOS development (macOS only)

---

## 🚀 Getting Started

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/toufikexp/QuoranProject.git
   cd QuoranProject
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Production

**Android:**
```bash
flutter build apk --release
# or for app bundle
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── theme/
│   │   └── app_colors.dart          # App color palette
│   ├── utils/
│   │   ├── locale_service.dart      # Locale persistence
│   │   └── onboarding_service.dart  # Onboarding state management
│   └── widgets/
│       ├── animated_gradient_background.dart  # Animated background
│       └── glassmorphism_card.dart            # Glassmorphism card widget
├── l10n/
│   ├── app_localizations.dart       # Localization base class
│   ├── app_localizations_ar.dart    # Arabic translations
│   ├── app_localizations_en.dart    # English translations
│   ├── app_localizations_es.dart    # Spanish translations
│   └── app_localizations_fr.dart    # French translations
├── presentation/
│   ├── pages/
│   │   ├── home_dashboard_page.dart    # Main home screen
│   │   └── onboarding_page.dart        # Onboarding flow
│   └── widgets/                        # Reusable UI components
├── data/                               # Data layer (models, repositories)
├── domain/                             # Domain layer (entities, use cases)
└── main.dart                          # App entry point
```

---

## 🎨 Design Guidelines

### Color Palette
- **Primary**: Deep Emerald (#2E7D32)
- **Accent**: Gold (#FFD700)
- **Background**: Gradient from deep green to soft cream
- **Cards**: Soft white (#F8F8F8) with glassmorphism effect

### Typography
- **Quranic Text**: Uthmanic font (when available)
- **UI Text**: Noto Sans or Amiri
- **Arabic Support**: Full RTL text rendering

### Animations
- **Transitions**: Smooth fade and slide animations
- **Interactions**: Haptic feedback on taps
- **Physics**: Natural bounce and spring animations
- **Parallax**: Depth effects on scroll

---

## 🌐 Localization

The app supports 4 languages with full localization:

- **Arabic (ar)**: العربية
- **English (en)**: Default
- **French (fr)**: Français
- **Spanish (es)**: Español

All UI strings are localized and stored in the `lib/l10n/` directory. The selected language is persisted across app restarts.

### Adding New Languages

1. Add locale to `supportedLocales` in `main.dart`
2. Create new localization file: `app_localizations_[code].dart`
3. Implement all required getters from `AppLocalizations`
4. Update `lookupAppLocalizations` in `app_localizations.dart`

---

## 🔧 Configuration

### Android Configuration
- **Minimum SDK**: 21 (Android 5.0)
- **Target SDK**: 36
- **Gradle**: 8.7
- **Kotlin**: 2.1.0

### iOS Configuration
- **Minimum iOS**: 12.0
- **Swift**: 5.0+

---

## 📱 Screenshots

### Onboarding Flow
- Step 1: Language Selection
- Step 2: Reciter Selection
- Step 3: Theme Selection

### Home Dashboard
- Dynamic header with Hijri date
- Last read card
- Daily verse display
- Reading progress tracker
- Featured content carousel
- Notifications preview

---

## 🧪 Testing

Run tests with:
```bash
flutter test
```

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Flutter Team**: For the amazing framework
- **Quran.com API**: For Quranic text and translations (if used)
- **Open Source Community**: For the wonderful packages

---

## 📧 Contact

For questions, suggestions, or support, please open an issue on GitHub.

---

## 🗺️ Roadmap

### Upcoming Features
- [ ] Complete Quran text integration
- [ ] Audio recitation playback
- [ ] Bookmark management
- [ ] Search functionality
- [ ] Tafsir (commentary) integration
- [ ] Reading plans and goals
- [ ] Community features
- [ ] Offline mode
- [ ] Widget support
- [ ] Wear OS support

---

<div align="center">

**Made with ❤️ for the Muslim community**

⭐ Star this repo if you find it helpful!

</div>
