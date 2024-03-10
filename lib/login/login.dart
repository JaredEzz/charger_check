// Suggested code may be subject to a license. Learn more: ~LicenseLog:3386279823.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:730608814.

import 'package:charger_check/login/google_login_button.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Load the app logo from an asset image
            Image.asset('app_logo.png'),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const GoogleLoginButton(),

                  SignInWithAppleButton(onPressed: () {}),

                  // Continue as guest button
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement continue as guest functionality
                        },
                        child: const Text('Continue as Guest'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
