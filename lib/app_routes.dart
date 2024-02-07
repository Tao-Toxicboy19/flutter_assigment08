import 'package:flutter_assigment08/screens/add_product_screen.dart';
import 'package:flutter_assigment08/screens/welcome_screen.dart';

class AppRouter {
  static const String welcome = 'welcome';
  static const String addProduct = 'addProduct';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
        addProduct: (context) => const AddProductScreen(),
      };
}
