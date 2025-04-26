import 'package:flutter/material.dart';
import 'package:student_hub/presentation/dashboard/complaint_screen.dart';
import 'package:student_hub/presentation/profile_completion/complete_profile.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/one_screen/one_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/dashboard/homescreen.dart';
import '../presentation/dashboard/document_submission_screen.dart';
import '../presentation/dashboard/complaint_screen.dart';
// ignore_for_file: must_be_immutable
class AppRoutes {
  
static const String oneScreen ='/one_screen';

static const String registerScreen = '/register_screen';

static const String loginScreen = '/login_screen';

static const String appNavigationScreen = '/app_navigation_screen';

static const String initialRoute = loginScreen;

static const String completeProfile = '/completeProfile';

static const String dashboard = '/dashboard';

static const String documentSubmission = '/document_submission';

static const String complaintScreen = '/complaints';

static Map<String, WidgetBuilder> routes = {

  registerScreen: (context) => RegisterScreen(),
 // loginScreen: (context) => LoginScreen(),
  appNavigationScreen: (context) => AppNavigationScreen(),
  initialRoute: (context) => OneScreen(),
  completeProfile: (context) => CompleteProfileScreen(),
  dashboard: (context) => HomeScreen(),
  oneScreen: (context) => OneScreen(),
  documentSubmission: (context) => DocumentSubmissionScreen(),
  complaintScreen: (context) => ComplaintScreen(),

};
}
