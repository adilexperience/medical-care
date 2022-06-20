import 'package:care/models/medicine_model.dart';
import 'package:care/utils/app_colors.dart';
import 'package:care/views/medicine_detail_screen.dart';
import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  final MedicineModel medicine;
  const MedicineCard({
    Key? key,
    required this.medicine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MedicineDetailScreen(medicine: medicine),
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
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.network(
                        medicine.image,
                        height: 200.0,
                      ),
                      Text(
                        medicine.title,
                        style: TextStyle(
                          color: AppColors.appBlackColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        medicine.description,
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
                                  "More details",
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
