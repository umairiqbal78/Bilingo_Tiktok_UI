import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tiktokapp/models/video.dart';
import 'package:video_player/video_player.dart';

class VideoTile extends StatefulWidget {
  const VideoTile(
      {Key? key,
      required this.video,
      required this.snappedPageIndex,
      required this.currentPageIndex})
      : super(key: key);
  final Video video;
  final int snappedPageIndex;
  final int currentPageIndex;

  @override
  State<VideoTile> createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  late VideoPlayerController _videoPlayerController;
  late Future _initializeVideoPlayer;
  bool _isVideoPlaying = true;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/${widget.video.videoUrl}');
    _initializeVideoPlayer = _videoPlayerController.initialize();
    _videoPlayerController.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  void _playPauseVideo() {
    _isVideoPlaying
        ? _videoPlayerController.pause()
        : _videoPlayerController.play();
    setState(() {
      _isVideoPlaying = !_isVideoPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    (widget.snappedPageIndex == widget.currentPageIndex && _isVideoPlaying
        ? _videoPlayerController.play()
        : _videoPlayerController.pause());
    return Container(
      color: Colors.black,
      child: FutureBuilder(
          future: _initializeVideoPlayer,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return GestureDetector(
                onTap: () => {_playPauseVideo()},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    VideoPlayer(_videoPlayerController),
                    IconButton(
                      onPressed: () => {_playPauseVideo()},
                      icon: Icon(
                        Icons.play_arrow,
                        color:
                            Colors.white.withOpacity(_isVideoPlaying ? 0 : 0.5),
                        size: 60,
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                child: Lottie.asset('assets/tiktok-loader.json',
                    width: 100, height: 100, fit: BoxFit.cover),
              );
            }
          }),
    );
  }
}
