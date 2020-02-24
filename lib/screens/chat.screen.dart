import 'package:chat_ui/mocks/chats.mock.dart';
import 'package:chat_ui/mocks/user.mocks.dart';
import 'package:chat_ui/model/message_model.dart';
import 'package:chat_ui/model/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      bool isMe = message.sender.id == currentUser.id;

                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      height: 80,
      padding: EdgeInsets.only(bottom: 8),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: () {},
            // color: Colors.white,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: 'Send Message'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
            // color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(Message message, bool isMe) {
    final Widget contianerMessage = Container(
      margin:
          isMe ? EdgeInsets.only(top: 10, left: 80) : EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 10.0,
                fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 2.5),
          Text(message.text),
        ],
      ),
    );

    if (isMe) {
      return contianerMessage;
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        contianerMessage,
        IconButton(
          icon: message.isLiked
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
          color: message.isLiked
              ? Theme.of(context).primaryColor
              : Colors.blueGrey,
          iconSize: 30.0,
          onPressed: () {},
        )
      ],
    );
  }
}
