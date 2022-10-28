import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/facebook_ui/widgets/circle_buton.dart';
import 'package:widgets/icons/custom_icons_icons.dart';
import 'package:widgets/models/publication.dart';
import 'package:widgets/models/reactions.dart';
import 'package:widgets/models/user.dart';
import 'widgets/WhatIsOnYourMind.dart';
import 'widgets/publication_item.dart';
import 'widgets/quick_actions.dart';
import 'widgets/stories.dart';

class MyFacebookUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final random = faker.randomGenerator;
    const reactions = Reactions.values;
    final reactionsIndex = random.integer(reactions.length - 1);
    final publications = <Publication>[];

    for (int i = 0; i < 50; i++) {
      final publication = Publication(
          title: faker.lorem.sentence(),
          imageUrl: faker.image.image(),
          createdAt: faker.date.dateTime(),
          commentsCount: random.integer(50000),
          sharesCount: random.integer(50000),
          user: User(
            faker.person.firstName(),
            faker.image.image(),
          ),
          currentUserReactions: reactions[reactionsIndex]);
      publications.add(publication);
    }

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
          const Padding(
            padding: EdgeInsets.only(top: 32, right: 16, left: 16),
            child: WhatIsOnYourMind(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
            child: QuickActions(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 0, left: 0),
            child: Stories(),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: publications.length,
            itemBuilder: (_, index) {
              return PublicationItem(
                publication: publications[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
