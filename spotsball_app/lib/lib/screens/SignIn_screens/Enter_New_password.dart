import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../custom_widget.dart';
import 'Forgetpassword.dart';

class Enternewpass extends StatefulWidget {
  const Enternewpass({super.key});

  @override
  State<Enternewpass> createState() => _EnternewpassState();
}

class _EnternewpassState extends State<Enternewpass> {
  @override
  Widget build(BuildContext context) {
    TextEditingController newpassPhnController = TextEditingController();
    TextEditingController confirmpasscontroller = TextEditingController();
    return Scaffold(

      body: SafeArea(
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF00326C),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width*0.09,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.81,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),

                      TextRoboto700_32(fontsize: 32, text: 'Enter New Password'),
                      SizedBox(
                        height: 40,
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

                      Signinbutton(context: context, title: 'Save Password', title_color: Colors.white)


                      ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
