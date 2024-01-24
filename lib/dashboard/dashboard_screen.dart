import 'package:cred_pal/components/app_bar.dart';
import 'package:cred_pal/constants/app_colors.dart';
import 'package:cred_pal/widget/dashboard_app_bar.dart';
import 'package:cred_pal/widget/merchant_widget.dart';
import 'package:cred_pal/widget/product_widget.dart';
import 'package:cred_pal/widget/search_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      appBar: appBarComponent(
          height: 160,
          backgroundColor: AppColors.lightPurple,
          content: const DashboardAppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 18),
            SearchWidget(searchController: searchController),
            const SizedBox(height: 24),
            const ProductWidget(),
            const SizedBox(height: 10),
            const MerchantWidget()
          ],
        ),
      ),
    );
  }
}
