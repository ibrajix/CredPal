import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/app_input_field.dart';
import '../constants/images.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController searchController;
  const SearchWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
