import 'package:app_uts/src/global/variables.dart';
import 'package:flutter/material.dart';

class MainListTitle extends StatefulWidget {
  const MainListTitle(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  MainListTitleState createState() => MainListTitleState();
}

class MainListTitleState extends State<MainListTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'NunitoSans',
              fontSize: 30.0,
              color: primaryColor),
        ),
      ),
    );
  }
}
