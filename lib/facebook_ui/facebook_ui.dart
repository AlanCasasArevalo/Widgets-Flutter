import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/facebook_ui/widgets/avatar.dart';
import 'package:widgets/facebook_ui/widgets/circle_buton.dart';
import 'package:widgets/icons/custom_icons_icons.dart';

class MyFacebookUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook-logo.svg',
          color: Colors.blueAccent,
          width: 150,
        ),
        actions: const [
          CircleButton(
            color: Colors.grey,
            iconData: CustomIcons.search,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xffFA7571),
            iconData: CustomIcons.bell,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xff85B5F5),
            iconData: CustomIcons.user_friends,
            isShowBadge: true,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xff2386DD),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          Avatar(size: 100, avatarAsset: 'assets/users/1.jpg')
        ],
      ),
    );
  }
}
