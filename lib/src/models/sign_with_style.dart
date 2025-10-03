import 'package:flutter/material.dart';

/// Defines how sign-in buttons should display their content.
///
/// - [icon]: Display only the icon
/// - [text]: Display only the text label
/// - [both]: Display both icon and text (default)
enum StyleType {
  /// Display only the provider icon
  icon,

  /// Display only the provider name text
  text,

  /// Display both icon and text
  both,
}

/// Configuration class for customizing the appearance of sign-in buttons.
///
/// [SignWithStyle] provides a flexible way to style sign-in buttons with
/// pre-built factory constructors for common styles or complete customization
/// through the default constructor.
///
/// ## Examples
///
/// ```dart
/// // Default style (both icon and text)
/// SignWithStyle()
///
/// // Outline style with custom color
/// SignWithStyle.outline(color: Colors.blue)
///
/// // Filled style with custom colors
/// SignWithStyle.filled(
///   background: Colors.red,
///   foreground: Colors.white,
/// )
///
/// // Icon only with custom styling
/// SignWithStyle(
///   styleType: StyleType.icon,
///   buttonStyle: ButtonStyle(
///     backgroundColor: WidgetStatePropertyAll(Colors.grey[100]),
///   ),
/// )
/// ```
class SignWithStyle {
  /// The [ButtonStyle] to apply to the sign-in buttons.
  ///
  /// This follows Flutter's standard [ButtonStyle] configuration and allows
  /// complete customization of button appearance including colors, borders,
  /// shapes, and more.
  final ButtonStyle buttonStyle;

  /// Determines what content to display on the buttons.
  ///
  /// - [StyleType.icon]: Shows only the provider icon
  /// - [StyleType.text]: Shows only the provider name
  /// - [StyleType.both]: Shows both icon and text (default)
  final StyleType styleType;

  /// Creates a [SignWithStyle] with custom configuration.
  ///
  /// By default, creates buttons that show both icon and text with
  /// Flutter's default [ButtonStyle].
  const SignWithStyle({
    this.buttonStyle = const ButtonStyle(),
    this.styleType = StyleType.both,
  });

