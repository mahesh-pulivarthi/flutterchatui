import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message_model.dart';
import 'package:flutter_chat_ui/screens/chat_screen.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: const EdgeInsets.all(10.0),
          // margin: EdgeInsets.all(10.0),
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  // index = 0;
                  final Message chat = chats[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(user: chat.sender),
                        ),
                      );
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 5, bottom: 5, right: 20.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: chat.unread
                            ? const Color(0xFFFFEFEE)
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage(chat.sender.imageUrl),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chat.sender.name,
                                      style: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      child: Text(
                                        chat.text,
                                        style: const TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.blueGrey),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                chat.time,
                                style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey),
                              ),
                              const SizedBox(height: 5.0),
                              chat.unread
                                  ? Container(
                                      width: 40,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'NEW',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )),
    );
  }
}
