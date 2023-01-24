import 'package:app_uts/src/global/variables.dart';
import 'package:app_uts/src/widgets/main_list_title.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(children: const [
          HistoryInfo(
              'MISIÓN',
              'https://www.uts.edu.co/sitio/wp-content/uploads/2019/09/mision.jpg',
              'Las Unidades Tecnológicas de Santander son un establecimiento público del orden departamental, que se dedica a la formación de personas con sentido ético, pensamiento crítico y actitud emprendedora, mediante procesos de calidad en la docencia, la investigación y la extensión para contribuir al desarrollo socio-económico, científico, tecnológico, ambiental y cultural de la sociedad.'),
          HistoryInfo(
              'VISIÓN',
              'https://www.uts.edu.co/sitio/wp-content/uploads/2019/10/uts-vision.jpg',
              'En el año 2030, las Unidades Tecnológicas de Santander serán reconocidas en el ámbito académico nacional e internacional, como una institución comprometida con la transformación social, la innovación y el desarrollo tecnológico.'),
          HistoryInfo(
              'HISTORIA',
              'https://www.uts.edu.co/sitio/wp-content/uploads/2022/11/fachada-420x294.jpg',
              'Las Unidades Tecnológicas de Santander (UTS) son una Institución de Educación Superior que desde sus inicios han alcanzado reconocimiento en la región por la calidad de sus servicios educativos y por contribuir con la formación del talento humano requerido para el desarrollo tecnológico del país. Fue creada oficialmente el 23 de diciembre de 1963 mediante la ordenanza número 90 e inició labores académicas el año siguiente; su denominación fue Instituto Tecnológico Santandereano y su finalidad se orientó a formar a las personas para el proceso de producción y el manejo de personal demandados por la naciente industria nacional. Sin embargo, su historia no parte del día en que se ordenó su creación o cuando empezó a funcionar; su proceso histórico inició en 1988 con la instauración de la Escuela de Artes y Oficios de Bucaramanga, la cual materializó la intención de dotar a la región de un Instituto de formación técnica destinada a instruir conocimientos teóricos y prácticos de las artes y los oficios; confiriendo al personal capacitado grados de maestro, oficial y obrero. La norma que sustentó su fundación la concibió como una Institución pública financiada con las rentas departamentales y compelidas a brindar educación gratuita; propósito que no se cumplió plenamente, la insolvencia del Departamento hizo que la Institución también se dotara y sostuviera con auxilios del Gobierno Nacional, con ayudas filantrópicas de particulares y con el dinero recaudado por la comercialización de los productos que allí se fabricaban.'),
        ]),
      ),
    );
  }
}

class HistoryInfo extends StatefulWidget {
  const HistoryInfo(this.title, this.image, this.text, {Key? key})
      : super(key: key);

  final String title;
  final String image;
  final String text;

  @override
  State<HistoryInfo> createState() => _HistoryInfoState();
}

class _HistoryInfoState extends State<HistoryInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainListTitle(widget.title.toString()),
        const SizedBox(
          height: 10.0,
        ),
        Image.network(
          widget.image.toString(),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          widget.text.toString(),
          textAlign: TextAlign.justify,
          style: fontNormal,
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
