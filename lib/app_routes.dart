import 'package:flutter_assigment08/screens/dashboard_screen.dart';
import 'package:flutter_assigment08/screens/welcome_screen.dart';

class AppRouter {
  static const String welcome = 'welcome';
  static const String dashboard = 'dashboard';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
        dashboard: (context) => const DashboardScreen(),
      };
}
