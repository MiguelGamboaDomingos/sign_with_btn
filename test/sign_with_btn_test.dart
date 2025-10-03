import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sign_with_btn/sign_with_btn.dart';

void main() {
  group('SignWithBtn Widget Tests', () {
    testWidgets('renders without errors', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SignWithBtn(
              signTypes: const [SignWithGoogle(), SignWithApple()],
            ),
          ),
        ),
      );

      expect(find.byType(SignWithBtn), findsOneWidget);
      expect(find.byType(GridView), findsOneWidget);
    });

    testWidgets('displays correct text labels', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SignWithBtn(
              signTypes: const [
                SignWithGoogle(),
                SignWithApple(),
                SignWithFacebook(),
                SignWithEmail(),
              ],
            ),
          ),
        ),
      );

      expect(find.text('Google'), findsOneWidget);
      expect(find.text('Apple'), findsOneWidget);
      expect(find.text('Facebook'), findsOneWidget);
      expect(find.text('Email'), findsOneWidget);
    });

    testWidgets('displays icons', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SignWithBtn(
              signTypes: const [SignWithGoogle(), SignWithApple()],
            ),
          ),
        ),
      );

      expect(find.byType(FaIcon), findsNWidgets(2));
    });

    testWidgets('calls onSign callback when tapped', (
      WidgetTester tester,
    ) async {
      SignWithType? pressedSignType;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SignWithBtn(
              signTypes: const [SignWithGoogle()],
              countInRow: 1,
              onSign: (signType) {
                pressedSignType = signType;
              },
            ),
          ),
        ),
      );

      // Tap on the Google text
      await tester.tap(find.text('Google'));
      await tester.pump();

      expect(pressedSignType, isA<SignWithGoogle>());
    });

    testWidgets('respects countInRow parameter', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SignWithBtn(
              signTypes: const [
                SignWithGoogle(),
                SignWithApple(),
                SignWithFacebook(),
                SignWithEmail(),
              ],
              countInRow: 1,
            ),
          ),
        ),
      );

      final gridView = tester.widget<GridView>(find.byType(GridView));
      final delegate =
          gridView.gridDelegate as SliverGridDelegateWithFixedCrossAxisCount;
      expect(delegate.crossAxisCount, equals(1));
    });

    testWidgets('handles empty signTypes list', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: SignWithBtn(signTypes: const [], countInRow: 1)),
        ),
      );

      expect(find.byType(SignWithBtn), findsOneWidget);
      expect(find.text('Google'), findsNothing);
      expect(find.text('Apple'), findsNothing);
    });
  });

  group('SignWithType Tests', () {
    test('SignWithGoogle has correct default values', () {
      const google = SignWithGoogle();

      expect(google.title, equals('Google'));
      expect(google.icon, isA<FaIcon>());
      expect(google.style, isNull);
    });

    test('SignWithApple has correct default values', () {
      const apple = SignWithApple();

      expect(apple.title, equals('Apple'));
      expect(apple.icon, isA<FaIcon>());
      expect(apple.style, isNull);
    });

    test('SignWithFacebook has correct default values', () {
      const facebook = SignWithFacebook();

      expect(facebook.title, equals('Facebook'));
      expect(facebook.icon, isA<FaIcon>());
      expect(facebook.style, isNull);
    });

    test('SignWithEmail has correct default values', () {
      const email = SignWithEmail();

      expect(email.title, equals('Email'));
      expect(email.icon, isA<FaIcon>());
      expect(email.style, isNull);
    });

    test('SignWithPhone has correct default values', () {
      const phone = SignWithPhone();

      expect(phone.title, equals('Phone'));
      expect(phone.icon, isA<FaIcon>());
      expect(phone.style, isNull);
    });

    test('SignWithType can have custom style', () {
      final customStyle = SignWithStyle.outline(color: Colors.red);
      final google = SignWithGoogle(style: customStyle);

      expect(google.style, equals(customStyle));
    });
  });

  group('SignWithStyle Tests', () {
    test('default constructor creates correct instance', () {
      const style = SignWithStyle();

      expect(style.styleType, equals(StyleType.both));
      expect(style.buttonStyle, isA<ButtonStyle>());
    });

    test('outline factory creates correct style', () {
      final style = SignWithStyle.outline(color: Colors.blue);

      expect(style.styleType, equals(StyleType.both));
      expect(style.buttonStyle, isA<ButtonStyle>());
    });

    test('filled factory creates correct style', () {
      final style = SignWithStyle.filled(background: Colors.red);

      expect(style.styleType, equals(StyleType.both));
      expect(style.buttonStyle, isA<ButtonStyle>());
    });

    test('outline factory respects custom parameters', () {
      final style = SignWithStyle.outline(
        color: Colors.green,
        style: StyleType.icon,
        radius: 15,
      );

      expect(style.styleType, equals(StyleType.icon));
    });

    test('filled factory respects custom parameters', () {
      final style = SignWithStyle.filled(
        background: Colors.purple,
        foreground: Colors.yellow,
        style: StyleType.text,
        radius: 20,
      );

      expect(style.styleType, equals(StyleType.text));
    });
  });

  group('StyleType Tests', () {
    test('StyleType enum has correct values', () {
      expect(StyleType.values.length, equals(3));
      expect(StyleType.values, contains(StyleType.icon));
      expect(StyleType.values, contains(StyleType.text));
      expect(StyleType.values, contains(StyleType.both));
    });
  });
}
