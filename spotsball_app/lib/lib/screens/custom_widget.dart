import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: ,
//     );
//   }
// }

Widget Signinbutton({
  required context,
  required String title,
  double? fontSize,
  FontWeight? fontWeight,
  // VoidCallback? onTap,
  double? width,
  double? height,
  Color? color,
  required Color? title_color,
  // File? tofile,

  EdgeInsetsGeometry? margin,
  String? font,
}) {
  return InkWell(
    // onTap: (){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=> tofile );
    // },

    child: Container(
        height: height ?? 50,
        width: width ?? MediaQuery.of(context).size.width * 0.80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Color(0xFF7CAB05),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: fontSize ?? 16,
                    color: title_color,
                    fontWeight: fontWeight ?? FontWeight.w600)),
          ),
        )),
  );
}

Widget logo(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.80,
    child: Image.asset(
      'assets/images/spotslogo.png',
      fit: BoxFit.fill,
    ),
  );
}

Widget text_field({
  required BuildContext context,
  required TextEditingController controller,
  required String? hintText,
  bool eye = true,
  double? width,
  double? height,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  Color? color,

  Border? border,
  Color? backColor,
  double? paddingSize,
  bool readOnly = false,
  required TextInputType keyboardType,

  TextInputType? inputType,
  String? font,
  double? radius,
  EdgeInsetsGeometry? margin,
  List<TextInputFormatter>? inputFormatters,
  // bool enabled = true,
  VoidCallback? onTap,
  // VoidCallback? onDone,
}) {
  return Container(
    height: height ?? 50,
    width: width ?? MediaQuery.of(context).size.width * 0.80,
    // margin:  margin ??  EdgeInsets.only(left: paddingSize?? 10, top: paddingSize?? 10, bottom:paddingSize?? 10,right:paddingSize?? 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius!) ?? BorderRadius.circular(10),
      // border: Border.all(color: const Color(0xffB3BBCB)),
      color: backColor ?? Colors.white,
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,

          decoration: InputDecoration(
            hintText: hintText,

            hintStyle: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: fontSize ?? 14,
                    color: Color(0xFF898989),
                    fontWeight: fontWeight ?? FontWeight.w400)),


            // // focusedBorder: OutlineInputBorder(
            // //   borderRadius: BorderRadius.circular(10),
            // //   borderSide: BorderSide(
            // //       color: Color(0xFF7CAB05),
            // //       width: 2
            // //   ),
            //
            //
            // ),

            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
            isDense: true,
          ),

          // style: ,
        ),
      ),
    ),
  );
}

class ObscureTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool enableToggleObscure;
  final TextInputType keyboardType;

  ObscureTextField(
      {required this.controller,
      required this.hintText,
      this.obscureText = true,
      this.enableToggleObscure = true,
      required this.keyboardType});

  @override
  _ObscureTextFieldState createState() => _ObscureTextFieldState();
}

class _ObscureTextFieldState extends State<ObscureTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      width: MediaQuery.of(context).size.width * 0.80,
      // margin:  margin ??  EdgeInsets.only(left: paddingSize?? 10, top: paddingSize?? 10, bottom:paddingSize?? 10,right:paddingSize?? 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: const Color(0xffB3BBCB)),
        color: Colors.white,
      ),
      child: Center(
        child: TextField(
          controller: widget.controller,
          obscureText: _obscureText,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            prefixText: '  ',

            hintText: widget.hintText,
            hintStyle: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF898989),
                    fontWeight: FontWeight.w400)),

            suffixIcon: widget.enableToggleObscure
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  )
                : null,

            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
            isDense: true,

            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: BorderSide(
            //       color: Color(0xFF7CAB05),
            //       width: 3
            //   ),
            //
            //
            // ),
            // enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   borderSide: BorderSide(
            //   color: Colors.white,
            // ),
          ),
        ),
      ),
    );
  }
}

Widget TextRoboto700_32({
  required double fontsize,
  Color? color,
  required String? text,
}) {
  return Text(
    text!,
    style: GoogleFonts.roboto(
        textStyle: TextStyle(
            fontSize: fontsize ?? 32,
            color: color ?? Colors.white,
            fontWeight: FontWeight.w700)),
  );
}

Widget TextRoboto600_16({
  required double fontsize,
  Color? color,
  required String? text,
  FontWeight? fontweight,
}) {
  return Text(
    text!,
    style: GoogleFonts.roboto(
        textStyle: TextStyle(
            fontSize: fontsize ?? 16,
            color: color ?? Colors.white,
            fontWeight: fontweight ?? FontWeight.w600)),
  );
}

Widget TextRoboto500_14({
  required double fontsize,
  Color? color,
  required String? text,
  FontWeight? fontweight,
}) {
  return Text(
    text!,
    style: GoogleFonts.roboto(
        textStyle: TextStyle(
            fontSize: fontsize ?? 14,
            color: color ?? Colors.white,
            fontWeight:fontweight ?? FontWeight.w500)),
  );
}

Widget Underlinedftext({
  required String text,
  required double height,
  required Color textcolor,
  required double fontsize,
  Color? underlinecolor,
}) {
  return Container(

    height: fontsize + 7,
    child: Stack(
        children: [
      Container(

        height: fontsize+4.9,
        decoration: BoxDecoration(

            border: Border(bottom: BorderSide(color: Colors.white, width: 1))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 1),
          child: Text(
            text,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: fontsize ?? 14,
                    color: textcolor ?? Colors.white,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    ]),
  );
}



//Home page custom widgets

Widget Logo_bar({
  required int value, required BuildContext context

}){
  return Container(
    height: 55,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
            height: 14.5,
            child: Image.asset('assets/images/spotslogo_small.png')),

        Container(
          height: 12,
            child: Image.asset('assets/images/Rupee.png')),
        Text(value as String, style: GoogleFonts.roboto(
            textStyle: TextStyle(
                fontSize:  12,
                color:  Colors.black,
                fontWeight: FontWeight.w500)),),

        Container(
          height: 19,

            child: Image.asset('assets/images/bell_icon.png')),


        Container(
            height: 19,
            child: Image.asset('assets/images/cart.png')),





      ],


    ),
  ) ;

}


//More page custom widetets


Widget MoreCards({
  required String Imagepath,
  required String Text,
}){
  return Card(
    elevation: 4,

    child: Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(Imagepath)),
            SizedBox(
              height: 3,
            ),
            Center(child: TextRoboto500_14(fontsize: 12, text: Text , color: Colors.black ))
          ],
        ),
      ),
    ),
  );
  
}


Widget Custombtn_h50_wfull({
  required BuildContext context,
  required text,
  required Color textcolor,
   Color? btncolor,
   double? width,
}
){
  return Container(
    height: 50,
    width: width ?? double.infinity ,

    decoration: BoxDecoration(
      color: Color(0xFF7CAB05),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: TextRoboto600_16(fontsize: 16, text: text)
    ),
  );
}



