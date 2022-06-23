import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  const RoundButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.bqColor,
    required this.Top,

  }) : super(key: key);

  final Icon icon;
  final Color iconColor,bqColor;

  final GestureTapCallback Top;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        color:Colors.white,
      ),
      child:IconButton(
        icon: icon,
        onPressed: () {},
        color: iconColor,
      ) ,
    );
  }
}