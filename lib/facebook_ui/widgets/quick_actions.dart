import 'package:flutter/material.dart';
import '../../icons/custom_icons_icons.dart';
import 'circle_buton.dart';

class QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuickButton(
          title: "Gallery",
          iconData: CustomIcons.photos,
          color: Color(0xff92be87),
        ),
        SizedBox(width: 16,),
        QuickButton(
          title: "Tag friends",
          iconData: CustomIcons.user_friends,
          color: Color(0xff2880d4),
        ),
        SizedBox(width: 16,),
        QuickButton(
          title: "Live",
          iconData: CustomIcons.video_camera,
          color: Color(0xffFb7171),
        ),
      ],
    );
  }
}

class QuickButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String title;

  const QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24),
      decoration: BoxDecoration(
        color: color.withOpacity(.28),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color.withOpacity(.75),
            iconData: iconData,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: TextStyle(
              color: color.withOpacity(1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
