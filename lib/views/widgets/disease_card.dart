import 'package:care/disease_detail_screen.dart';
import 'package:care/models/disease_model.dart';
import 'package:care/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DiseaseCard extends StatelessWidget {
  final DiseaseModel disease;
  const DiseaseCard({
    Key? key,
    required this.disease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DiseaseDetailScreen(disease: disease),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appWhiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.appGreyColor.withOpacity(0.10),
              offset: Offset(1, 1),
              blurRadius: 5.0,
              spreadRadius: 5.0,
            ),
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        margin: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/icons/disease.png",
                  width: 50.0,
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        disease.title,
                        style: TextStyle(
                          color: AppColors.appBlackColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        disease.description,
                        style: TextStyle(
                          color: AppColors.appGreyColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 6.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "View details",
                                  style: TextStyle(
                                    color: AppColors.appWhiteColor,
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(width: 6.0),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 18.0,
                                  color: AppColors.appWhiteColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
