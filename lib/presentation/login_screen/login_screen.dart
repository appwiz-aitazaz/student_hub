import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_from_field.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
         key: key
        );

  TextEditingController emailContoller = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   SizedBox(
                      height: 486.h,
                      width: 364.h,
                      child: Stack(
                        alignment: Alignment.center,
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
                          width: 190.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 12.h),
                        ),
                        CustomTextFormField(
                          controller: emailContoller,
                          hintText: "Enter your email",
                          textInputType: TextInputType.emailAddress,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.h,
                            vertical: 14.h,
                          ),
                        ),
                        CustomImageView(
                            imagePath: ImageConstant.imgLogin,
                            height: 362.h,
                            width: 290.h,
                            margin: EdgeInsets.only(
                              right: 24.h,
                              bottom: 26.h,
                            ),
                          ),
                        ],
                      ),
                    ),  
                    SizedBox(height: 42.h,),
                    _buildConfirmPasswordSection(context),
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

  ///Section WIdgert
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 38.h,
      ),
      child:  Column(
        children: [
          CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "Confirm Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 14.h,
            ),
          ),
          SizedBox(height: 78.h),
          Text(
            "Forget Password",
            style: CustomTextStyles.bodyMediumTeal400,
          ),
          SizedBox(height: 14.h),
          CustomElevatedButton(
            text: "Login",
            margin: EdgeInsets.only(
              left: 26.h,
              right: 32.h,
            ),
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 18.h,
              width: 204.h,
              margin: EdgeInsets.only(right: 26.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 1.h,
                      width: 1.h,
                      margin: EdgeInsets.only(left: 34.h),
                      decoration:  BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child:  RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(
                            text:"Don't have any account?",
                            style: CustomTextStyles.bodyMediumImprimaBlack90014,
                          ),
                          TextSpan(
                            text:" Sign up",
                            style: theme.textTheme.titleSmall,
                          ),
                        ] 
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
          )    
        ],
      ),
    );
  }

  ///Navigate to the Registration Screen when the action is triggered
  onTapTxtDonthaveanyaccount(BuildContext context){
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}