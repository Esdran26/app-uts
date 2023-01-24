import 'package:app_uts/src/global/variables.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FieldData extends StatelessWidget {
  String? textGrey = '';
  String? dataText = '';
  FieldData({Key? key, required this.textGrey, required this.dataText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int limitLength = 20;
    String truncate = '';
    bool isTruncate = false;

    if (dataText.toString().length > limitLength) {
      for (int i = 0; i < limitLength; i++) {
        truncate += dataText![i];
      }
      truncate = '$truncate...';
      isTruncate = true;
    } else {
      truncate = dataText!;
      isTruncate = false;
    }

    return Row(
      children: [
        SizedBox(
          width: 111.0,
          child: Text(
            textGrey.toString(),
            style: fontNormalGrey,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.50,
          margin: const EdgeInsets.only(left: 20.0),
          child: isTruncate
              ? GestureDetector(
                  onTap: () async {
                    return showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    'Cerrar',
                                    style: TextStyle(color: Colors.redAccent),
                                  )),
                            ],
                            content: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                dataText!,
                                style: fontNormalBold,
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    truncate.toString(),
                    style: fontNormal,
                  ),
                )
              : Text(
                  truncate.toString(),
                  style: fontNormal,
                ),
        )
      ],
    );
  }
}
