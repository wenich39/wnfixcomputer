// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:wenich/utility/my_constant.dart';

class ShowForm extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final bool? obSecu;
  final Function(String) changFunc;

  const ShowForm({
    Key? key,
    required this.hint,
    required this.iconData,
    this.obSecu,
    required this.changFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        onChanged: changFunc,
        obscureText: obSecu ?? false,
        style: MyConstant().h3Style(),
        decoration: InputDecoration(fillColor: Colors.white.withOpacity(0.75),
          filled: true,
          suffixIcon: Icon(iconData, color: MyConstant.dart),
          hintStyle: MyConstant().h3HintStyle(),
          hintText: hint,
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
