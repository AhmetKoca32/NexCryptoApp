// lib/features/auth/view/login_screen.dart

import 'package:flutter/material.dart';
import '../../../core/routes/app_routes.dart'; // AppRoutes import edildi

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Login olduktan sonra home ekranına yönlendiriyoruz
            Navigator.pushReplacementNamed(
              context,
              AppRoutes.homeScreen,
            ); // AppRoutes üzerinden yönlendirme
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
