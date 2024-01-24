import 'package:cred_pal/components/app_bar.dart';
import 'package:cred_pal/components/app_input_field.dart';
import 'package:cred_pal/constants/app_colors.dart';
import 'package:cred_pal/constants/images.dart';
import 'package:cred_pal/widget/dashboard_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: AppInputField(
                        widthPercent: 0.9,
                        prefixWidget: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: SvgPicture.asset(
                            AppImages.search,
                          ),
                        ),
                        labelText: "Search for products or stores",
                        controller: searchController),
                  ),
                  SvgPicture.asset(AppImages.scan)
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: AppColors.lightPurpleShade3,
              child:
                  Padding(padding: const EdgeInsets.all(20), child: Text("")),
            ),
          ],
        ),
      ),
    );
  }
}
