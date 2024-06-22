import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow,),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {
          print('pressed!!');
        },
      ),
      body: Column(
        children: [
        Text("Let\'s sign you in!", style:TextStyle(
        fontSize: 30,color: Colors.brown,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
        ),
        ),
          Text(
            "Welcome back \n You've been missed",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueGrey),
              ),
          Image.network('https://e1.pngegg.com/pngimages/395/183/png-clipart-transformers-s-transformers-bumblebee.png',height: 100,),
          Container(
            height: 150,
              width: 150,
              child: FlutterLogo(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(24),
            ),
          )
        ],
      )
    );
  }
}