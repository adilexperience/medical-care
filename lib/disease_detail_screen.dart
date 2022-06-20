import 'package:care/models/disease_model.dart';
import 'package:care/models/medicine_model.dart';
import 'package:care/utils/data.dart';
import 'package:care/views/widgets/medicine_card.dart';
import 'package:flutter/material.dart';

import 'models/doctor_model.dart';
import 'utils/app_colors.dart';
import 'views/widgets/doctor_card.dart';

class DiseaseDetailScreen extends StatefulWidget {
  final DiseaseModel disease;
  const DiseaseDetailScreen({
    Key? key,
    required this.disease,
  }) : super(key: key);

  @override
  State<DiseaseDetailScreen> createState() => _DiseaseDetailScreenState();
}

class _DiseaseDetailScreenState extends State<DiseaseDetailScreen> {
  List<DoctorModel> doctors = [];
  List<MedicineModel> medicines = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.disease.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                widget.disease.title,
                style: TextStyle(
                  color: AppColors.appBlackColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                widget.disease.description,
                style: TextStyle(
                  color: AppColors.appGreyColor,
                  fontSize: 16.0,
                ),
              ),
              getMedicinesCount() == 0
                  ? const SizedBox.shrink()
                  : const SizedBox(height: 20.0),
              getMedicinesCount() == 0
                  ? const SizedBox.shrink()
                  : Text(
                      "Recommended Medicines for this disease:",
                      style: TextStyle(
                        color: AppColors.appBlackColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              getMedicinesCount() == 0
                  ? const SizedBox.shrink()
                  : const SizedBox(height: 20.0),
              getMedicinesCount() == 0
                  ? const SizedBox.shrink()
                  : ListView.builder(
                      itemCount: getMedicinesCount(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        MedicineModel medicine = medicines[index];
                        return MedicineCard(medicine: medicine);
                      },
                    ),
              const SizedBox(height: 20.0),
              Text(
                "Suggested doctors",
                style: TextStyle(
                  color: AppColors.appBlackColor,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ListView.builder(
                itemCount: getDoctorsCount(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  DoctorModel doctor = doctors[index];
                  return DoctorCard(doctor: doctor);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  int getDoctorsCount() {
    int _count = 0;
    for (var value in Data()
        .listing
        .where((element) => element.isDoctor == true)
        .toList()) {
      if (value.tags.contains(widget.disease.title.toLowerCase())) {
        doctors.add(value.doctors!);
        _count++;
      }
    }
    return _count;
  }

  int getMedicinesCount() {
    int _count = 0;
    for (var value in Data()
        .listing
        .where((element) => element.isMedicine == true)
        .toList()) {
      if (value.tags.contains(widget.disease.title.toLowerCase())) {
        medicines.add(value.medicine!);
        _count++;
      }
    }
    return _count;
  }
}
