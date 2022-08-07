import 'package:flutter/material.dart';
import 'package:wenich/utility/my_constant.dart';
import 'package:wenich/widgets/show_button.dart';
import 'package:wenich/widgets/show_form.dart';
import 'package:wenich/widgets/show_text.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  var typeUsers = <String>[
    'User',
    'Teachnic',
  ];

  String? typeUser, name, user, passsword, rePassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newAppbar(),
      body: Container(
        decoration: MyConstant().basicBox(),
        child: ListView(
          children: [
            formName(),
            dropDownTypeUser(),
            formUser(),
            formPassword(),
            formRepassword(),
            buttonCreateAccount()
          ],
        ),
      ),
    );
  }

  Row dropDownTypeUser() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8, right: 8),
          margin: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.75),
            border: Border.all(),
            borderRadius: BorderRadius.circular(4),
          ),
          width: 250,
          child: DropdownButton<dynamic>(
            underline: const SizedBox(),
            isExpanded: true,
            hint: ShowText(
              text: 'Please choose typeUser',
              textStyle: MyConstant().h3AcctiveStyle(),
            ),
            value: typeUser,
            items: typeUsers
                .map(
                  (e) => DropdownMenuItem(
                    child: ShowText(text: e),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                typeUser = value.toString();
              });
            },
          ),
        ),
      ],
    );
  }

  Row buttonCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowButton(
          label: 'Create Account',
          pressFunc: () {},
        ),
      ],
    );
  }

  Row formRepassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          obSecu: true,
          hint: 'Re-password :',
          iconData: Icons.lock,
          changFunc: (p0) {
            rePassword = p0.trim();
          },
        ),
      ],
    );
  }

  Row formPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          obSecu: false,
          hint: 'Password',
          iconData: Icons.lock_outline,
          changFunc: (p0) {
            passsword = p0.trim();
          },
        ),
      ],
    );
  }

  Row formUser() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'Name',
          iconData: Icons.person,
          changFunc: (p0) {
            user = p0.trim();
          },
        ),
      ],
    );
  }

  Row formName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'Display:',
          iconData: Icons.fingerprint,
          changFunc: (p0) {
            name = p0.trim();
          },
        ),
      ],
    );
  }

  AppBar newAppbar() {
    return AppBar(
      centerTitle: true,
      title: ShowText(
        text: 'Create Account',
        textStyle: MyConstant().h3ButtonStyle(),
      ),
      backgroundColor: MyConstant.primary,
    );
  }
}
