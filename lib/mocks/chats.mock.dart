import 'package:chat_ui/mocks/user.mocks.dart';
import 'package:chat_ui/model/message_model.dart';

List<Message> chats = [
  Message(
    sender: james,
    time: '5:30pm',
    text: 'Hey, how\'s it going, what did you do today',
    isLiked: false,
    unread: true,
  ),
  // Message(
  //   sender: currentUser,
  //   time: '4:40pm',
  //   text: 'Hey, how\'s it going, what did you do today',
  //   isLiked: false,
  //   unread: true,
  // ),
  Message(
    sender: olivia,
    time: '4:30pm',
    text: 'Hey, how\'s it going, what did you do today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: john,
    time: '4:30pm',
    text: 'Hey, how\'s it going, what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sam,
    time: '4:30pm',
    text: 'Hey, how\'s it going, what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sophia,
    time: '2:30pm',
    text: 'Hey, how\'s it going, what did you do today',
    isLiked: false,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: currentUser,
    time: '4:40pm',
    text: 'Hey James, how\'s it going, what did you do today',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '4:50pm',
    text: 'Hi Henry, wassup',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5:00pm',
    text: 'I\'m good, how about you',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '5:02pm',
    text: 'Just chilling here',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5:05pm',
    text: 'Wanna play fifa20',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '5:10pm',
    text: 'Yeah, where you at',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '5:10pm',
    text: 'I\'m home, come over',
    isLiked: false,
    unread: true,
  ),
];
