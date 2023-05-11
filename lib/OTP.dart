//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        cursorColor: Color.fromRGBO(16, 16, 16, 1),
        controller: controller,
        maxLength: 1,
        //cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromRGBO(16, 16, 16, 1), width: 2)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            counterText: '',
            contentPadding: EdgeInsets.all(10),
            hintStyle: TextStyle(
                color: Color.fromRGBO(16, 16, 16, 1), fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
