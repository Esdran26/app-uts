import 'package:app_uts/src/global/variables.dart';
import 'package:flutter/material.dart';

class ListMain extends StatefulWidget {
  const ListMain({Key? key}) : super(key: key);

  @override
  State<ListMain> createState() => _ListMainState();
}

class _ListMainState extends State<ListMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Menú',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: ListView(children: [
        ListTile(
          leading: Icon(
            Icons.school_rounded,
            color: primaryColor,
          ),
          title: Text(
            'Programas Académicos',
            style: fontNormal,
          ),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.health_and_safety_rounded,
            color: primaryColor,
          ),
          title: Text(
            'Bienestar Institucional',
            style: fontNormal,
          ),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        
        ListTile(
          leading: Icon(
            Icons.history_edu_rounded,
            color: primaryColor,
          ),
          title: Text(
            'Misión, Visión e Historia',
            style: fontNormal,
          ),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.home_work_rounded,
            color: primaryColor,
          ),
          title: Text(
            'Regionales',
            style: fontNormal,
          ),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
      ]),
    );
  }
}
