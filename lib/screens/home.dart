import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
        appBar: AppBar(
          backgroundColor: tdBGColor,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Icon(Icons.menu, color: tdBlack, size: 30),
            SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('assets/images/profile.jpg', fit: BoxFit.cover),
                )),
          ]),
        ),
        body: Container(child: const Text('Hello World!')));
  }
}
