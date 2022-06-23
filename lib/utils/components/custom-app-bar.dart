import 'package:care/utils/app_colors.dart';
import 'package:care/utils/components/round_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundButton(
          icon: Icon(Icons.arrow_back),
          iconColor: AppColors.primaryColor,
          bqColor: Colors.white,
          Top: () {},
        ),
        SizedBox(width: 160),
        Text(
          "Contact Support",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
