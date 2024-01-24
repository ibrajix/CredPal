import 'package:cred_pal/constants/app_colors.dart';
import 'package:cred_pal/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppColors.mainWhite.withOpacity(0.7),
      elevation: 0,
      child: Container(
        width: 161,
        height: 180,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.asset(
                    AppImages.product,
                    width: 150, // Set the width of the product image
                    height: 150, // Set the height of the product image
                  ),
                  Positioned(
                    left: 10,
                    top: 0,
                    child: SvgPicture.asset(AppImages.sellerIcon,
                        width: 50, height: 50),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            const Text(
              'iPhone XS Max 4GB shsgsggs',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Text(
                  'N 39,780',
                  style: TextStyle(
                      fontSize: 11,
                      color: AppColors.mainBlue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 14),
                Text(
                  'N 39,780',
                  style: TextStyle(
                      fontSize: 11,
                      color: AppColors.lightGrey,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
