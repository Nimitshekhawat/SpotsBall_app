import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_widget.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'Enter_New_password.dart';

class otppage extends StatefulWidget {
  const otppage({super.key});

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  TextEditingController emailController = TextEditingController();

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
          Positioned(
            left: MediaQuery.of(context).size.width * 0.09,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.81,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.17,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextRoboto700_32(fontsize: 32, text: 'OTP Verification'),
                      SizedBox(
                        height: 20,
                      ),
                      TextRoboto600_16(
                          fontsize: 16,
                          fontweight: FontWeight.w400,
                          text: 'OTP is send to your registered Email / Mobile'),
                      Center(
                          child: TextRoboto600_16(
                              fontsize: 16,
                              fontweight: FontWeight.w400,
                              text: 'Number')),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 252,
                        width: MediaQuery.of(context).size.width * 0.80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),

                            Container(
                              height:  50,
                              width: MediaQuery.of(context).size.width * 0.77,
                              // margin:  margin ??  EdgeInsets.only(left: paddingSize?? 10, top: paddingSize?? 10, bottom:paddingSize?? 10,right:paddingSize?? 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(color: const Color(0xffB3BBCB)),
                                color:  Colors.white,
                              ),
                              child: OtpTextField(
                                numberOfFields: 4,
                                fieldHeight: 49,
                                fieldWidth: 51,
                                focusedBorderColor: Color(0xFF00326C),
                                autoFocus: true,


                                enabledBorderColor: Color(0xFF00326C),
                                borderRadius: BorderRadius.circular(10),
                                keyboardType: TextInputType.number,
                                borderColor: Color(0xFF512DA8),
                                //set to true to show as box or false to show as dash
                                showFieldAsBox: true,
                                //runs when a code is typed in
                                onCodeChanged: (String code) {
                                  //handle validation or checks here
                                },
                                //runs when every textfield is filled
                                onSubmit: (String verificationCode){
                                  showDialog(
                                      context: context,
                                      builder: (context){
                                        return AlertDialog(
                                          title: Text("Verification Code"),
                                          content: Text('Code entered is $verificationCode'),
                                        );
                                      }
                                  );
                                }, // end onSubmit
                              ),

                              ),

                            SizedBox(
                              height: 64,
                            ),

                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Enternewpass()));
                                },
                                child: Signinbutton(context: context, title: 'Submit', title_color: Colors.white,width: 130))
                          ],
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
