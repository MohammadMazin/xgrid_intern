import 'package:flutter/material.dart';
import 'package:xgrid_internship/utils/ThemeData.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 125,
        height: 125,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 5.0,
          ),
        ),
        child: const Icon(
          Icons.person_outline,
          color: primaryColor,
          size: 60,
        ));
  }
}
