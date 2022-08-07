import 'package:flutter/material.dart';
import 'package:wenich/states/create_account.dart';
import 'package:wenich/utility/my_constant.dart';
import 'package:wenich/widgets/show_button.dart';
import 'package:wenich/widgets/show_form.dart';
import 'package:wenich/widgets/show_image.dart';
import 'package:wenich/widgets/show_text.dart';
import 'package:wenich/widgets/show_text_button.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MyConstant().gradientBox(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              newHead(),
              ShowForm(
                hint: 'ป้อน User นะค่ะ: ',
                iconData: Icons.person_outline,
                changFunc: (String string) {},
              ),
              ShowForm(
                hint: 'Password : ',
                iconData: Icons.android,
                obSecu: true,
                changFunc: (String string) {},
              ),
              ShowButton(
                label: 'Login',
                pressFunc: () {},
              ), //pwd
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ShowText(text: ' Not Account ?'),
                  ShowTextButton(
                    label: 'Create Account',
                    pressFunc: () {
                      print('You click Create Account');
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Createaccount();
                        },
                      ));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox newHead() {
    return SizedBox(
      width: 250,
      child: Row(
        children: [
          newImage(),
          ShowText(
            text: 'Login',
            textStyle: MyConstant().h1Style(),
          ),
        ],
      ),
    );
  }

  SizedBox newImage() {
    return const SizedBox(
      width: 70,
      child: ShowImage(),
    );
  }
}
