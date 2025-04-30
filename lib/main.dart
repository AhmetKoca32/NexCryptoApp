import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart'; // AppRoutes sınıfını import ettik

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NexCrypto',
      theme: ThemeData(
        fontFamily: 'Poppins', primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.splashScreen, // Splash ekranından başlat
      onGenerateRoute:
          AppRoutes
              .generateRoute, // Yönlendirmeler AppRoutes üzerinden yapılacak
    );
  }
}
