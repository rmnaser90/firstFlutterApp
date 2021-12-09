import 'package:firstapp/myButton.dart';
import 'package:firstapp/myInput.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

const bool? pass = true;

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
      ),
      body: Center(
          child: FlipCard(
        front: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.amber,
            )),
        back: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.green),
          width: 300,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'User Name:',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const MyInput(hint: 'Enter Username'),
              Divider(),
              const Text(
                'Password:',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              const MyInput(hint: 'Enter a password', isSecure: true),
              Row(
                children: [
                  const myButton(btnText: 'Sign In', btnIcon: Icon(Icons.login)),
                  const myButton(btnText: 'Cancel', btnIcon: Icon(Icons.cancel)),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
