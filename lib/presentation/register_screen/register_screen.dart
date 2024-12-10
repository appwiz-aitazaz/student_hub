import 'package:flutter/material.dart';
import 'package:student_hub/widgets/header_design.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  // Controllers for form fields
  final TextEditingController fullNameInputController = TextEditingController();
  final TextEditingController emailInputController = TextEditingController();
  final TextEditingController passwordInputController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
          SizedBox(
            height: 50.h,
          ),
          Text(
            "Welcome to StudentHub!",
            style: CustomTextStyles.headlineSmallInikaBlack900,
          ),
          SizedBox(height: 40.h),
          _buildFullNameInput(),
          SizedBox(height: 36.h),
          _buildEmailInput(),
          SizedBox(height: 36.h),
          _buildPasswordInput(),
          SizedBox(height: 40.h),
          _buildConfirmPasswordInput(),
          SizedBox(height: 50.h),
          _buildRegisterButton(),
          SizedBox(height: 22.h),
          _buildSignInLink(context),
          SizedBox(height: 38.h),
        ],
      ),
    );
  }

  /// Full name input field
  Widget _buildFullNameInput() {
    return CustomTextFormField(
      controller: fullNameInputController,
      hintText: "Enter your full Name",
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.h),
    );
  }

  /// Email input field
  Widget _buildEmailInput() {
    return CustomTextFormField(
      controller: emailInputController,
      hintText: "Enter your email",
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.h),
    );
  }

  /// Password input field
  Widget _buildPasswordInput() {
    return CustomTextFormField(
      controller: passwordInputController,
      hintText: "Enter your password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.h),
    );
  }

  /// Confirm password input field
  Widget _buildConfirmPasswordInput() {
    return CustomTextFormField(
      controller: confirmPasswordController,
      hintText: "Confirm Password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.h),
    );
  }

  /// Register button
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
      text: "Register",
      margin: EdgeInsets.symmetric(horizontal: 26.h).copyWith(right: 32.h),
    );
  }

  /// Sign-in link
  Widget _buildSignInLink(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, AppRoutes.loginScreen),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Already have an account?",
                style: CustomTextStyles.bodyMediumImprimaBlack90014,
              ),
              TextSpan(
                text: " Sign in",
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
