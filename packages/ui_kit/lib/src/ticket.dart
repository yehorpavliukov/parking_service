import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Ticket extends StatelessWidget {
  final String type;
  final String title;
  final VoidCallback onTap;

  const Ticket({
    required this.title,
    required this.onTap,
    required this.type,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: Colors.black),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(title),
              Text(type),
              ActionButton(title: 'Remove', onTap: onTap),
            ],
          ),
        ),
      ),
    );
  }
}
