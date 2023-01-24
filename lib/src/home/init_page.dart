import 'package:app_uts/src/global/variables.dart';
import 'package:flutter/material.dart';

// Custom Imports

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo-splash.jpg',
                height: 150.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Bienvenido a nuestra comunidad uteísta',
                style: TextStyle(
                    fontSize: 30.0,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NunitoSans'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('¿Cómo te gustaría usar la aplicación?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'NunitoSans',
                        fontSize: 17.0,
                        color: Color.fromRGBO(30, 39, 46, 1.0))),
              ),
              Material(
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Card(
                      elevation: 4.0,
                      child: ListTile(
                        title: Text('Conoce más', style: fontNormal),
                        leading: Icon(
                          Icons.info_rounded,
                          color: primaryColor,
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const LoginPage()));
                        },
                      ),
                    ),
                    const Divider(),
                    Card(
                      elevation: 4.0,
                      child: ListTile(
                        title: Text('Recibe noticias de las UTS',
                            style: fontNormal),
                        leading: Icon(
                          Icons.person,
                          color: primaryColor,
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        // onTap: () => Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const LoginPage())),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
