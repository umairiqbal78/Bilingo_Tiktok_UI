import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "User Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.person_add, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          //profile photo
          Container(
            height: 120,
            width: 120,
            color: Colors.grey[200],
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          //username
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '@Username',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          // number of following , followers, likes
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(children: const [
                    Text(
                      '37',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ]),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(children: const [
                    Text(
                      '12',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ]),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(children: const [
                    Text(
                      '137',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '   Likes   ',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ]),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 15,
          ),
          // button -> edit profile, links bookmarks
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: const Text("Edit profile",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey[800],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.grey[800],
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5)),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          //bio
          Text(
            'Bio here',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
