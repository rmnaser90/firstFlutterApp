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
  bool isSecure = true;
  Icon viewPass = const Icon(
    Icons.remove_red_eye,
    color: Colors.grey,
  );
  Icon noViewPass = const Icon(
    Icons.remove_red_eye_outlined,
    color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log in Page',
          style: TextStyle(fontSize: 30),
        ),
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
                const Text('User Name', style: TextStyle(fontSize: 20)),
                const MyInput(hint: 'Enter your username'),
                Divider(),
                const Text('Password', style: TextStyle(fontSize: 20)),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: TextField(
                          obscureText: isSecure,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your password"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            isSecure = !isSecure;
                            setState(() {});
                          },
                          icon: isSecure ? viewPass : noViewPass)
                    ],
                  ),
                )
              ],
            )),
      )),
    );
  }
}
