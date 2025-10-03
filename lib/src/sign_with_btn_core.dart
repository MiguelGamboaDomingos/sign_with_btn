import 'package:flutter/material.dart';
import 'package:sign_with_btn/sign_with_btn.dart';
part 'widgets/sign_with_btn_body.dart';

/// A customizable widget that displays sign-in buttons in a grid layout.
///
/// The [SignWithBtn] widget creates a grid of sign-in buttons based on the
/// provided [signTypes]. It supports various authentication providers and
/// allows extensive customization of appearance and behavior.
///
/// ## Example
///
/// ```dart
/// SignWithBtn(
///   signTypes: [
///     SignWithGoogle(),
///     SignWithApple(),
///     SignWithFacebook(),
///     SignWithEmail(),
///   ],
///   countInRow: 2,
///   style: SignWithStyle.outline(color: Colors.blue),
///   onSign: (signType) {
///     // Handle the sign-in action
///     if (signType is SignWithGoogle) {
///       // Handle Google sign-in
///     } else if (signType is SignWithApple) {
///       // Handle Apple sign-in
///     }
///   },
/// )
/// ```
///
/// ## Styling
///
/// You can customize the appearance using [SignWithStyle]:
///
/// ```dart
/// // Outline style
/// SignWithStyle.outline(color: Colors.blue)
///
/// // Filled style
/// SignWithStyle.filled(background: Colors.red, foreground: Colors.white)
///
/// // Custom style
/// SignWithStyle(
///   buttonStyle: ButtonStyle(...),
///   styleType: StyleType.iconOnly,
/// )
/// ```
class SignWithBtn extends StatelessWidget {
  /// Creates a [SignWithBtn] widget.
  ///
  /// The [signTypes] parameter is required and defines which sign-in options
  /// to display. The [countInRow] must not exceed the length of [signTypes].
  ///
  /// ## Parameters
  ///
  /// - [signTypes]: List of sign-in providers to display
  /// - [onSign]: Callback function called when a sign-in button is pressed
  /// - [countInRow]: Number of buttons to display per row (default: 2)
  /// - [style]: Global styling for all buttons (default: [SignWithStyle()])
  /// - [height]: Height of each button in logical pixels (default: 50)
  /// - [spaceBetween]: Spacing between buttons in logical pixels (default: 10)
  const SignWithBtn({
    required this.signTypes,
    this.onSign,
    super.key,
    this.countInRow = 2,
    this.style = const SignWithStyle(),
    this.height = 50,
    this.spaceBetween = 10,
  }) : assert(countInRow >= 0, 'countInRow must be non-negative');

  /// Number of buttons to display per row.
  ///
  /// Must be less than or equal to the length of [signTypes].
  /// Defaults to 2.
  final int countInRow;

  /// Height of each button in logical pixels.
  ///
  /// Defaults to 50.0.
  final double height;

  /// Spacing between buttons in logical pixels.
  ///
  /// This applies to both horizontal and vertical spacing.
  /// Defaults to 10.0.
  final double spaceBetween;

  /// Callback function called when a sign-in button is pressed.
  ///
  /// The callback receives the [SignWithType] instance of the pressed button,
  /// allowing you to determine which provider was selected and handle the
  /// authentication flow accordingly.
  ///
  /// ```dart
  /// onSign: (signType) {
  ///   switch (signType.runtimeType) {
  ///     case SignWithGoogle:
  ///       // Handle Google sign-in
  ///       break;
  ///     case SignWithApple:
  ///       // Handle Apple sign-in
  ///       break;
  ///   }
  /// }
  /// ```
  final void Function(SignWithType signType)? onSign;

  /// Global styling configuration for all buttons.
  ///
  /// Individual [SignWithType] instances can override this with their own
  /// [SignWithType.style] property. Defaults to [SignWithStyle()].
  final SignWithStyle style;

  /// List of sign-in providers to display as buttons.
  ///
  /// Each [SignWithType] represents a different authentication provider
  /// (Google, Apple, Facebook, etc.) and can have its own styling.
  final List<SignWithType> signTypes;

  @override
  Widget build(BuildContext context) {
    // Runtime validation for countInRow
    if (signTypes.isNotEmpty && countInRow > signTypes.length) {
      throw ArgumentError(
        'countInRow ($countInRow) cannot exceed the number of signTypes (${signTypes.length})',
      );
    }

    return Padding(
      padding: EdgeInsets.all(spaceBetween),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: spaceBetween,
          crossAxisSpacing: spaceBetween,
          mainAxisExtent: height,
          crossAxisCount: countInRow,
        ),
        itemCount: signTypes.length,
        itemBuilder: (context, index) => _SignWithBtn(
          signType: signTypes[index],
          style: style,
          onSign: (signType) => onSign?.call(signType),
        ),
      ),
    );
  }
}
