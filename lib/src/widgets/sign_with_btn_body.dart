part of '../sign_with_btn_core.dart';

class _SignWithBtn extends StatelessWidget {
  const _SignWithBtn({
    required this.signType,
    this.onSign,
    required this.style,
  });
  final SignWithStyle style;
  final SignWithType signType;
  final void Function(SignWithType signType)? onSign;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: signType.style?.buttonStyle ?? style.buttonStyle,
      onPressed: () => onSign?.call(signType),
      icon: style.styleType == StyleType.both ? signType.icon : null,
      label:
          style.styleType == StyleType.text || style.styleType == StyleType.both
          ? Text(signType.title)
          : signType.icon,
    );
  }
}
