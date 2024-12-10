import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/one_screen/one_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/register_screen/register_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
static const String oneScreen ='/one_screen';

static const String registerScreen = '/register_screen';

static const String loginScreen = '/login_screen';

static const String appNavigationScreen = '/app_navigation_screen';

static const String initialRoute = '/initialRoute';

static Map<String, WidgetBuilder> routes = {
  oneScreen: (context) => OneScreen(),
  registerScreen: (context) => RegisterScreen(),
  loginScreen: (context) => LoginScreen(),
  appNavigationScreen: (context) => AppNavigationScreen(),
  initialRoute: (context) => OneScreen()
};
}