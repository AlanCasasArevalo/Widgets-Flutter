import 'package:flutter/material.dart';
import 'package:widgets/facebook_ui/widgets/avatar.dart';
import '../../models/story_model.dart';

final _stories = [
  StoryModel('assets/wallpapers/1.jpeg', 'assets/users/1.jpg', 'Bibi'),
  StoryModel('assets/wallpapers/2.jpeg', 'assets/users/2.jpg', 'Pepe'),
  StoryModel('assets/wallpapers/3.jpeg', 'assets/users/3.jpg', 'Juan'),
  StoryModel('assets/wallpapers/4.jpeg', 'assets/users/4.jpg', 'Felipe'),
  StoryModel('assets/wallpapers/5.jpeg', 'assets/users/5.jpg', 'Juan'),
  StoryModel('assets/wallpapers/6.jpeg', 'assets/users/6.jpg', 'Marcos'),
  StoryModel('assets/wallpapers/1.jpeg', 'assets/users/7.jpg', 'Antonio'),
  StoryModel('assets/wallpapers/2.jpeg', 'assets/users/8.jpg', 'Armenio'),
];

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return SizedBox(
            height: 170,
            width: 120,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: 120,
                    height: 170 - (40 / 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
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
          );
        },
      ),
    );
  }
}
