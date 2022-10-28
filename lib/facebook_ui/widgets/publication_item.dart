import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../models/publication.dart';
import '../../models/reactions.dart';
import 'avatar.dart';

class PublicationItem extends StatelessWidget {
  final Publication publication;

  const PublicationItem({super.key, required this.publication});

  final double _imageHeight = 180;
  final double _imageWidth = double.infinity;

  String _getEmojiPath(Reactions reaction) {
    switch (reaction) {
      case Reactions.like:
        return 'assets/emojis/like.svg';
      case Reactions.heart:
        return 'assets/emojis/heart.svg';
      case Reactions.laughing:
        return 'assets/emojis/laughing.svg';
      case Reactions.shocked:
        return 'assets/emojis/shocked.svg';
      case Reactions.sad:
        return 'assets/emojis/sad.svg';
      case Reactions.angry:
        return 'assets/emojis/angry.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    const reactions = Reactions.values;

    return Container(
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                Avatar(size: 38, avatarAsset: 'assets/users/1.jpg'),
                SizedBox(
                  width: 16,
                ),
                Text(
                  publication.user.username,
                ),
                Spacer(),
                Text(
                  timeago.format(publication.createdAt),
                ),
              ],
            ),
          ),
          CachedNetworkImage(
            height: _imageHeight,
            width: _imageWidth,
            fit: BoxFit.cover,
            imageUrl: publication.imageUrl,
          ),
          Padding(
            padding: padding.copyWith(top: 16),
            child: Text(
              publication.title,
            ),
          ),
          Row(
            children: [
              ...List.generate(
                reactions.length,
                (index) {
                  final reaction = reactions[index];
                  return SvgPicture.asset(
                    _getEmojiPath(reaction),
                    width: 32,
                    height: 32,
                  );
                }
              ),
            ],
          )
        ],
      ),
    );
  }
}
