import 'package:flutter/material.dart';
import 'package:doctor_consultan/constants.dart';
import 'package:doctor_consultan/screens/home_screen.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/onboarding_illustration.png',
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose Your Doctor\nYou Want',
                          style: TextStyle(
                              fontSize: 32,
                              color: kTitleTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Lorem ipsum dolor amet, consectetur\nadipiscing inet deli',
                          style: TextStyle(
                              color: kTitleTextColor.withOpacity(0.7),
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          color: kOrangeColor,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Get Started',
                            style: TextStyle(color: kWhiteColor, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
