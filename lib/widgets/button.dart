import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  // constructor that takes icon and text
  final IconData icon;
  final String text;
  const SettingsButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Row(children: [
            Icon(icon, color: Colors.black),
            SizedBox(
              width: 10,
            ),
            Text(text, style: TextStyle(fontSize: 16, color: Colors.black)),
            Spacer(),
            Icon(Icons.arrow_forward, color: Colors.black),
          ]),
        ),
      ),
    );
  }
}
