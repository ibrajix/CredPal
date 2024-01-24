import 'package:cred_pal/widget/product_list_item.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.lightPurpleShade3,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      List.generate(10, (index) => const ProductListItem()),
                )),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      List.generate(10, (index) => const ProductListItem()),
                )),
          ],
        ),
      ),
    );
  }
}
