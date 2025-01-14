import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
 const AppNavigationScreen({Key? key})
     : super(
          key: key,
        );

  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width:375.h,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                 color: Color (0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric (horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily:'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox (height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox (height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color (0XFFFFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the button vertically
                      children: [
                          _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 16 Pro One",
                          onTapScreenTitle: () => onTapScreenTitle(
                               context, AppRoutes.oneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle (context, AppRoutes.loginScreen),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ], 
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap:() {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children:[
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric (horizontal: 20.h),
              child:Text(
                screenTitle,
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Color (0XFF000000),
                  fontSize:20.fSize,
                  fontFamily:'Roboto',
                  fontWeight:FontWeight.w400,
                ),
              ),
            ),
            SizedBox (height: 10.h),
            SizedBox (height:5.h),
            Divider(
               height:1.h,
               thickness:1.h,
               color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }
  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed (context, routeName);
  }
}