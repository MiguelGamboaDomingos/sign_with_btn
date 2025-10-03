import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_with_style.dart';

/// Abstract base class for all sign-in provider types.
///
/// Defines the common interface for all authentication providers. Each
/// concrete implementation represents a specific authentication method.
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
  /// When provided, this style overrides the global style setting.
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

/// Sign-in provider for Twitter/X authentication.
///
/// Represents Twitter OAuth authentication flows. Integrates with
/// Twitter's authentication API for social login.
///
/// ## Example
///
/// ```dart
/// SignWithTwitter(
///   style: SignWithStyle.filled(background: Color(0xFF1DA1F2)),
/// )
/// ```
class SignWithTwitter extends SignWithType {
  /// Creates a Twitter sign-in provider.
  ///
  /// Uses the Twitter icon and "Twitter" as the default title.
  const SignWithTwitter({
    super.title = "Twitter",
    super.icon = const FaIcon(FontAwesomeIcons.twitter),
    super.style,
  });
}

/// Sign-in provider for GitHub authentication.
///
/// Represents GitHub OAuth authentication flows. Perfect for
/// developer-focused applications and technical platforms.
///
/// ## Example
///
/// ```dart
/// SignWithGitHub(
///   style: SignWithStyle.filled(background: Color(0xFF333333)),
/// )
/// ```
class SignWithGitHub extends SignWithType {
  /// Creates a GitHub sign-in provider.
  ///
  /// Uses the GitHub icon and "GitHub" as the default title.
  const SignWithGitHub({
    super.title = "GitHub",
    super.icon = const FaIcon(FontAwesomeIcons.github),
    super.style,
  });
}

/// Sign-in provider for LinkedIn authentication.
///
/// Represents LinkedIn OAuth authentication flows. Ideal for
/// professional and business-focused applications.
///
/// ## Example
///
/// ```dart
/// SignWithLinkedIn(
///   style: SignWithStyle.filled(background: Color(0xFF0077B5)),
/// )
/// ```
class SignWithLinkedIn extends SignWithType {
  /// Creates a LinkedIn sign-in provider.
  ///
  /// Uses the LinkedIn icon and "LinkedIn" as the default title.
  const SignWithLinkedIn({
    super.title = "LinkedIn",
    super.icon = const FaIcon(FontAwesomeIcons.linkedin),
    super.style,
  });
}

/// Sign-in provider for Microsoft authentication.
///
/// Represents Microsoft OAuth authentication flows. Integrates with
/// Microsoft accounts, Office 365, and Azure AD.
///
/// ## Example
///
/// ```dart
/// SignWithMicrosoft(
///   style: SignWithStyle.filled(background: Color(0xFF00A4EF)),
/// )
/// ```
class SignWithMicrosoft extends SignWithType {
  /// Creates a Microsoft sign-in provider.
  ///
  /// Uses the Microsoft icon and "Microsoft" as the default title.
  const SignWithMicrosoft({
    super.title = "Microsoft",
    super.icon = const FaIcon(FontAwesomeIcons.microsoft),
    super.style,
  });
}

/// Sign-in provider for Discord authentication.
///
/// Represents Discord OAuth authentication flows. Perfect for
/// gaming and community-focused applications.
///
/// ## Example
///
/// ```dart
/// SignWithDiscord(
///   style: SignWithStyle.filled(background: Color(0xFF5865F2)),
/// )
/// ```
class SignWithDiscord extends SignWithType {
  /// Creates a Discord sign-in provider.
  ///
  /// Uses the Discord icon and "Discord" as the default title.
  const SignWithDiscord({
    super.title = "Discord",
    super.icon = const FaIcon(FontAwesomeIcons.discord),
    super.style,
  });
}

/// Sign-in provider for Slack authentication.
///
/// Represents Slack OAuth authentication flows. Ideal for
/// workplace and team collaboration applications.
///
/// ## Example
///
/// ```dart
/// SignWithSlack(
///   style: SignWithStyle.filled(background: Color(0xFF4A154B)),
/// )
/// ```
class SignWithSlack extends SignWithType {
  /// Creates a Slack sign-in provider.
  ///
  /// Uses the Slack icon and "Slack" as the default title.
  const SignWithSlack({
    super.title = "Slack",
    super.icon = const FaIcon(FontAwesomeIcons.slack),
    super.style,
  });
}

/// Sign-in provider for Spotify authentication.
///
/// Represents Spotify OAuth authentication flows. Perfect for
/// music and entertainment applications.
///
/// ## Example
///
/// ```dart
/// SignWithSpotify(
///   style: SignWithStyle.filled(background: Color(0xFF1DB954)),
/// )
/// ```
class SignWithSpotify extends SignWithType {
  /// Creates a Spotify sign-in provider.
  ///
  /// Uses the Spotify icon and "Spotify" as the default title.
  const SignWithSpotify({
    super.title = "Spotify",
    super.icon = const FaIcon(FontAwesomeIcons.spotify),
    super.style,
  });
}

/// Sign-in provider for Instagram authentication.
///
/// Represents Instagram OAuth authentication flows. Great for
/// social media and photo-sharing applications.
///
/// ## Example
///
/// ```dart
/// SignWithInstagram(
///   style: SignWithStyle.gradient(
///     gradient: LinearGradient(
///       colors: [Color(0xFF833AB4), Color(0xFFE1306C), Color(0xFFFD1D1D)],
///     ),
///   ),
/// )
/// ```
class SignWithInstagram extends SignWithType {
  /// Creates an Instagram sign-in provider.
  ///
  /// Uses the Instagram icon and "Instagram" as the default title.
  const SignWithInstagram({
    super.title = "Instagram",
    super.icon = const FaIcon(FontAwesomeIcons.instagram),
    super.style,
  });
}

/// Sign-in provider for TikTok authentication.
///
/// Represents TikTok OAuth authentication flows. Perfect for
/// social media and video-sharing applications.
///
/// ## Example
///
/// ```dart
/// SignWithTikTok(
///   style: SignWithStyle.filled(background: Colors.black),
/// )
/// ```
class SignWithTikTok extends SignWithType {
  /// Creates a TikTok sign-in provider.
  ///
  /// Uses the TikTok icon and "TikTok" as the default title.
  const SignWithTikTok({
    super.title = "TikTok",
    super.icon = const FaIcon(FontAwesomeIcons.tiktok),
    super.style,
  });
}

/// Sign-in provider for Twitch authentication.
///
/// Represents Twitch OAuth authentication flows. Ideal for
/// gaming and streaming applications.
///
/// ## Example
///
/// ```dart
/// SignWithTwitch(
///   style: SignWithStyle.filled(background: Color(0xFF9146FF)),
/// )
/// ```
class SignWithTwitch extends SignWithType {
  /// Creates a Twitch sign-in provider.
  ///
  /// Uses the Twitch icon and "Twitch" as the default title.
  const SignWithTwitch({
    super.title = "Twitch",
    super.icon = const FaIcon(FontAwesomeIcons.twitch),
    super.style,
  });
}

/// Sign-in provider for Reddit authentication.
///
/// Represents Reddit OAuth authentication flows. Great for
/// community and discussion-based applications.
///
/// ## Example
///
/// ```dart
/// SignWithReddit(
///   style: SignWithStyle.filled(background: Color(0xFFFF4500)),
/// )
/// ```
class SignWithReddit extends SignWithType {
  /// Creates a Reddit sign-in provider.
  ///
  /// Uses the Reddit icon and "Reddit" as the default title.
  const SignWithReddit({
    super.title = "Reddit",
    super.icon = const FaIcon(FontAwesomeIcons.reddit),
    super.style,
  });
}
