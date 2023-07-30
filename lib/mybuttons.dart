import 'package:flutter/material.dart';

class myCards extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const myCards({super.key, required this.buttonText, required this.iconImagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 90,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow:const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: (
              Image.asset(iconImagePath, fit: BoxFit.cover,)
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          buttonText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
