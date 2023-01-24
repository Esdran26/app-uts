import 'package:app_uts/src/global/variables.dart';
import 'package:flutter/material.dart';

class FormNews extends StatefulWidget {
  const FormNews({Key? key}) : super(key: key);

  @override
  State<FormNews> createState() => _FormNewsState();
}

class _FormNewsState extends State<FormNews> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Formulario de Noticias',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Card(
            elevation: 0,
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Datos generales',
                  style: fontBigSub,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Nombre Completo'),
                controller: fullNameController,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration:
                    const InputDecoration(labelText: 'Correo Electrónico'),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Número Teléfono'),
                controller: fullNameController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    fullNameController.text = '';
                    emailController.text = '';
                    telController.text = '';
                  });
                  
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.greenAccent,
                          size: 40.0,
                        ),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget>[
                              Center(
                                  child: Text('Datos enviados correctamente')),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Aceptar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200.0, 50.0),
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.all(0.0),
                ),
                child: const Text('Guardar'),
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
