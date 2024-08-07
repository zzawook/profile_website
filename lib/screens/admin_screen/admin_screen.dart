import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:profile_website/screens/admin_screen/widget/resume_upload_container.dart';
import 'package:profile_website/screens/common/custom_app_bar.dart';
import 'package:profile_website/screens/common/custom_task_bar.dart';

class AdminScreen extends StatelessWidget {

  final String? password;
  const AdminScreen({
    super.key,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff23283d),
        ),
        child: Column(
          children: [
            const CustomTaskBar(),
            Expanded(
              child: Row(
                children: [
                  CustomAppBar(
                    currentLocation: GoRouter.of(context)
                        .routerDelegate
                        .currentConfiguration
                        .uri
                        .toString(),
                  ),
                  ResumeUploadContainer(password: password),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
