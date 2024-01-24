import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../components/app_button.dart';
import '../constants/app_colors.dart';
import '../constants/images.dart';

class DashboardAppBar extends StatefulWidget {
  const DashboardAppBar({super.key});

  @override
  State<DashboardAppBar> createState() => _DashboardAppBarState();
}

class _DashboardAppBarState extends State<DashboardAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pay later',
              style: TextStyle(
                  color: AppColors.darkShade,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  'everywhere',
                  style: TextStyle(
                      color: AppColors.darkShade,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 7),
                SvgPicture.asset(AppImages.exclamation),
              ],
            ),
          ],
        ),
        const SizedBox(width: 60),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Shopping limit: N0',
                style: TextStyle(color: AppColors.darkBlue, fontSize: 12),
              ),
              const SizedBox(height: 10),
              AppButton(onClicked: () {}, text: 'Activate Credit')
            ],
          ),
        )
      ],
    );
  }
}
