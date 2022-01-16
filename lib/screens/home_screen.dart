import 'package:doctor_consultan/components/category_card.dart';
import 'package:doctor_consultan/components/doctor_card.dart';
import 'package:doctor_consultan/components/search_bar.dart';
import 'package:doctor_consultan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/menu.svg'),
                  SvgPicture.asset('assets/icons/profile.svg'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Find Your Desired\nDoctor',
                style: TextStyle(
                    color: kTitleTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SearchBar(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Category',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            builCategoryList(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Top Doctors',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildDoctorList(),
          ],
        ),
      ),
    ));
  }
}

builCategoryList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(width: 30),
        CategoryCard(
            'Dental\nSurgeon', 'assets/icons/dental_surgeon.png', kBlueColor),
        SizedBox(width: 10),
        CategoryCard('Heart\nSpecialist', 'assets/icons/heart_surgeon.png',
            kOrangeColor),
        SizedBox(width: 10),
        CategoryCard(
            'Eye\nSpecialist', 'assets/icons/eye_specialist.png', kYellowColor),
        SizedBox(width: 30),
      ],
    ),
  );
}

buildDoctorList() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        DoctorCard('Dr. Elly', 'Heart Surgeon', 'assets/images/doctor1.png',
            kBlueColor),
        SizedBox(
          height: 20,
        ),
        DoctorCard('Dr. Chandra', 'Dental Surgeon', 'assets/images/doctor2.png',
            kBlueColor),
        SizedBox(
          height: 20,
        ),
        DoctorCard('Dr. Stephanie', 'Eye Specialist',
            'assets/images/doctor3.png', kBlueColor),
        SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
