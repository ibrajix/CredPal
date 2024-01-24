import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'merchant_list_item.dart';

class MerchantWidget extends StatelessWidget {
  const MerchantWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.mainWhite,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Featured Merchants',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightPurpleShade4),
                ),
                Spacer(),
                Text(
                  'View all',
                  style: TextStyle(
                      color: AppColors.mainBlue, fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(height: 12),
            Column(
              children: List.generate(
                  3,
                  (index) => Row(
                        children: List.generate(
                            4,
                            (rowIndex) =>
                                const Expanded(child: MerchantListItem())),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
