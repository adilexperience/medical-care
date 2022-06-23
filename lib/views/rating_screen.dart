import 'package:care/utils/app_colors.dart';
import 'package:care/utils/components/app_header.dart';
import 'package:care/utils/components/custom-app-bar.dart';
import 'package:care/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class RateScreen extends StatelessWidget {
  const RateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(Constants().kDefaultPadding * 2),
                child: Column(
                  children: [
                    CustomAppBar(),
                    SizedBox(
                      height: Constants().kDefaultPadding * 8,
                    ),
                    SizedBox(height: 15),
                    Image.asset(
                      'assets/images/iqtae.jpg',
                      width: Constants().getScreenPropotionWidth(120, size),
                    ),
                    Text(
                      "How was your experience with Dr.Ibrahim?",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Your feedback matters",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: Constants().kDefaultPadding),
                    SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      size: 40,
                      spacing: Constants().kDefaultPadding,
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.all(Constants().kDefaultPadding),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(0.0, 15.0),
                            color: AppColors.textColor.withAlpha(20),
                          )
                        ],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: 2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Additional Comment',
                          hintStyle: TextStyle(
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
