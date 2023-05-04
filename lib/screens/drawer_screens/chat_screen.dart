import 'package:ecommerce/models/message_model.dart';
import 'package:ecommerce/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final List<User> users;

  ChatScreen({required this.users});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: isMe ? Colors.grey.shade200 : Colors.orange,
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0))
            : BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                color: isMe ? Colors.black : Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            message.text,
            style: TextStyle(
                color: isMe ? Colors.black : Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(message.sender.imageUrl),
        ),
        SizedBox(
          width: 5,
        ),
        msg,
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: MediaQuery.of(context).size.height * 0.04375,
      color: Colors.orange.shade50,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.emoji_emotions),
            iconSize: 25.0,
            color: Colors.orangeAccent,
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade100
                  
                ),
                height: MediaQuery.of(context).size.height*0.03125,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {
                    setState(() {});
            },
            decoration: InputDecoration.collapsed(
                    hintText: 'Type your message ',
            ),
          ),
                  ),
                ),
              )),
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
              iconSize: 25.0,
              color: Colors.white,
              padding: EdgeInsets.all(2),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Chats', //widget.user.name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
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
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemBuilder: (context, index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currenctUser.id;
                      return _buildMessage(message, isMe);
                    },
                    itemCount: messages.length,
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
}
