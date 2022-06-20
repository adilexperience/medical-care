import 'package:care/models/doctor_model.dart';
import 'package:care/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DoctorDetailScreen extends StatefulWidget {
  final DoctorModel doctor;
  const DoctorDetailScreen({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.doctor.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(widget.doctor.image),
                    radius: 50.0,
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        widget.doctor.name,
                        style: TextStyle(
                          color: AppColors.appBlackColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                "Clinic Address:",
                style: TextStyle(
                  color: AppColors.appBlackColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                widget.doctor.clinicAddress,
                style: TextStyle(
                  color: AppColors.appGreyColor,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                widget.doctor.details,
                style: TextStyle(
                  color: AppColors.appGreyColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 12.0,
        ),
        child: Text(
          "Book appointment now",
          style: TextStyle(
            color: AppColors.appWhiteColor,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
