import 'package:login_screen/presentation/slash_screen/slash_screen.dart';
import 'package:login_screen/presentation/slash_screen/binding/slash_binding.dart';
import 'package:login_screen/presentation/signup_screen/signup_screen.dart';
import 'package:login_screen/presentation/signup_screen/binding/signup_binding.dart';
import 'package:login_screen/presentation/login_screen/login_screen.dart';
import 'package:login_screen/presentation/login_screen/binding/login_binding.dart';
import 'package:login_screen/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:login_screen/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String slashScreen = '/slash_screen';

  static String signupScreen = '/signup_screen';

  static String loginScreen = '/login_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: slashScreen,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SlashScreen(),
      bindings: [
        SlashBinding(),
      ],
    )
  ];
}
