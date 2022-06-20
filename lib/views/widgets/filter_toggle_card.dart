import 'package:flutter/material.dart';

class FilterToggleCard extends StatelessWidget {
  final bool isSelected;
  final String assetName, title;
  final VoidCallback? onPressed;

  const FilterToggleCard({
    Key? key,
    required this.assetName,
    required this.title,
    this.isSelected = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0XFF460046).withOpacity(0.65)
              : const Color(0xFFF9F6FA),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/icons/$assetName",
              height: 60.0,
            ),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF301934),
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
