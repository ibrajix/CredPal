import 'package:cred_pal/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MerchantListItem extends StatelessWidget {
  const MerchantListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SvgPicture.asset(AppImages.sellerIcon2),
          const SizedBox(height: 5),
          const Text(
            'Bassey',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
