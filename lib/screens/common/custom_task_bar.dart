import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTaskBar extends StatelessWidget {
  const CustomTaskBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff23283d),
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xff1b1e2f),
          ),
        ),
      ),
      height: 35,
      width: double.infinity,
      child: Container(
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              width: 15,
              height: 15,
              margin: const EdgeInsets.only(
                left: 10,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              width: 15,
              height: 15,
              margin: const EdgeInsets.only(
                left: 5,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              width: 15,
              height: 15,
              margin: const EdgeInsets.only(
                left: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
