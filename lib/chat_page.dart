import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/beach.jpg'),
            ),
            SizedBox(width: 10),
            Text('Jay'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                ChatBubble(
                  message: 'Hello',
                  imageUrl: 'assets/beach.jpg',
                  isSender: false,
                ),
                ChatBubble(
                  message: 'hi',
                  imageUrl: 'assets/beach.jpg', 
                  isSender: true,
                ),
                ChatBubble(
                  message: 'how are you?',
                  isSender: false,
                ),
                ChatBubble(
                  message: 'I\'m fine\nHow are you?',
                  isSender: true,
                ),
                ChatBubble(
                  message: 'Even I\'m fine',
                  isSender: false,
                ),
                ChatBubble(
                  message: 'That\'s great',
                  isSender: true,
                ),
                ChatBubble(
                  message: 'What\'s up',
                  isSender: true,
                ),
                ChatBubble(
                  message: 'Nothing much.....I was learning Flutter',
                  isSender: false,
                ),
                ChatBubble(
                  message: 'What about you?',
                  isSender: false,
                ),
                ChatBubble(
                  message: 'Same dude....Even i was learning Flutter',
                  isSender: true,
                ),
                ChatBubble(
                  message: 'That\'s great',
                  isSender: false,
                ),
              ],
            ),
          ),
          ChatInputField(),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final String imageUrl;
  final bool isSender;

  ChatBubble({required this.message, this.imageUrl = '', required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[300] : Colors.grey[400],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Image.asset(imageUrl),
              ),
            Text(
              message,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.blueGrey,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.emoji_emotions_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.attachment),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
