# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-10-03

### 🎉 Initial Release

#### Added

- **Core Widget**: `SignWithBtn` widget for creating customizable sign-in button grids
- **Authentication Providers**: Pre-built support for popular providers:
  - Google (`SignWithGoogle`)
  - Apple (`SignWithApple`)
  - Facebook (`SignWithFacebook`)
  - Email (`SignWithEmail`)
  - Phone (`SignWithPhone`)
- **Flexible Styling**: `SignWithStyle` class with multiple styling options:
  - Default style with Flutter's standard ButtonStyle
  - `SignWithStyle.outline()` factory for outlined buttons
  - `SignWithStyle.filled()` factory for filled buttons
  - Custom styling through ButtonStyle parameter
- **Display Modes**: `StyleType` enum for controlling button content:
  - `StyleType.both` - Show both icon and text (default)
  - `StyleType.icon` - Show only provider icons
  - `StyleType.text` - Show only provider names
- **Layout Customization**: Configurable grid layout with:
  - Adjustable number of buttons per row (`countInRow`)
  - Customizable button height (`height`)
  - Configurable spacing between buttons (`spaceBetween`)
- **Event Handling**: `onSign` callback for handling authentication flows
- **Extensibility**: Abstract `SignWithType` base class for creating custom providers
- **FontAwesome Integration**: Beautiful icons using `font_awesome_flutter` package

#### Features

- 🎨 Modern, customizable UI design
- 📱 Responsive grid layout
- 🔧 Extensive styling options
- 🚀 Easy integration with authentication flows
- 📦 Lightweight with minimal dependencies
- 🎯 Type-safe provider identification
- 🎪 Support for custom authentication providers
- ✨ Individual and global styling support

#### Documentation

- 📚 Comprehensive API documentation with examples
- 📖 Detailed README with usage guides and best practices
- 🎯 Code examples for common use cases
- 🛠️ Integration examples with Firebase Auth
- 🎨 Styling guides and customization options
- 📸 Visual screenshots showcasing different styling options

#### Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ macOS
- ✅ Windows
- ✅ Linux

### Technical Details

- **Minimum Flutter Version**: 1.17.0
- **Minimum Dart SDK**: 3.9.2
- **Dependencies**:
  - `flutter`: SDK
  - `font_awesome_flutter`: ^10.10.0
- **License**: MIT

### Example Usage

```dart
SignWithBtn(
  signTypes: [
    SignWithGoogle(),
    SignWithApple(),
    SignWithFacebook(),
    SignWithEmail(),
  ],
  style: SignWithStyle.outline(color: Colors.blue),
  onSign: (signType) {
    // Handle authentication
    print('Signing in with ${signType.title}');
  },
)
```

---

For more information, visit our [GitHub repository](https://github.com/mohamedmaher-dev/sign_with_btn) or check the [documentation](https://pub.dev/packages/sign_with_btn).
