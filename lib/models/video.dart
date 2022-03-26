import 'package:tiktokapp/models/user.dart';

class Video {
  final String videoUrl;
  final User postedBy;
  final String audioName;
  final String caption;
  final String comments;
  final String likes;

  Video(
    this.videoUrl,
    this.postedBy,
    this.caption,
    this.audioName,
    this.comments,
    this.likes,
  );
}
