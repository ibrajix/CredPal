import 'package:cred_pal/components/app_bar.dart';
import 'package:cred_pal/constants/app_colors.dart';
import 'package:cred_pal/widget/dashboard_app_bar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPurpleShade,
      appBar: appBarComponent(
          height: 160,
          backgroundColor: AppColors.lightPurple,
          content: const DashboardAppBar()),
    );
  }
}
