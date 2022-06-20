import 'package:care/models/medicine_model.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MedicineDetailScreen extends StatefulWidget {
  final MedicineModel medicine;
  const MedicineDetailScreen({
    Key? key,
    required this.medicine,
  }) : super(key: key);

  @override
  State<MedicineDetailScreen> createState() => _MedicineDetailScreenState();
}

class _MedicineDetailScreenState extends State<MedicineDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.medicine.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              widget.medicine.image,
              height: 300.0,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10.0),
                  Text(
                    widget.medicine.title,
                    style: TextStyle(
                      color: AppColors.appBlackColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    widget.medicine.description,
                    style: TextStyle(
                      color: AppColors.appGreyColor,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
