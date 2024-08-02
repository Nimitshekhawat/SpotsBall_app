import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../custom_widget.dart';


class Chage_password extends StatefulWidget {
  const Chage_password({super.key});

  @override
  State<Chage_password> createState() => _Chage_passwordState();
}

class _Chage_passwordState extends State<Chage_password> {


  @override
  Widget build(BuildContext context) {

    TextEditingController old_pass= TextEditingController();
    TextEditingController newpassPhnController = TextEditingController();
    TextEditingController confirmpasscontroller = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: ' Change password ', value: 0, context: context)
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF00326C),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(

              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),

                    Textubuntu700_32(fontsize: 20, text: 'Change Password'),
                    SizedBox(
                      height: 40,
                    ),
                    ObscureTextField(
                      controller: old_pass,
                      hintText: 'Old Password',
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 20,
                    ),


                    ObscureTextField(
                      controller: newpassPhnController,
                      hintText: 'Password',
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ObscureTextField(
                      controller: confirmpasscontroller,
                      hintText: 'Confirm Password',
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Signinbutton(context: context, title: 'Save Password', title_color: Colors.white),
                    SizedBox(
                      height: 20,
                    ),


                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
