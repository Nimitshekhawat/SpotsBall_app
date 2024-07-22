import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotsball_app/lib/screens/SignIn_screens/Signup.dart';
import 'package:spotsball_app/lib/screens/SignIn_screens/otppage.dart';

import '../custom_widget.dart';
import 'Forgetpassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signin(),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailPhnController = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('signin'),
      // ),
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
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      logo(context),
                      SizedBox(
                        height: 40,
                      ),
                      TextRoboto700_32(fontsize: 32, text: 'Sign In'),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      text_field(
                          context: context,
                          controller: emailPhnController,
                          obsecureText1: false,
                          eye: false,
                          hintText: 'Email / Mobile Number',
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: 20,
                      ),
                      ObscureTextField(
                        controller: passwordcontroller,
                        hintText: 'password',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => forgetpassword()));
                              },
                              child: TextRoboto500_14(
                                  fontsize: 14, text: 'Forget password?'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => otppage() ),
                          );

                        },
                        child: Signinbutton(
                            context: context,
                            title: 'Sign in',
                            title_color: Colors.white),
                      ),

                      SizedBox(
                        height: 37,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextRoboto600_16(fontsize: 16, text: 'Don’t have an account? '),

                          InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signup() ),
                                );

                              },
                              child: Underlinedftext(text: 'Sign Up', textcolor: Colors.white, fontsize: 16,height: 15)),

                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      TextRoboto500_14(fontsize: 16, text: 'Or Sign Up using'),

                      SizedBox(
                        height: 20,
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
                      )


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
