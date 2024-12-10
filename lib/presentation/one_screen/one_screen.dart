import 'package:flutter/material.dart';
import 'package:student_hub/presentation/login_screen/login_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class OneScreen extends StatelessWidget{
  const OneScreen({Key? key})
      : super(
          key:  key,
        );

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
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
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse2,
                          height: 162.h,
                          width: 146.h,
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
                  SizedBox(height: 30.h,),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      right: 38.h,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 24.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath:
                                   ImageConstant.imgOffice,
                                height: 230.h,
                                width: 232.h,
                                radius: BorderRadius.circular(
                                  12.h,
                                ),
                                margin: EdgeInsets.only(left: 20.h),
                              ),
                              SizedBox(height: 40.h),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Student Hub",
                                  style: CustomTextStyles
                                      .headlineSmallInikaBlack900
                                ),
                              ),
                              SizedBox(height: 40.h),
                              Text(
                                "StudentHub is designed to streamline and automate administative processes for university students, signigicantly reducing the need for in-person interactions and enhancing operational efficiency,",
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: 
                                    CustomTextStyles.bodyMediumImprimaBlack900,
                              ),
                              SizedBox(height: 74.h),
                              CustomElevatedButton(
                                text: "Get Started",
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  right: 14.h,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 70.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  /// Navigated to the loginScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}