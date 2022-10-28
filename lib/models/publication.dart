import 'reactions.dart';
import 'user.dart';

class Publication {
  final String title;
  final String imageUrl;
  final DateTime createdAt;
  final int commentsCount;
  final int sharesCount;
  final User user;
  final Reactions currentUserReactions;

  Publication(
      {required this.title,
      required this.imageUrl,
      required this.createdAt,
      required this.commentsCount,
      required this.sharesCount,
      required this.user,
      required this.currentUserReactions});
}
