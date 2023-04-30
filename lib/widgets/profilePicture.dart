import 'package:flutter/material.dart';
import 'package:xgrid_internship/utils/ThemeData.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    // circular avatar with yellow border
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(
            // primary color of theme
            color: Theme.of(context).primaryColor,
            width: 5.0,
          ),
        ),
        child: const Icon(
          Icons.person_outline,
          color: primaryColor,
          size: 45,
        ));
  }
}
