import 'package:flutter/material.dart';
import 'package:student_hub/widgets/screen_header.dart';
import '../../widgets/custom_app_bar.dart';

class EnrollmentSchedulesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(title: 'Enrollment Schedules'),
        body: Column(
          children: [
            const ScreenHeader(screenName: "Enrollment Schedules"),
            const Expanded(
              child: Center(child: Text("Enrollment Schedules Screen", style: TextStyle(fontSize: 24))),
            ),
          ],
        ),
      );
}
