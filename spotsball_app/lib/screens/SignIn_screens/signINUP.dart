import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import '../custom_widget.dart';
import 'Sign_in.dart';
import 'Signup.dart';




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
      home: Signinup(),
    );
  }
}


class Signinup extends StatelessWidget {
  const Signinup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('signin'),
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color(0xFF00326C),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.050,
              ),
              logo(context),
              SizedBox(
                height: 20,
              ),

              TextRoboto500_14(fontsize: 20, text: 'Testing Your Cricket Skills!'),

              SizedBox(
                height: 15,
              ),


              Container(
                height: MediaQuery.of(context).size.height*0.46,
                width:MediaQuery.of(context).size.width,
                color: Colors.white,


                child: Image.asset('assets/images/CatchingImage.png',fit: BoxFit.fill,),
              ),
              SizedBox(
                height: 18,
              ),

              Text('Spot the Ball, Earn Cash Prizes!',style:  GoogleFonts.roboto( textStyle : TextStyle( fontSize: 24, color: Colors.white, fontWeight:  FontWeight.w600)),),

              SizedBox(
                height: 10,
              ),
              Text('Join the excitement! ',style:  GoogleFonts.roboto( textStyle : TextStyle( fontSize: 16, color: Colors.white, fontWeight:  FontWeight.w500)),),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signin()));
                },
                child: Signinbutton(title: 'Sign In',
                    context: context,
                    color: Color(0xFF7CAB05),
                    title_color:Colors.white),
              ),

              SizedBox(
                height: 20,
              ),

              InkWell(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup() ),
                  );
                },
                child: Signinbutton(title: 'Sign Up',
                    context: context,
                    color: Colors.white,
                    title_color:Color(0xFF7CAB05)),
              ),
            ],
          ),


        ),
      ),
    );
  }
}