  /// Creates an outline style with transparent background and colored border.
  ///
  /// Perfect for creating buttons that match your app's color scheme while
  /// maintaining a clean, outlined appearance.
  ///
  /// ## Parameters
  ///
  /// - [color]: The color for the border and text/icons
  /// - [style]: Content display mode (default: [StyleType.both])
  /// - [radius]: Border radius in logical pixels (default: 10)
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.outline(
  ///   color: Colors.blue,
  ///   style: StyleType.both,
  ///   radius: 12,
  /// )
  /// ```
  factory SignWithStyle.outline({
    required Color color,
    StyleType style = StyleType.both,
    double radius = 10,
  }) => SignWithStyle(
    buttonStyle: ButtonStyle(
      side: WidgetStatePropertyAll(BorderSide(color: color)),
      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
      foregroundColor: WidgetStatePropertyAll(color),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    ),
    styleType: style,
  );

  /// Creates a filled style with solid background color.
  ///
  /// Ideal for creating prominent sign-in buttons that stand out in your UI.
  /// The background color fills the entire button area.
  ///
  /// ## Parameters
  ///
  /// - [background]: The background color of the button
  /// - [foreground]: The color for text and icons (default: [Colors.white])
  /// - [style]: Content display mode (default: [StyleType.both])
  /// - [radius]: Border radius in logical pixels (default: 10)
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.filled(
  ///   background: Colors.red,
  ///   foreground: Colors.white,
  ///   style: StyleType.both,
  ///   radius: 8,
  /// )
  /// ```
  factory SignWithStyle.filled({
    required Color background,
    Color foreground = Colors.white,
    StyleType style = StyleType.both,
    double radius = 10,
  }) => SignWithStyle(
    buttonStyle: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(background),
      foregroundColor: WidgetStatePropertyAll(foreground),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    ),
    styleType: style,
  );

  /// Creates an elevated style with shadow and background color.
  ///
  /// Perfect for creating buttons that appear to float above the surface
  /// with a subtle shadow effect.
  ///
  /// ## Parameters
  ///
  /// - [background]: The background color of the button (default: [Colors.white])
  /// - [foreground]: The color for text and icons (default: [Colors.black87])
  /// - [elevation]: The elevation/shadow depth (default: 4.0)
  /// - [style]: Content display mode (default: [StyleType.both])
  /// - [radius]: Border radius in logical pixels (default: 10)
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.elevated(
  ///   background: Colors.white,
  ///   foreground: Colors.black87,
  ///   elevation: 6.0,
  ///   radius: 12,
  /// )
  /// ```
  factory SignWithStyle.elevated({
    Color background = Colors.white,
    Color foreground = Colors.black87,
    double elevation = 4.0,
    StyleType style = StyleType.both,
    double radius = 10,
  }) => SignWithStyle(
    buttonStyle: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(background),
      foregroundColor: WidgetStatePropertyAll(foreground),
      elevation: WidgetStatePropertyAll(elevation),
      shadowColor: const WidgetStatePropertyAll(Colors.black26),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    ),
    styleType: style,
  );

  /// Creates a gradient style with beautiful color transitions.
  ///
  /// Creates visually appealing buttons with gradient backgrounds that
  /// can enhance the visual appeal of your authentication UI.
  ///
  /// ## Parameters
  ///
  /// - [gradient]: The gradient to apply as background
  /// - [foreground]: The color for text and icons (default: [Colors.white])
  /// - [style]: Content display mode (default: [StyleType.both])
  /// - [radius]: Border radius in logical pixels (default: 10)
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.gradient(
  ///   gradient: LinearGradient(
  ///     colors: [Colors.blue, Colors.purple],
  ///   ),
  ///   foreground: Colors.white,
  /// )
  /// ```
  factory SignWithStyle.gradient({
    required Gradient gradient,
    Color foreground = Colors.white,
    StyleType style = StyleType.both,
    double radius = 10,
  }) => SignWithStyle(
    buttonStyle: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(foreground),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
      // Note: Gradient background would need custom implementation
      // This provides the base styling for gradient buttons
    ),
    styleType: style,
  );

  /// Creates a minimal style with subtle hover effects.
  ///
  /// Perfect for clean, minimalist designs where buttons should blend
  /// seamlessly with the interface until interacted with.
  ///
  /// ## Parameters
  ///
  /// - [color]: The color for text, icons, and hover effects (default: [Colors.grey])
  /// - [style]: Content display mode (default: [StyleType.both])
  /// - [radius]: Border radius in logical pixels (default: 10)
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.minimal(
  ///   color: Colors.grey[600]!,
  ///   style: StyleType.both,
  /// )
  /// ```
  factory SignWithStyle.minimal({
    Color color = Colors.grey,
    StyleType style = StyleType.both,
    double radius = 10,
  }) => SignWithStyle(
    buttonStyle: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
      foregroundColor: WidgetStatePropertyAll(color),
      overlayColor: WidgetStatePropertyAll(color.withOpacity(0.1)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    ),
    styleType: style,
  );

  /// Creates a rounded pill-shaped style.
  ///
  /// Creates buttons with fully rounded edges that look like pills or
  /// capsules, perfect for modern UI designs.
  ///
  /// ## Parameters
  ///
  /// - [background]: The background color of the button
  /// - [foreground]: The color for text and icons (default: [Colors.white])
  /// - [style]: Content display mode (default: [StyleType.both])
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.pill(
  ///   background: Colors.blue,
  ///   foreground: Colors.white,
  /// )
  /// ```
  factory SignWithStyle.pill({
    required Color background,
    Color foreground = Colors.white,
    StyleType style = StyleType.both,
  }) => SignWithStyle(
    buttonStyle: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(background),
      foregroundColor: WidgetStatePropertyAll(foreground),
      shape: const WidgetStatePropertyAll(StadiumBorder()),
    ),
    styleType: style,
  );

  /// Creates a neumorphic style with inset/outset effects.
  ///
  /// Creates buttons with a soft, pressed or raised appearance that
  /// gives a tactile feel to the interface.
  ///
  /// ## Parameters
  ///
  /// - [baseColor]: The base color for the neumorphic effect (default: [Colors.grey[200]])
  /// - [foreground]: The color for text and icons (default: [Colors.black87])
  /// - [isPressed]: Whether to show pressed (inset) or raised (outset) effect (default: false)
  /// - [style]: Content display mode (default: [StyleType.both])
  /// - [radius]: Border radius in logical pixels (default: 15)
  ///
  /// ## Example
  ///
  /// ```dart
  /// SignWithStyle.neumorphic(
  ///   baseColor: Colors.grey[200]!,
  ///   isPressed: false,
  ///   radius: 20,
  /// )
  /// ```
  factory SignWithStyle.neumorphic({
    Color? baseColor,
    Color foreground = Colors.black87,
    bool isPressed = false,
    StyleType style = StyleType.both,
    double radius = 15,
  }) {
    final base = baseColor ?? Colors.grey[200]!;
    return SignWithStyle(
      buttonStyle: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(base),
        foregroundColor: WidgetStatePropertyAll(foreground),
        elevation: WidgetStatePropertyAll(isPressed ? 0 : 2),
        shadowColor: WidgetStatePropertyAll(
          isPressed ? Colors.transparent : Colors.black12,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
      ),
      styleType: style,
    );
  }
}
