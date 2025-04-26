import 'package:flutter/material.dart';
import 'package:student_hub/widgets/screen_header.dart';
import '../../widgets/custom_app_bar.dart';

class AllNotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(title: 'All Notifications'),
        body: Column(
          children: [
            const ScreenHeader(screenName: "Notifications"),
            const Expanded(
              child: Center(child: Text("All Notifications Screen", style: TextStyle(fontSize: 24))),
            ),
          ],
        ),
      );
}