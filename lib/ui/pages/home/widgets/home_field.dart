import 'package:flutter/material.dart';

class HomeField extends StatelessWidget {
  final String title;
  final String label;
  final IconData? icon;
  final bool? obscureText;

  HomeField({
    required this.title,
    required this.label,
    this.icon,
    this.obscureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  color: const Color(0xff008c99),
                  size: 24.0,
                ),
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
          TextField(
            obscureText: obscureText!,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label,
            ),
          ),
        ],
      ),
    );
  }
}
