import 'package:sign_with_btn/sign_with_btn.dart';

/// Abstract base class for all sign-in provider types.
///
/// [SignWithType] defines the common interface for all authentication providers
/// supported by the sign_with_btn package. Each concrete implementation represents
/// a specific authentication method (Google, Apple, Facebook, etc.).
///
/// ## Custom Providers
///
/// You can create custom sign-in providers by extending this class:
///
/// ```dart
/// class SignWithCustomProvider extends SignWithType {
///   const SignWithCustomProvider({
///     super.title = "Custom Provider",
///     super.icon = const FaIcon(FontAwesomeIcons.user),
///     super.style,
///   });
/// }
/// ```
abstract class SignWithType {
  /// Optional custom styling for this specific provider.
  ///
  /// When provided, this style overrides the global [SignWithBtn.style].
  /// Useful for giving individual providers unique appearances.
  final SignWithStyle? style;

  /// Display name of the authentication provider.
  ///
  /// This text appears on the button when [StyleType.text] or [StyleType.both]
  /// is used. Examples: "Google", "Apple", "Facebook".
  final String title;

  /// Icon representing the authentication provider.
  ///
  /// Uses FontAwesome icons to provide consistent, recognizable branding
  /// for each provider. The icon is displayed when [StyleType.icon] or
  /// [StyleType.both] is used.
  final FaIcon icon;

  /// Creates a [SignWithType] with the specified properties.
  ///
  /// All concrete implementations should call this constructor with
  /// appropriate default values for their provider.
  const SignWithType({required this.title, required this.icon, this.style});
}

/// Sign-in provider for email-based authentication.
///
/// Represents email/password authentication flows. Commonly used for
/// traditional username/password sign-in or email-based registration.
///
/// ## Example
///
/// ```dart
/// SignWithEmail(
///   style: SignWithStyle.outline(color: Colors.grey),
/// )
/// ```
class SignWithEmail extends SignWithType {
  /// Creates an email sign-in provider.
  ///
  /// Uses an envelope icon and "Email" as the default title.
  const SignWithEmail({
    super.title = "Email",
    super.icon = const FaIcon(FontAwesomeIcons.envelope),
    super.style,
  });
}

/// Sign-in provider for phone number-based authentication.
///
/// Represents phone number authentication flows, typically involving
/// SMS verification codes or phone-based OTP systems.
///
/// ## Example
///
/// ```dart
/// SignWithPhone(
///   style: SignWithStyle.filled(background: Colors.green),
/// )
/// ```
class SignWithPhone extends SignWithType {
  /// Creates a phone sign-in provider.
  ///
  /// Uses a phone icon and "Phone" as the default title.
  const SignWithPhone({
    super.title = "Phone",
    super.icon = const FaIcon(FontAwesomeIcons.phone),
    super.style,
  });
}

/// Sign-in provider for Google authentication.
///
/// Represents Google OAuth authentication flows. Integrates with
/// Google Sign-In SDK for seamless authentication with Google accounts.
///
/// ## Example
///
/// ```dart
/// SignWithGoogle(
///   style: SignWithStyle.outline(color: Colors.red),
/// )
/// ```
class SignWithGoogle extends SignWithType {
  /// Creates a Google sign-in provider.
  ///
  /// Uses the Google icon and "Google" as the default title.
  const SignWithGoogle({
    super.title = "Google",
    super.icon = const FaIcon(FontAwesomeIcons.google),
    super.style,
  });
}

/// Sign-in provider for Facebook authentication.
///
/// Represents Facebook OAuth authentication flows. Integrates with
/// Facebook Login SDK for authentication with Facebook accounts.
///
/// ## Example
///
/// ```dart
/// SignWithFacebook(
///   style: SignWithStyle.filled(background: Color(0xFF1877F2)),
/// )
/// ```
class SignWithFacebook extends SignWithType {
  /// Creates a Facebook sign-in provider.
  ///
  /// Uses the Facebook icon and "Facebook" as the default title.
  const SignWithFacebook({
    super.title = "Facebook",
    super.icon = const FaIcon(FontAwesomeIcons.facebook),
    super.style,
  });
}

/// Sign-in provider for Apple authentication.
///
/// Represents Apple Sign-In authentication flows. Integrates with
/// Apple's Sign in with Apple service, providing privacy-focused
/// authentication on iOS and other platforms.
///
/// ## Example
///
/// ```dart
/// SignWithApple(
///   style: SignWithStyle.filled(background: Colors.black),
/// )
/// ```
class SignWithApple extends SignWithType {
  /// Creates an Apple sign-in provider.
  ///
  /// Uses the Apple icon and "Apple" as the default title.
  const SignWithApple({
    super.title = "Apple",
    super.icon = const FaIcon(FontAwesomeIcons.apple),
    super.style,
  });
}
