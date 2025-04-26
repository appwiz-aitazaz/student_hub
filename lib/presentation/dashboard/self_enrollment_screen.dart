import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/screen_header.dart';

class SelfEnrollmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(title: 'Self Enrollment'),
        body: Column(
          children: [
            const ScreenHeader(screenName: "Self Enrollment"),
            const Expanded(
              child: Center(child: Text("Self Enrollment Screen", style: TextStyle(fontSize: 24))),
            ),
          ],
        ),
      );
}