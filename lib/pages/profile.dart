import 'package:flutter/material.dart';
import 'package:xgrid_internship/main.dart';
import 'package:xgrid_internship/widgets/button.dart';
import 'package:xgrid_internship/widgets/profilePicture.dart';

class Profile extends StatelessWidget {
  Profile();
  final double GAP = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // moon icon on the right
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.nightlight_round_outlined),
                onPressed: () =>
                    // set theme to opposite of current
                    MainApp.of(context).changeTheme(),
              ),
            ],
          ),
          const ProfilePicture(),
          SizedBox(height: GAP),
          const Text(
            'John Doe',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: GAP),
          const Text(
            'john.doe@example.com',
          ),
          SizedBox(height: GAP),
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
        ],
      )),
    );
  }
}

// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Choose your theme:',
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                     onPressed: () =>
//                         MainApp.of(context).changeTheme(ThemeMode.light),
//                     child: Text('Light')),
//                 ElevatedButton(
//                     onPressed: () =>
//                         MainApp.of(context).changeTheme(ThemeMode.dark),
//                     child: Text('Dark')),
//               ],
//             ),
//           ],
//         ),
