import 'package:flutter/material.dart';

class ProfilePageEditUser extends StatelessWidget {
  const ProfilePageEditUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Edit profile",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w800)),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_rounded,
              color: Colors.black,
              size: 28,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            radius: 50,
                            child: CircleAvatar(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Image.asset(
                                  "assets/camera.png",
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                              //NetworkImage
                              radius: 20,
                            ),
                            backgroundImage: const NetworkImage(
                                'https://picsum.photos/id/1062/400/400'),
                          ),
                          Text(
                            "Change photo",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            radius: 50,
                            child: CircleAvatar(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Image.asset(
                                  "assets/video_camera.png",
                                  color: Colors.white,
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                              //NetworkImage
                              radius: 20,
                            ),
                          ),
                          Text(
                            "Change video",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                          )
                        ],
                      ),
                    ]),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("About you",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Name",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("name",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //username
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Username",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("username",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // user account link
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("blingo.com/@username",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                        const Icon(
                          Icons.copy_rounded,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //User bio
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Bio",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Add a bio to your profile",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // divider to social section
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
              ),
              //Social Section
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Social",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
              ),
              //Instagram
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Instagram",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Add Instagram to your profile",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //youtube
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Youtube",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                  )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Add Youtube to your profile",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 16.0, top: 16.0, right: 16.0, bottom: 4.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
