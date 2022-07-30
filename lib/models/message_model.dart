import 'package:Muchatlu/models/user.dart';
import 'package:flutter/material.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      required this.isLiked,
      required this.unread});
}

//current user
final User currentUser =
    User(id: 0, name: 'CurrentUser', imageUrl: 'assets/images/hari.jpeg');
//Users list
final User hari =
    User(id: 1, name: 'Hari', imageUrl: 'assets/images/hari.jpeg');
final User mahi =
    User(id: 2, name: 'Maahi', imageUrl: 'assets/images/mahi.jpeg');
final User vasu =
    User(id: 3, name: 'Vasu', imageUrl: 'assets/images/vasu.jpeg');
final User dev = User(id: 4, name: 'Dev', imageUrl: 'assets/images/dev.jpeg');
final User krish =
    User(id: 4, name: 'Krish', imageUrl: 'assets/images/krish.jpeg');
final User krishna =
    User(id: 5, name: 'Krishna', imageUrl: 'assets/images/krishna.jpeg');
final User babu =
    User(id: 6, name: 'Babu', imageUrl: 'assets/images/babu.jpeg');
//favourites
final List<User> favourites = [hari, vasu, dev, mahi, krishna, babu];
//chat list examples
final List<Message> chats = [
  Message(
      sender: vasu,
      time: '3:30 PM',
      text: 'How are u bro!',
      isLiked: true,
      unread: false),
  Message(
      sender: hari,
      time: '4:30 PM',
      text: 'Yeah! Good',
      isLiked: true,
      unread: true),
  Message(
      sender: dev,
      time: '5:30 PM',
      text: 'Hope you are doing good mahi',
      isLiked: false,
      unread: false),
  Message(
      sender: mahi,
      time: '6:30 PM',
      text: 'yes bro!,thanks',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '1:30 PM',
      text: 'Manade idanta ! Atlutadi manathoni',
      isLiked: true,
      unread: false),
  Message(
      sender: krishna,
      time: '7:30 PM',
      text: 'Cool man ! nice to see you all',
      isLiked: true,
      unread: false),
  Message(
      sender: babu,
      time: '3:30 PM',
      text: 'ohh...ha ha ha',
      isLiked: false,
      unread: true),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: vasu,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: vasu,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: vasu,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: vasu,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
