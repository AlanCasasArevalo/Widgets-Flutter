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

  final double _emojiSize = 24;

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

  String formatCount(int value) {
    return value <= 1000
        ? value.toString()
        : "${(value / 1000).toStringAsFixed(1)} K";
  }

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    const reactions = Reactions.values;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 6,
                color: Color(0xffEBEBEB)
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                Avatar(size: 38, avatarAsset: 'assets/users/1.jpg'),
                const SizedBox(
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
          AspectRatio(
            aspectRatio: 16 / 9,
            child: CachedNetworkImage(
              height: _imageHeight,
              width: _imageWidth,
              fit: BoxFit.cover,
              imageUrl: publication.imageUrl,
            ),
          ),
          Padding(
            padding: padding.copyWith(top: 16),
            child: Text(
              publication.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      reactions.length,
                      (index) {
                        final reaction = reactions[index];
                        final isActiveReaction =
                            reaction == publication.currentUserReactions;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                _getEmojiPath(reaction),
                                width: _emojiSize,
                                height: _emojiSize,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Icon(
                                Icons.circle,
                                color: isActiveReaction
                                    ? Colors.redAccent
                                    : Colors.transparent,
                                size: 5,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "${formatCount(publication.commentsCount)} Comments",
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "${formatCount(publication.sharesCount)} Shares",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
