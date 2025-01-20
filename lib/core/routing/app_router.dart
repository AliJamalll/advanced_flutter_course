import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';  // Import MaterialPageRoute
import 'package:flutter_project_omar/core/routing/routes.dart';
import 'package:flutter_project_omar/features/login/ui/login_screen.dart';
import 'package:flutter_project_omar/features/onboarding/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No routes defiend for ${settings.name}'),
            ),
          ), // Default route (or error page)
        );
    }
  }
}
