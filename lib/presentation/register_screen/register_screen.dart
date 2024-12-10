import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_field.dart';


class RegisterScreen extends StatelessWidget{
    RegisterScreen({Key? key})
      : super(
         key: key
        );

  TextEditingController fullNameInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child:SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SizedBox(
                      height: 162.h,
                      width: 202.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse2,
                            height: 162.h,
                            width: 146.h,
                            alignment: Alignment.topLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3,
                          height: 106.h,
                          width: double.maxFinite,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                   ),
                   SizedBox(height: 14.h),
                   Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 26.h,
                        right: 38.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                Text(
                                  "Welcome to StudentHub!",
                                  style: CustomTextStyles.headlineSmallInikaBlack900,
                                ),
                                SizedBox(height: 80.h),
                                _buildFullNameInput(context),
                                 SizedBox(height: 36.h),
                                _buildEmailInput(context),
                                 SizedBox(height: 36.h),
                                _buildPasswordInput(context),
                                 SizedBox(height: 40.h),
                                _buildConfirmPasswordInput(context),
                                 SizedBox(height: 88.h),
                                _buildRegisterButton(context),
                                 SizedBox(height: 12.h),
                                 Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 18.h,
                                    width: 208.h,
                                    margin: EdgeInsets.only(right: 26.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 1.h,
                                            width: 1.h,
                                            margin: EdgeInsets.only(left: 36.h),
                                            decoration: BoxDecoration(
                                              color: appTheme.blueGray100,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                     "Already have an account?" ,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                       ],
                      ),
                    ),
                    SizedBox(height: 38.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///Section Widget
  Widget _buildFullNameInput (BuildContext context) {
     return CustomTextFormField(
      controller: fullNameInputController,
      hintText: "Enter your full Name",
      contentPadding: EdgeInsets.symmetric(
        horizontal: 18.h,
       vertical: 14.h,
     ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput (BuildContext context) {
    return CustomTextFormField(
      controller: emailInputController,
      hintText: "Enter your email",
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.h,
      ),
    );
  }

  ///Section Widget
  Widget _buildPasswordInput (BuildContext context) {
     return CustomTextFormField(
      controller: passwordInputController,
      hintText: "Enter your password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 18.h,
       vertical: 14.h,
     ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordInput (BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordController,
      hintText: " Confirm Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.h,
      ),
    );
  }
  /// Section Widget
  Widget _buildRegisterButton (BuildContext context) {
    return CustomElevatedButton(
      text: "Register",
      margin: EdgeInsets.only(
        left: 26.h,
        right: 32.h,
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhaveanaccount (BuildContext context) {
  Navigator.pushNamed (context, AppRoutes.loginScreen);
  }
}