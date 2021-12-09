import 'package:flutter/material.dart';

class myButton extends StatefulWidget {
  final Icon? btnIcon;
  final String? btnText;
  const myButton({Key? key, this.btnText, this.btnIcon}) : super(key: key);

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)))),
        child: Container(
          width: 70,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text(btnText), btnIcon],
          ),
        ),
      ),
    );
  }
}
