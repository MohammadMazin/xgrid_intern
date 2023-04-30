import 'package:flutter/material.dart';
import 'package:xgrid_internship/main.dart';
import 'package:xgrid_internship/widgets/button.dart';
import 'package:xgrid_internship/widgets/profilePicture.dart';

class Profile extends StatelessWidget {
  Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ProfilePicture(),
          SizedBox(
            height: 4,
          ),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'john.doe@example.com',
          ),
          Button(
            icon: IconData(0xe4ed, fontFamily: 'MaterialIcons'),
            text: 'Privacy',
          )
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
