import 'package:flutter/material.dart';
import 'package:student_hub/widgets/header_design.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // Controllers for form fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Form key for validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderDesign(),
                _buildContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Main content section with inputs and buttons
  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h).copyWith(right: 38.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          Text(
            "Welcome Back!",
            style: CustomTextStyles.headlineSmallInikaBlack900,
          ),
          SizedBox(height: 40.h),
          _buildEmailInput(),
          SizedBox(height: 36.h),
          _buildPasswordInput(),
          SizedBox(height: 18.h),
          _buildForgotPasswordText(),
          SizedBox(height: 50.h),
          _buildLoginButton(),
          SizedBox(height: 22.h),
          _buildSignUpLink(context),
          SizedBox(height: 38.h),
        ],
      ),
    );
  }

  /// Email input field
  Widget _buildEmailInput() {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Enter your email",
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.h),
    );
  }

  /// Password input field
  Widget _buildPasswordInput() {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Enter your password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.h),
    );
  }

  /// Forgot password text
  Widget _buildForgotPasswordText() {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          // Handle forgot password action here
        },
        child: Text(
          "Forgot Password?",
          style: CustomTextStyles.bodyMediumTeal400,
        ),
      ),
    );
  }

  /// Login button
  Widget _buildLoginButton() {
    return CustomElevatedButton(
      text: "Login",
      margin: EdgeInsets.symmetric(horizontal: 26.h).copyWith(right: 32.h),
    );
  }

  /// Sign-up link
  Widget _buildSignUpLink(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, AppRoutes.registerScreen),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account?",
                style: CustomTextStyles.bodyMediumImprimaBlack90014,
              ),
              TextSpan(
                text: " Sign up",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
