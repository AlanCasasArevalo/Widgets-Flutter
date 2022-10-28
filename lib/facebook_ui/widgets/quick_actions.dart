import 'package:flutter/material.dart';
import '../../icons/custom_icons_icons.dart';
import 'circle_buton.dart';

class QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 24),
          decoration: BoxDecoration(
            color: const Color(0xffecf8e9),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: const [
              CircleButton(
                color: Color(0xffaee2a4),
                iconData: CustomIcons.photos,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Gallery",
                style: TextStyle(
                  color: Color(0xffaee2a4),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
