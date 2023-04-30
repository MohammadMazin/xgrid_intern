import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button extends StatelessWidget {
  // constructor that takes icon and text
  final IconData icon;
  final String text;
  const Button({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child:
          // button with border radius and gray background
          ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
