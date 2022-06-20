import 'package:care/models/search_filter_model.dart';
import 'package:care/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SearchFilterItemCard extends StatelessWidget {
  final bool isSelected;
  final bool isFirstItem;
  final SearchFilterModel searchFilter;
  final VoidCallback? onPressed;

  const SearchFilterItemCard({
    Key? key,
    required this.isSelected,
    required this.isFirstItem,
    required this.searchFilter,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.appWhiteColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.appGreyColor.withOpacity(0.10),
              offset: Offset(1, 1),
              blurRadius: 5.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 5.0,
        ),
        margin: EdgeInsets.only(
          right: 10.0,
          top: 5.0,
          bottom: 5.0,
          left: isFirstItem ? 5.0 : 0.0,
        ),
        child: Center(
          child: Text(
            searchFilter.title,
            style: TextStyle(
              color: isSelected
                  ? AppColors.appWhiteColor
                  : AppColors.appBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}
