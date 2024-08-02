import 'package:flutter/material.dart';

import '../custom_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool  _isChecked =false;

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobilenoController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController Conf_PasswordController = TextEditingController();
  TextEditingController Promo_disc_Controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF00326C),
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
              
                width: MediaQuery.of(context).size.width * 0.81,
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        TextRoboto700_32(fontsize: 32, text: 'Sign Up'),
                        SizedBox(
                          height: 40,
                        ),
                        text_field(
                            context: context,
                            controller: firstnameController,
                            hintText: 'First Name',
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: 15,
                        ),
                        text_field(
                            context: context,
                            controller: lastnameController,
                            hintText: 'Last Name',
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: 15,
                        ),
                        text_field(
                            context: context,
                            controller: emailController,
                            hintText: 'Email (Optional)',
                            keyboardType: TextInputType.emailAddress),
                        SizedBox(
                          height: 15,
                        ),
                        text_field(
                            context: context,
                            controller: mobilenoController,
                            hintText: 'MobileNumber',
                            keyboardType: TextInputType.number),
                        SizedBox(
                          height: 15,
                        ),
                        ObscureTextField(controller: PasswordController,
                            hintText: 'Password',
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: 15,
                        ),
                        ObscureTextField(controller: Conf_PasswordController,
                            hintText: 'Confirm Password',
                            keyboardType: TextInputType.text),
                        SizedBox(
                          height: 15,
                        ),
                        text_field(
                            context: context,
                            controller: Promo_disc_Controller,
                            hintText: 'Promotional Discount (If any)',
                            keyboardType: TextInputType.number),
                        SizedBox(
                          height: 15,
                        ),
              
              
                        Center(
                          child: Container(
              
              
                            child: Row(
              
                              children: [
                                Checkbox(
              
                                  focusColor: Colors.white,
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isChecked = value ?? false;
                                    });
                                  },
                                  activeColor: Colors.blue, // Color when checked
                                  checkColor: Colors.white, // Color of the check mark inside the box
                                  hoverColor: Colors.transparent, // Color when hovering (optional) // Adjust the color as needed
                                ),
                                TextRoboto500_14(fontsize: 16, text: 'I agree with terms & conditions')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
              
                        Signinbutton(context: context, title: 'Sign Up', title_color: Colors.white),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Container(
                            width:MediaQuery.of(context).size.width * 0.60 ,
              
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 37 ,
                                  width: 37,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset('assets/images/google.png'),
                                ),
                                Container(
                                  height: 37 ,
                                  width: 37,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset('assets/images/fb.png'),
                                ),
                                Container(
                                  height: 37 ,
                                  width: 37,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset('assets/images/twitter.png'),
                                ),
                                Container(
                                  height: 37 ,
                                  width: 37,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset('assets/images/apple.png'),
                                ),
                                Container(
                                  height: 37 ,
                                  width: 37,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Image.asset('assets/images/insta.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
              
                      ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
