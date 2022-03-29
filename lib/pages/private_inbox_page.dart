import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class PrivateInboxPage extends StatefulWidget {
  const PrivateInboxPage({Key? key}) : super(key: key);

  @override
  State<PrivateInboxPage> createState() => _PrivateInboxPageState();
}

class _PrivateInboxPageState extends State<PrivateInboxPage> {
  List<Message> messages = [
    Message(
      text: 'Hi',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: false,
    ),
    Message(
      text: 'Hello',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: true,
    ),
    Message(
      text: 'How are you',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: false,
    ),
    Message(
      text: 'I am Good',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 5)),
      isSentByMe: true,
    ),
    Message(
      text: 'What about you?',
      date: DateTime.now().subtract(Duration(days: 3, minutes: 5)),
      isSentByMe: true,
    ),
  ].reversed.toList();

  final fieldText = TextEditingController();
  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("someone",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: messages.isEmpty
                  ? Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Text('Tuesday 00:00 AM',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 10,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Say hi to someone",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Icon(Icons.close,
                                        color: Colors.black, size: 20)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/say_hi_high_five.png',
                              ),
                              Image.asset(
                                'assets/say_hi_wave.png',
                              ),
                              Image.asset(
                                'assets/say_hi_celebration.png',
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : GroupedListView<Message, DateTime>(
                      padding: const EdgeInsets.all(8),
                      reverse: true,
                      order: GroupedListOrder.DESC,
                      useStickyGroupSeparators: true,
                      floatingHeader: true,
                      elements: messages,
                      groupBy: (message) => DateTime(
                        message.date.year,
                        message.date.month,
                        message.date.day,
                      ),
                      groupHeaderBuilder: (Message message) => SizedBox(
                        height: 40,
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat.yMMMMd().format(message.date),
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      itemBuilder: (context, Message message) => Align(
                        alignment: message.isSentByMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: message.isSentByMe
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Card(
                                    color: message.isSentByMe
                                        ? Colors.grey.shade300
                                        : Colors.white,
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(message.text),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://picsum.photos/id/1062/400/400'),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://picsum.photos/id/1062/400/400'),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: message.isSentByMe
                                        ? Colors.grey.shade300
                                        : Colors.white,
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(message.text),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    )),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: fieldText,
                      cursorColor: Colors.grey.shade400,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusColor: Colors.grey.shade200,
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10.0),
                        hintText: 'Send a message',
                        hintStyle:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                      ),
                      onSubmitted: (text) {
                        final message = Message(
                            text: text, date: DateTime.now(), isSentByMe: true);
                        setState(() {
                          messages.add(message);
                          clearText();
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('assets/inbox_send.png')))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message(
      {required this.text, required this.date, required this.isSentByMe});
}
