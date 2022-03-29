import 'package:flutter/material.dart';
import 'package:tiktokapp/pages/private_inbox_page.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Direct messages",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w800)),
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
      body: Container(
        child: ListView.builder(
            itemCount: 05,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const PrivateInboxPage()))),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://picsum.photos/id/1062/400/400',
                      ),
                    ),
                  ),
                ),
                title: Text("@someone",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                subtitle: Text("Shared a video",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 10,
                          color: Colors.grey,
                        )),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Sunday",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 10,
                              color: Colors.grey,
                            ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
