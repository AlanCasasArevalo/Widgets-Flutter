import 'package:flutter/material.dart';
import 'package:widgets/facebook_ui/widgets/avatar.dart';
import '../../models/story_model.dart';

final _stories = [
  StoryModel('assets/wallpapers/1.jpeg', 'assets/users/1.jpg',
      ' Bibi Bibi Bibi Bibi Bibi Bibi Bibi Bibi Bibi Bibi'),
  StoryModel('assets/wallpapers/2.jpeg', 'assets/users/2.jpg', 'Pepe'),
  StoryModel('assets/wallpapers/3.jpeg', 'assets/users/3.jpg', 'Juan'),
  StoryModel('assets/wallpapers/4.jpeg', 'assets/users/4.jpg', 'Felipe'),
  StoryModel('assets/wallpapers/5.jpeg', 'assets/users/5.jpg', 'Juan'),
  StoryModel('assets/wallpapers/6.jpeg', 'assets/users/6.jpg', 'Marcos'),
  StoryModel('assets/wallpapers/1.jpeg', 'assets/users/7.jpg', 'Antonio'),
  StoryModel('assets/wallpapers/2.jpeg', 'assets/users/8.jpg', 'Armenio'),
];

class Stories extends StatelessWidget {

  final double _backgroundHeight = 160;
  final double _backgroundWidth = 90;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _backgroundHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return Container(
            height: _backgroundHeight,
            width: _backgroundWidth,
            margin: EdgeInsets.only(
              right: 16,
              left: index == 0 ? 16 : 0
            ),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(story.backgroundImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Avatar(
                          size: 50,
                          avatarAsset: story.avatar,
                          borderWidth: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  story.username,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
