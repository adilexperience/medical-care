import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final String localImage;
  final double width, height;
  final VoidCallback? onPressed;

  const ButtonIcon({
    Key? key,
    this.localImage = "assets/images/dummy_image.png",
    this.onPressed,
    this.width = 25.0,
    this.height = 25.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.pop(context),
      child: Image.asset(
        localImage,
        height: height,
        width: width,
      ),
    );
  }
}
