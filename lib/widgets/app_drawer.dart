import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                ),
                const SizedBox(height: 10),
                Text(
                  'Mohammed Aitazaz Jamil',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '21011519-110',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ),
          ExpansionTile(
            leading: const Icon(Icons.school),
            title: const Text("Enrollment"),
            children: [
              ListTile(
                title: const Text("Enrolled Courses"),
                onTap: () {
                  Navigator.pushNamed(context, '/enrolled_courses');
                },
              ),
              ListTile(
                title: const Text("Self Enrollment"),
                onTap: () {
                  Navigator.pushNamed(context, '/self_enrollment');
                },
              ),
              ListTile(
                title: const Text("Enrollment Schedules"),
                onTap: () {
                  Navigator.pushNamed(context, '/enrollment_schedules');
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.receipt_long),
            title: const Text("Challan Management"),
            onTap: () {
              Navigator.pushNamed(context, '/challan_management');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text("Semester Management"),
            onTap: () {
              Navigator.pushNamed(context, '/semester_management');
            },
          ),
          ExpansionTile(
            leading: const Icon(Icons.request_page),
            title: const Text("Requests"),
            children: [
              ListTile(
                title: const Text("Course Withdraw"),
                onTap: () {
                  Navigator.pushNamed(context, '/course_withdraw');
                },
              ),
              ListTile(
                title: const Text("Transcript"),
                onTap: () {
                  Navigator.pushNamed(context, '/transcript');
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text("Document Submission"),
            onTap: () {
              Navigator.pushNamed(context, '/document_submission');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            onTap: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
          ListTile(
            leading: const Icon(Icons.report),
            title: const Text("Complaints"),
            onTap: () {
              Navigator.pushNamed(context, '/complaints');
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text("Feedback"),
            onTap: () {
              Navigator.pushNamed(context, '/feedback');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/login',
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}