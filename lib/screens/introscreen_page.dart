import 'package:flutter/material.dart';
import 'package:pet_app/screens/Hompage.dart';
import 'package:pet_app/utils/color.dart';

import '../widget/appbar_widget.dart';

class IntroScreenPage extends StatefulWidget {
  const IntroScreenPage({Key? key}) : super(key: key);
  static const routeName = '/introscreenpage';
  @override
  State<IntroScreenPage> createState() => _IntroScreenPageState();
}

class _IntroScreenPageState extends State<IntroScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Pet_Shop_Logo.png"),
                  fit: BoxFit.contain,
                  scale: 2.5,
                ),
                color: primaryColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    scale: 0.5,
                    image: AssetImage("assets/Arrow_Icon.png"),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(120),
                      topRight: Radius.circular(120))),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => IntroScreenPage())));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
