// Tüm sayfalar arası yönlendirme rotalarını tanımlar.
// Navigator kullanımı buradan yönetilir.

// lib/core/routes/app_routes.dart

import 'package:flutter/material.dart';

import 'package:nex_crypto/features/splash/view/splash_screen.dart';
import 'package:nex_crypto/features/auth/view/login_screen.dart';
import 'package:nex_crypto/features/home/view/home_page.dart';

class AppRoutes {
  // Ana sayfalar için yollar
  static const String splashScreen = '/';
  static const String loginScreen = '/login';
  static const String homeScreen = '/home';

  // Route oluşturma metodu
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return _errorRoute();
    }
  }

  // Hata sayfası yönlendirmesi
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: Text('Error')),
            body: Center(child: Text('Page not found')),
          ),
    );
  }
}
