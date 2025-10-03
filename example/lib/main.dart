import 'package:flutter/material.dart';
import 'package:sign_with_btn/sign_with_btn.dart';

void main() => runApp(const SignWithBtnExampleApp());

class SignWithBtnExampleApp extends StatelessWidget {
  const SignWithBtnExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign With Button Examples',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const ExampleHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExampleHomePage extends StatefulWidget {
  const ExampleHomePage({super.key});

  @override
  State<ExampleHomePage> createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage> {
  String _lastSignInProvider = 'None';

  void _handleSignIn(SignWithType signType) {
    setState(() {
      _lastSignInProvider = signType.title;
    });

    // Show a snackbar with the selected provider
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Signing in with ${signType.title}...'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );

    // Here you would typically handle the actual authentication
    print('Sign-in requested for: ${signType.title}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign With Button Examples'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, color: Colors.blue),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Last Sign-In Attempt:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _lastSignInProvider,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Example 1: Default Style
            _buildExampleSection(
              title: '1. Default Style',
              description: 'Basic usage with default styling',
              child: SignWithBtn(
                signTypes: [
                  const SignWithGoogle(),
                  const SignWithApple(),
                  const SignWithFacebook(),
                  const SignWithEmail(),
                ],
                onSign: _handleSignIn,
              ),
            ),

            // Example 2: Outline Style
            _buildExampleSection(
              title: '2. Outline Style',
              description: 'Outlined buttons with custom colors',
              child: SignWithBtn(
                signTypes: [
                  SignWithGoogle(
                    style: SignWithStyle.outline(color: Colors.red),
                  ),
                  SignWithApple(
                    style: SignWithStyle.outline(color: Colors.black),
                  ),
                  SignWithFacebook(
                    style: SignWithStyle.outline(
                      color: const Color(0xFF1877F2),
                    ),
                  ),
                  SignWithPhone(
                    style: SignWithStyle.outline(color: Colors.green),
                  ),
                ],
                onSign: _handleSignIn,
              ),
            ),

            // Example 3: Filled Style
            _buildExampleSection(
              title: '3. Filled Style',
              description: 'Filled buttons with brand colors',
              child: SignWithBtn(
                signTypes: [
                  SignWithGoogle(
                    style: SignWithStyle.filled(background: Colors.red),
                  ),
                  SignWithApple(
                    style: SignWithStyle.filled(background: Colors.black),
                  ),
                  SignWithFacebook(
                    style: SignWithStyle.filled(
                      background: const Color(0xFF1877F2),
                    ),
                  ),
                  SignWithEmail(
                    style: SignWithStyle.filled(background: Colors.grey[700]!),
                  ),
                ],
                onSign: _handleSignIn,
              ),
            ),

            // Example 4: Icon Only
            _buildExampleSection(
              title: '4. Icon Only Style',
              description: 'Display only icons in a horizontal row',
              child: SignWithBtn(
                signTypes: [
                  const SignWithGoogle(),
                  const SignWithApple(),
                  const SignWithFacebook(),
                  const SignWithEmail(),
                  const SignWithPhone(),
                ],
                countInRow: 5,
                style: SignWithStyle(
                  styleType: StyleType.icon,
                  buttonStyle: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.grey[100]),
                    foregroundColor: const WidgetStatePropertyAll(
                      Colors.black87,
                    ),
                    shape: const WidgetStatePropertyAll(CircleBorder()),
                  ),
                ),
                height: 60,
                onSign: _handleSignIn,
              ),
            ),

            // Example 5: Text Only
            _buildExampleSection(
              title: '5. Text Only Style',
              description: 'Display only text labels',
              child: SignWithBtn(
                signTypes: [const SignWithGoogle(), const SignWithApple()],
                style: SignWithStyle(
                  styleType: StyleType.text,
                  buttonStyle: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue[50]),
                    foregroundColor: const WidgetStatePropertyAll(Colors.blue),
                    side: const WidgetStatePropertyAll(
                      BorderSide(color: Colors.blue, width: 1),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                height: 50,
                onSign: _handleSignIn,
              ),
            ),

            // Example 6: Single Column Layout
            _buildExampleSection(
              title: '6. Single Column Layout',
              description: 'One button per row with increased height',
              child: SignWithBtn(
                signTypes: [
                  SignWithGoogle(
                    style: SignWithStyle.outline(color: Colors.red),
                  ),
                  SignWithApple(
                    style: SignWithStyle.filled(background: Colors.black),
                  ),
                  SignWithEmail(
                    style: SignWithStyle.outline(color: Colors.grey),
                  ),
                ],
                countInRow: 1,
                height: 55,
                spaceBetween: 12,
                onSign: _handleSignIn,
              ),
            ),

            // Example 7: Custom Styling
            _buildExampleSection(
              title: '7. Custom Advanced Styling',
              description: 'Completely custom button styles',
              child: SignWithBtn(
                signTypes: [
                  SignWithGoogle(
                    style: SignWithStyle(
                      buttonStyle: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red[50]),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.red,
                        ),
                        elevation: const WidgetStatePropertyAll(2),
                        shadowColor: WidgetStatePropertyAll(Colors.red[100]),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(color: Colors.red, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SignWithApple(
                    style: SignWithStyle(
                      buttonStyle: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(
                          Colors.black,
                        ),
                        foregroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                        elevation: const WidgetStatePropertyAll(4),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                height: 60,
                spaceBetween: 15,
                onSign: _handleSignIn,
              ),
            ),

            // Example 8: Global Style Override
            _buildExampleSection(
              title: '8. Global vs Individual Styles',
              description: 'Global style with individual overrides',
              child: SignWithBtn(
                style: SignWithStyle.outline(color: Colors.purple),
                signTypes: [
                  const SignWithGoogle(), // Uses global style
                  SignWithApple(
                    // Individual style overrides global
                    style: SignWithStyle.filled(background: Colors.black),
                  ),
                  const SignWithFacebook(), // Uses global style
                  SignWithEmail(
                    // Individual style overrides global
                    style: SignWithStyle.filled(background: Colors.orange),
                  ),
                ],
                onSign: _handleSignIn,
              ),
            ),

            const SizedBox(height: 32),

            // Footer
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '🎉 Sign With Button Package',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'A beautiful Flutter package for creating customizable sign-in buttons',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Made with ❤️ by Mohamed Maher',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleSection({
    required String title,
    required String description,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
        const SizedBox(height: 12),
        Card(
          elevation: 2,
          child: Padding(padding: const EdgeInsets.all(16.0), child: child),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
