/// A Flutter package for creating beautiful and customizable sign-in buttons.
///
/// This library provides a comprehensive solution for implementing sign-in buttons
/// with support for popular authentication providers including Google, Apple,
/// Facebook, Email, and Phone.
///
/// ## Features
///
/// - Pre-built sign-in buttons for popular providers
/// - Customizable styling with outline and filled variants
/// - Flexible layout options (grid-based with configurable columns)
/// - Icon-only, text-only, or combined display modes
/// - Easy integration with authentication flows
///
/// ## Basic Usage
///
/// ```dart
/// SignWithBtn(
///   signTypes: [
///     SignWithGoogle(),
///     SignWithApple(),
///     SignWithFacebook(),
///   ],
///   onSign: (signType) {
///     // Handle sign-in logic
///     print('Signing in with ${signType.title}');
///   },
/// )
/// ```
library;

export 'src/sign_with_btn_core.dart';
export 'src/models/sign_with_type.dart';
export 'src/models/sign_with_style.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
