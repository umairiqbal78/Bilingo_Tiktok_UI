import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tiktokapp/models/video.dart';

class HomeSideBar extends StatefulWidget {
  const HomeSideBar({Key? key, required this.video}) : super(key: key);
  final Video video;
  @override
  State<HomeSideBar> createState() => _HomeSideBarState();
}

class _HomeSideBarState extends State<HomeSideBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _show = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _profileImageButton(widget.video.postedBy.profileImageUrl),
          _sideBarItem('heart', widget.video.likes, style),
          _sideBarItem('comment', widget.video.comments, style),
          GestureDetector(
              child: _sideBarItem('share', 'share', style),
              onTap: () {
                _showModalBottomSheet();
                setState(() {});
              }),
          AnimatedBuilder(
              animation: _animationController,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Stack(children: [
                      Image.asset("assets/Disc.png"),
                      Positioned(
                          left: -5.0,
                          child: Image.asset("assets/DoubleTone.png")),
                      Positioned(
                          top: 40.0, child: Image.asset("assets/Tone.png")),
                    ]),
                  ),
                  const CircleAvatar(
                    radius: 12,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/1062/400/400'),
                  )
                ],
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: 2 * pi * _animationController.value,
                  child: child,
                );
              })
        ],
      ),
    );
  }

  _showModalBottomSheet() {
    List<String> socialMediaIcon = [
      'copy_link',
      'messanger',
      'insta',
      'message',
      'snapchat',
      'sms'
    ];
    List<String> socialMediaIconNames = [
      'Copy link',
      'Messanger',
      'Instagram',
      'Message',
      'Snapchat',
      'SMS'
    ];
    List<String> actionsIcon = [
      'report',
      'not_interested',
      'download',
      'duet',
      'stitch',
      'add_to_fav'
    ];
    List<String> actionsIconNames = [
      'Report',
      'Not Interested',
      'Save Video',
      'Duet',
      'Stitch',
      'Add to Favorites'
    ];
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 500,
          width: double.infinity,
          color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Text(
                  "Send To",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                height: 60.0,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://picsum.photos/seed/{$index}/200/300'),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Text(
                                "@someone",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontSize: 12, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Share to",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: 60.0,
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          scrollDirection: Axis.horizontal,
                          itemCount: socialMediaIconNames.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/${socialMediaIcon[index]}.png'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    child: Text(
                                      socialMediaIconNames[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 12,
                                              color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 60.0,
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          scrollDirection: Axis.horizontal,
                          itemCount: actionsIconNames.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/${actionsIcon[index]}.png'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0),
                                    child: Text(
                                      actionsIconNames[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 12,
                                              color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              TextButton(
                child: Text(
                  "Cancel",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _sideBarItem(String iconName, String label, TextStyle style) {
    return Column(
      children: [
        Image.asset(
          'assets/$iconName.png',
          color: Colors.white.withOpacity(0.75),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: style,
        )
      ],
    );
  }

  _profileImageButton(String imageUrl) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(25)),
            child: const Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
