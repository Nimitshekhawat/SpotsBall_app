import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotsball_app/lib/screens/SignIn_screens/otppage.dart';
import '../custom_widget.dart';

class forgetpassword extends StatefulWidget {
  const forgetpassword({super.key});

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
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
                      TextRoboto700_32(fontsize: 32, text: 'Forget Password'),
                      SizedBox(
                        height: 20,
                      ),
                      TextRoboto600_16(
                          fontsize: 16,
                          fontweight: FontWeight.w400,
                          text: 'Please Enter the registered Email / Mobile '),
                      Center(
                          child: TextRoboto600_16(
                              fontsize: 16,
                              fontweight: FontWeight.w400,
                              text: 'Number')),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 200,
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
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: TextField(
                                controller: emailController,
                                keyboardType: TextInputType.text,

                                decoration: InputDecoration(
                                  hintText: 'E-Mail / Mobile Number',

                                  hintStyle: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontSize:  14,
                                          color: Color(0xFF898989),
                                          fontWeight:  FontWeight.w400)),

                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1
                                    ),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1
                                    ),
                                  ),

                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
                                  isDense: true,
                                ),

                                // style: ,
                              ),
                            ),
                          ),
                        ),
                            SizedBox(
                              height: 27,
                            ),
                            
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> otppage()));
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
