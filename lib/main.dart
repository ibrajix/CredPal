import 'package:cred_pal/constants/app_colors.dart';
import 'package:cred_pal/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          fontFamily: "Avenir",
          useMaterial3: false),
      home: const DashboardScreen(),
    );
  }
}
