import 'package:doctor_consultan/constants.dart';
import 'package:doctor_consultan/screens/datail_screen.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  var _bgColor;

  DoctorCard(this._name, this._description, this._imageUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen(_name, _description, _imageUrl)));
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _bgColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(_imageUrl),
            title: Text(
              _name,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: kTitleTextColor),
            ),
            subtitle: Text(
              _description,
              style: TextStyle(color: kTitleTextColor.withOpacity(0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
