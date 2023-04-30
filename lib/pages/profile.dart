import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xgrid_internship/main.dart';
import 'package:xgrid_internship/utils/ThemeData.dart';
import 'package:xgrid_internship/widgets/button.dart';
import 'package:xgrid_internship/widgets/profilePicture.dart';
import 'package:xgrid_internship/widgets/settingsButton.dart';

import '../utils/DarkThemeProvider.dart';

class Profile extends StatelessWidget {
  Profile();
  final double GAP = 20;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);

    Icon renderIcon() {
      if (themeProvider.darkTheme) {
        return const Icon(Icons.wb_sunny_outlined);
      } else {
        return const Icon(Icons.nightlight_outlined);
      }
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: renderIcon(),
                  onPressed: () => MainApp.of(context).changeTheme(),
                ),
              ],
            ),
            const ProfilePicture(),
            SizedBox(height: GAP),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(height: GAP / 2),
            Text(
              'john.doe@example.com',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(height: GAP),
            const Button(
              text: 'Upgrade to PRO',
              color: primaryColor,
              width: 0.5,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: GAP * 2),
            const SettingsButton(
              icon: IconData(0xf2d0, fontFamily: 'MaterialIcons'),
              text: 'Privacy',
            ),
            SizedBox(height: GAP),
            const SettingsButton(
              icon: IconData(0xe314, fontFamily: 'MaterialIcons'),
              text: 'Purchase History',
            ),
            SizedBox(height: GAP),
            const SettingsButton(
              icon: IconData(0xe30b, fontFamily: 'MaterialIcons'),
              text: 'Help & Support',
            ),
            SizedBox(height: GAP),
            const SettingsButton(
              icon: Icons.settings_outlined,
              text: 'Settings',
            ),
            SizedBox(height: GAP),
            const SettingsButton(
              icon: Icons.person_add_outlined,
              text: 'Invite a Friend',
            ),
            SizedBox(height: GAP),
            const Button(
              text: 'Logout',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            SizedBox(height: GAP),
          ],
        ),
      ),
    );
  }
}
