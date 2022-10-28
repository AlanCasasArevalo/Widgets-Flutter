import 'package:flutter/material.dart';
import 'package:widgets/facebook_ui/widgets/avatar.dart';

import '../../models/story_model.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    Key? key,
    required double backgroundHeight,
    required double backgroundWidth,
    required bool isFirstItem,
    required this.story,
  })  : _backgroundHeight = backgroundHeight,
        _backgroundWidth = backgroundWidth,
        _isFirstItem = isFirstItem,
        super(key: key);

  final double _backgroundHeight;
  final double _backgroundWidth;
  final bool _isFirstItem;
  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _backgroundHeight,
      width: _backgroundWidth,
      margin: EdgeInsets.only(right: 16, left: _isFirstItem ? 16 : 0),
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
  }
}
