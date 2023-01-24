import 'package:app_uts/src/global/variables.dart';
import 'package:app_uts/src/widgets/field_data.dart';
import 'package:app_uts/src/widgets/main_list_title.dart';
import 'package:flutter/material.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Column(
              children: [
                const MainListTitle('REGIONALES'),
                const SizedBox(
                  height: 10.0,
                ),
                Image.network(
                  'https://www.uts.edu.co/sitio/wp-content/uploads/2019/10/banner-regionales-1-1024x342.jpg',
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const LocationInfo(
                    'Barrancabermeja',
                    'Carrera 36D # 65 – 20 barrio La Esperanza.',
                    '8:00 a. m. a 12:00 a. m. y 2:30 p. m. a 7:00 p. m.',
                    '57 + 60 + 7 + 6222066 – 6917700 Ext. 5402',
                    'barrancabermeja@correo.uts.edu.co'),
                const SizedBox(
                  height: 10.0,
                ),
                const LocationInfo(
                    'Vélez',
                    'Calle 12 #5–33 barrio La Esperanza.',
                    '8:00 a. m. a 12:00 a. m. y 2:30 p. m. a 7:00 p. m.',
                    '57 + 60 + 7 + 7564854 – 6917700 Ext. 5501',
                    'velez@correo.uts.edu.co'),
                const SizedBox(
                  height: 10.0,
                ),
                const LocationInfo(
                    'Piedecuesta',
                    'Kilómetro 2 vía Guatiguará.',
                    '8:00 a. m. a 12:00 a. m. y 2:30 p. m. a 7:00 p. m.',
                    '57 + 60 + 7 + 6788829 – 6917700 Ext. 5101',
                    'piedecuesta@correo.uts.edu.co'),
                const SizedBox(
                  height: 10.0,
                ),
                const LocationInfo(
                    'Bucaramanga',
                    'Calle de los estudiantes 9-82.',
                    '8:00 a. m. a 12:00 a. m. y 2:30 p. m. a 7:00 p. m.',
                    '57 + 60 + 7 + 6917700 Extensión: 1210',
                    'coordinacionregionales@correo.uts.edu.co'),
              ],
            )),
      )),
    );
  }
}

class LocationInfo extends StatefulWidget {
  const LocationInfo(
      this.location, this.adress, this.time, this.phone, this.email,
      {Key? key})
      : super(key: key);
  final String location;
  final String adress;
  final String time;
  final String phone;
  final String email;

  @override
  State<LocationInfo> createState() => _LocationInfoState();
}

class _LocationInfoState extends State<LocationInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.location,
            style: fontBigSub,
          ),
        ),
        FieldData(textGrey: 'Ciudad', dataText: widget.adress),
        const SizedBox(
          height: 6.0,
        ),
        FieldData(textGrey: 'Horarios', dataText: widget.time),
        const SizedBox(
          height: 6.0,
        ),
        FieldData(textGrey: 'Teléfonos', dataText: widget.phone),
        const SizedBox(
          height: 6.0,
        ),
        FieldData(textGrey: 'E-mail', dataText: widget.email),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
