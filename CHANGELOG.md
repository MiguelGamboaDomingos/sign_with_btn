# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2025-10-03

### 🎨 Enhanced Styling Options & Official Brand Styling

#### Added

- **New SignWithStyle Factories**: 5 additional styling options for more design flexibility

  - `SignWithStyle.elevated()` - Buttons with shadow and elevation effects
  - `SignWithStyle.pill()` - Fully rounded pill-shaped buttons
  - `SignWithStyle.minimal()` - Clean minimal design with subtle hover effects
  - `SignWithStyle.neumorphic()` - Soft, tactile button design with inset/outset effects
  - `SignWithStyle.gradient()` - Support for gradient backgrounds (base implementation)

- **Brand-Specific Style Factories**: 14 new official brand styling presets
  - `SignWithStyle.google()` - Google's official white style with subtle border
  - `SignWithStyle.apple()` - Apple's official black style following HIG
  - `SignWithStyle.facebook()` - Facebook's official blue brand styling
  - `SignWithStyle.twitter()` - Twitter's official blue with rounded styling
  - `SignWithStyle.github()` - GitHub's official dark developer-focused style
  - `SignWithStyle.linkedin()` - LinkedIn's official professional blue styling
  - `SignWithStyle.microsoft()` - Microsoft's official modern blue styling
  - `SignWithStyle.discord()` - Discord's official purple gaming-focused style
  - `SignWithStyle.slack()` - Slack's official purple workspace styling
  - `SignWithStyle.spotify()` - Spotify's official green with rounded styling
  - `SignWithStyle.instagram()` - Instagram's official gradient-inspired styling
  - `SignWithStyle.tiktok()` - TikTok's official black modern styling
  - `SignWithStyle.twitch()` - Twitch's official purple streaming platform style
  - `SignWithStyle.reddit()` - Reddit's official orange community-focused style

#### New Authentication Providers

- **Social Media Providers**: 4 new social authentication options
  - `SignWithTwitter()` - Twitter/X authentication
  - `SignWithInstagram()` - Instagram authentication
  - `SignWithTikTok()` - TikTok authentication
  - `SignWithReddit()` - Reddit authentication
- **Professional Providers**: 4 new business-focused options
  - `SignWithLinkedIn()` - LinkedIn authentication
  - `SignWithMicrosoft()` - Microsoft/Office 365/Azure AD authentication
  - `SignWithGitHub()` - GitHub authentication (perfect for developer apps)
  - `SignWithSlack()` - Slack workspace authentication
- **Gaming & Entertainment**: 3 new entertainment platform options
  - `SignWithDiscord()` - Discord authentication
  - `SignWithTwitch()` - Twitch streaming platform authentication
  - `SignWithSpotify()` - Spotify music platform authentication

#### Brand Guidelines Compliance

- **Authentic Colors**: Each style uses the exact brand colors from official guidelines
- **Proper Border Radius**: Matches each platform's design language (rounded, sharp, pill-shaped)
- **Elevation & Shadows**: Appropriate depth effects for each brand's visual style
- **Typography**: Consistent with each platform's text styling approach

#### Enhanced Example App

- **18 Comprehensive Examples**: Demonstrations of all styling options and brand styles
- **Categorized Brand Showcase**: Core, Social Media, Professional, Gaming & Entertainment
- **Mixed Style Examples**: Combining official brand styles with custom styling
- **Brand Compliance Guide**: Visual examples of proper vs improper brand usage
- **Interactive Demos**: Real-time feedback for all new providers and styles

#### Documentation Updates

- **Brand Guidelines Section**: Comprehensive guide to using official brand styles
- **Best Practices**: Updated with brand compliance recommendations
- **Categorized Provider Lists**: Organized providers by use case
- **Expanded Styling Guide**: Detailed examples for all styling options
- **Enhanced API Documentation**: Comprehensive docs for all new factories and providers

### 🎨 Design Excellence

- **Pixel-Perfect Accuracy**: Each brand style matches official design specifications
- **Consistent API**: All brand styles follow the same simple factory pattern
- **Flexible Usage**: Brand styles work with all StyleType options (icon, text, both)
- **Professional Appearance**: Authentic styling builds user trust and recognition

### 🔧 Technical Improvements

- **Consistent API**: All new providers follow the same pattern as existing ones
- **Type Safety**: Full type safety maintained across all new additions
- **Performance**: Efficient implementation with no performance impact
- **Backwards Compatibility**: All existing code continues to work unchanged

### 📊 Package Statistics

- **Total Providers**: 16 (up from 5)
- **Total Style Options**: 23 (includes 14 brand-specific + 9 generic styles)
- **Brand Coverage**: 14 major platforms with official styling
- **Example Demonstrations**: 18 comprehensive examples
- **Complete Brand Ecosystem**: Core, Social, Professional, Gaming & Entertainment covered

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
