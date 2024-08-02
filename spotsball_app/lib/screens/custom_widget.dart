import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';  // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'dart:async';// Provides [VideoController]


import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotsball_app/screens/Homepage_screens/cart.dart';
// custom_video_player.dart
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

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
  int? maxlength,
  Border? border,
  Color? backColor,
  double? paddingSize,
  bool readOnly = false,
  required TextInputType keyboardType,
  bool obsecureText1 = true,
  TextInputType? inputType,
  String? font,
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
      borderRadius: BorderRadius.circular(10),
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
                      _obscureText ? Icons.visibility_off: Icons.visibility ,
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
Widget TextRoboto400_16({
  required double fontsize,
  Color? color,
  required String? text,
}) {
  return Text(
    text!,
    style: GoogleFonts.roboto(
        textStyle: TextStyle(
            fontSize: fontsize ?? 14,
            color: color ?? Color(0xFF6A6A6A),
            fontWeight: FontWeight.w400)),
  );
}
//Ubantu text custom widgets


Widget Textubuntu700_32({
  required double fontsize,
  Color? color,
  required String? text,
}) {
  return Text(
    text!,
    style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
            fontSize: fontsize ?? 32,
            color: color ?? Colors.white,
            fontWeight: FontWeight.w700)),
  );
}

Widget Textubuntu600_16({
  required double fontsize,
  Color? color,
  required String? text,
  FontWeight? fontweight,
}) {
  return Text(
    text!,
    style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
            fontSize: fontsize ?? 16,
            color: color ?? Colors.white,
            fontWeight: fontweight ?? FontWeight.w600)),
  );
}



Widget Textubuntu500_14({
  required double fontsize,
  Color? color,
  required String? text,
  FontWeight? fontweight,
}) {
  return Text(
    text!,
    style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
            fontSize: fontsize ?? 14,
            color: color ?? Colors.white,
            fontWeight:fontweight ?? FontWeight.w500)),
  );
}
Widget Textubuntu400_16({
  required double fontsize,
  Color? color,
  required String? text,
}) {
  return Text(
    text!,
    style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
            fontSize: fontsize ?? 14,
            color: color ?? Color(0xFF6A6A6A),
            fontWeight: FontWeight.w400)),
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
  required int value,
  required BuildContext context,
  VoidCallback? onTap,
  bool Cartpagevalue=false,
  VoidCallback? onCartTap,
  bool Buyyourtickets=false
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0, // Optional: Remove elevation if not needed
    backgroundColor: Colors.white, // Customize background color
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex:8,
          child: Container(
              child: Image.asset('assets/images/spotslogo_small.png', height: 30)),
        ),
        SizedBox(
          width:MediaQuery.of(context).size.width * 0.20,
        ),
        Expanded(
          flex: 2,
          child: Container(

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset('assets/images/Rupee.png',height: 18),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '$value',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),),
        ),

        Expanded(
            flex: 2,
            child: Image.asset('assets/images/bell_icon.png', height: 33)),
        InkWell(
          onTap: Cartpagevalue ? onTap : (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> cartpage()));
          },
          child: Expanded(
              flex: 2,
              child: Image.asset('assets/images/cart.png', height: 33)),
        ),
      ],
    ),
  );
}


Widget Main_appbar({
  required String title,
  required int value,
  required BuildContext context,
  VoidCallback? onTap,
  bool Cartpagevalue=false,
  VoidCallback? onCartTap,
}) {
  return AppBar(
    automaticallyImplyLeading: false,

    backgroundColor: Color(0xFF00326C), // Customize background color
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex:1,
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 33,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),

                child: Image.asset('assets/images/blue_arrow.png')),
          ),
        ),
        SizedBox(
          width:MediaQuery.of(context).size.width * 0.08,
        ),

        Expanded(
          flex: 7,
            child:  Container(child: Center(child: TextRoboto700_32(fontsize: 24, text: '$title')))
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 30,

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image.asset('assets/images/Rupee_white.png',height: 28),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '$value',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),),
        ),
        SizedBox(
          width: 20,
        ),


        Expanded(
            flex: 1,
            child: InkWell(
              onTap: Cartpagevalue ? onTap : (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> cartpage()));
              },
              child: Container(
                  height: 33,
                  decoration: BoxDecoration(
                    color: Color(0xFF7CAB05),
                    shape: BoxShape.circle,
                  ),

                  child: Image.asset('assets/images/cart_white.png', height: 33)),
            )),
      ],
    ),
  );
}
Color getRandomColor() {
  Random random = Random();

  // Generate random values for red, green, and blue components
  int r = random.nextInt(128);   // Red component: 0 to 127
  int g = random.nextInt(128);   // Green component: 0 to 127
  int b = random.nextInt(128);   // Blue component: 0 to 127

  // Return a Color object with random ARGB value (alpha is 255 for opaque)
  return Color.fromARGB(255, r, g, b);
}
//
// Widget  Ticket_card({
//   required BuildContext context,
//   required int Winprice,
//   required String Compitition_title,
//   required String lastdate,
//   required double? Ticket_price,
//   required String Tickettext,
//   required int? Daysleft,
//   Color? Ticketcolor,
//    required bool heart,
//   VoidCallback? onTap,
//
//
// }){
//   return Stack(
//     children:[
//       Card(
//         elevation: 5,
//         child: Container(
//           height: 230,
//           width: 187,
//
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10)
//           ),
//           child: Column(
//             children: [
//               Container(
//                 height: 68,
//
//                 decoration: BoxDecoration(
//                     color: Ticketcolor ?? getRandomColor(),
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top:20,right: 18),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       TextRoboto400_16(fontsize: 12 ,text: 'Win',color: Colors.white),
//                       SizedBox(
//                         width: 3,
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(bottom: 18),
//                         height: 28,
//                         // color: Colors.white,
//
//                         child: Center(
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top:7),
//                                 child: Image.asset('assets/images/Rupee_white.png',height: 21,fit: BoxFit.fitHeight,),
//                               ),
//
//                               Center(child: TextRoboto700_32(fontsize: 23, text:'$Winprice')),
//
//
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 5),
//                 child: Container(
//                   child:Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 2,
//                       ),
//                       TextRoboto500_14(fontsize: 13, text: Compitition_title,color: Color(0xFF535353)),
//                       TextRoboto400_16(fontsize: 10, text: 'Deadline: $Daysleft',color: Color(0xFF6A6A6A),),
//                       Row(
//                         children: [
//                           TextRoboto400_16(fontsize: 10, text: 'Ticket Price: ',color: Color(0xFF6A6A6A),),
//                           Image.asset('assets/images/Rupee_white.png',height: 10,color: Color(0xFF6A6A6A),),
//                           TextRoboto400_16(fontsize: 10, text: '$Ticket_price',color: Color(0xFF6A6A6A),),
//                         ],
//                       ),
//
//                       Container(
//                         width: 140,
//                         child: TextRoboto400_16(fontsize: 10, text:Tickettext,color: Color(0xFF6A6A6A),),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//
//                       Row(
//                         children: [
//                           Image.asset('assets/images/redclockicon.png'),
//                           SizedBox(
//                             width: 2,
//                           ),
//                           TextRoboto500_14(fontsize: 9, text: '$Daysleft Days left', color: Color(0xFFBD0000))
//                         ],
//                       ),
//
//
//
//
//
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//
//         ),
//       ),
//       Positioned(
//         bottom: 12,
//         right: 20,
//         child: Container(
//           width: 28,
//           decoration: BoxDecoration(
//             color: Color(0xFF7CAB05),
//             borderRadius: BorderRadius.circular(28),
//           ),
//           child: Image.asset('assets/images/cart_white.png'),
//         ),
//       ),
//       Positioned(
//         top: 13,
//         right: 20,
//         child: Container(
//           height: 12,
//           width: 14,
//           child: heart ? Image.asset('assets/images/Green_heart.png') : Image.asset('assets/images/white_heart.png'),
//
//           // child: Image,
//         ),
//       )
//
//
//     ]
//   );
//
// }



class TicketCard extends StatefulWidget {
  final String Winprice;
  final String Compitition_title;
  final String lastdate;
  final double? Ticket_price;
  final String Tickettext;
  final int? Daysleft;
  final Color? Ticketcolor;
  final bool heart;
  final VoidCallback? onTap;

  TicketCard({
    required this.Winprice,
    required this.Compitition_title,
    required this.lastdate,
    required this.Ticket_price,
    required this.Tickettext,
    required this.Daysleft,
    this.Ticketcolor,
     this.heart=false,
    this.onTap,
  });

  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  bool _heartState = false;

  @override
  void initState() {
    super.initState();
    _heartState = widget.heart; // Initialize heart state from the widget prop
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _heartState = !_heartState; // Toggle heart state
          if (widget.onTap != null) {
            widget.onTap!(); // Call the onTap callback if provided
          }
        });
      },
      child: Stack(
        children: [
          Card(
            elevation: 5,
            child: Container(
              height: 230,
              width: 187,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    height: 68,
                    decoration: BoxDecoration(
                      color: widget.Ticketcolor ?? getRandomColor(), // Adjust as needed
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextRoboto400_16(fontsize: 12, text: 'Win',color: Colors.white),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 16),
                            height: 28,
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Image.asset(
                                      'assets/images/Rupee_white.png',
                                      height: 18,
                                      fit: BoxFit.fitHeight,
                                      color: Colors.white,



                                    ),
                                  ),
                                  Center(
                                    child: TextRoboto700_32(fontsize: 22, text: '${widget.Winprice}',color: Colors.white)
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          TextRoboto500_14(fontsize: 12, text: '${widget.Compitition_title}',color: Color(0xFF535353)),
                          SizedBox(
                            height: 1,
                          ),
                          TextRoboto400_16(fontsize: 10, text: 'Deadline: ${widget.lastdate}'),
                          Row(
                            children: [
                              TextRoboto400_16(fontsize: 10, text: 'Ticekt Price:'),
                              Image.asset(
                                'assets/images/Rupee_white.png',
                                height: 10,
                                color: Color(0xFF6A6A6A),
                              ),
                              TextRoboto400_16(fontsize: 10, text: '${widget.Ticket_price}'),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: 145,
                            child: TextRoboto400_16(fontsize: 9, text: '${widget.Tickettext}'),

                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/redclockicon.png'),
                              SizedBox(
                                width: 2,
                              ),
                             TextRoboto500_14(fontsize: 10, text: '${widget.Daysleft} Days left',color: Color(0xFFBD0000))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 20,
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xFF7CAB05),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Image.asset('assets/images/cart_white.png'),
            ),
          ),
          Positioned(
            top: 13,
            right: 22,
            child: Container(
              height: 12,
              width: 14,
              child: _heartState ? Image.asset('assets/images/Green_heart.png') : Image.asset('assets/images/white_heart.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//
//
// class TicketCard extends StatefulWidget {
//   final int Winprice;
//   final String Compitition_title;
//   final String lastdate;
//   final double? Ticket_price;
//   final String Tickettext;
//   final int? Daysleft;
//   final Color? Ticketcolor;
//   final VoidCallback? callback;
//
//   TicketCard({
//     required this.Winprice,
//     required this.Compitition_title,
//     required this.lastdate,
//     required this.Ticket_price,
//     required this.Tickettext,
//     required this.Daysleft,
//     this.Ticketcolor,
//     this.callback,
//   });
//
//   @override
//   _TicketCardState createState() => _TicketCardState();
// }
//
// class _TicketCardState extends State<TicketCard> {
//   bool heart = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           heart = !heart; // Toggle heart state
//         });
//       },
//       child: Card(
//         elevation: 5,
//         child: Container(
//           height: 230,
//           width: 187,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 height: 68,
//                 decoration: BoxDecoration(
//                   color: widget.Ticketcolor ?? Colors.blue, // Adjust as needed
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 20, right: 18),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Win',
//                         style: TextStyle(fontSize: 12, color: Colors.white),
//                       ),
//                       SizedBox(
//                         width: 3,
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(bottom: 18),
//                         height: 28,
//                         child: Center(
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 7),
//                                 child: Image.asset(
//                                   'assets/images/Rupee_white.png',
//                                   height: 21,
//                                   fit: BoxFit.fitHeight,
//                                 ),
//                               ),
//                               Center(
//                                   child: Text(
//                                     '${widget.Winprice}',
//                                     style: TextStyle(
//                                         fontSize: 23,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white),
//                                   )),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 5),
//                 child: Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 2,
//                       ),
//                       Text(
//                         widget.Compitition_title,
//                         style:
//                         TextStyle(fontSize: 13, color: Color(0xFF535353)),
//                       ),
//                       Text(
//                         'Deadline: ${widget.Daysleft}',
//                         style: TextStyle(fontSize: 10, color: Color(0xFF6A6A6A)),
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             'Ticket Price: ',
//                             style: TextStyle(fontSize: 10, color: Color(0xFF6A6A6A)),
//                           ),
//                           Image.asset(
//                             'assets/images/Rupee_white.png',
//                             height: 10,
//                             color: Color(0xFF6A6A6A),
//                           ),
//                           Text(
//                             '${widget.Ticket_price}',
//                             style: TextStyle(fontSize: 10, color: Color(0xFF6A6A6A)),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         width: 140,
//                         child: Text(
//                           widget.Tickettext,
//                           style: TextStyle(fontSize: 10, color: Color(0xFF6A6A6A)),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Row(
//                         children: [
//                           Image.asset('assets/images/redclockicon.png'),
//                           SizedBox(
//                             width: 2,
//                           ),
//                           Text(
//                             '${widget.Daysleft} Days left',
//                             style: TextStyle(fontSize: 9, color: Color(0xFFBD0000)),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

Widget Crossbtn( context ){
  return InkWell(
    onTap: (){
      Navigator.pop(context);
    },
    child: Container(
      height: 27,
      width: 27,
      child: Image.asset('assets/images/Crossicon.png'),
    ),
  );
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset(Imagepath,height: 38,)),
            SizedBox(
              height: 3,
            ),
             Flexible(child: TextRoboto500_14(fontsize: 12, text: Text , color: Colors.black ))
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
      color: btncolor ?? Color(0xFF7CAB05),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
        child: TextRoboto600_16(fontsize: 16, text: text)
    ),
  );
}


// custom_video_player.dart

//
// enum MediaType { asset, url }
//
// class CustomVideoPlayer extends StatefulWidget {
//   final String mediaSource;  // Path to the video asset or URL
//   final MediaType mediaType; // Type of the media source (asset or URL)
//
//   const CustomVideoPlayer({
//     Key? key,
//     required this.mediaSource,
//     this.mediaType = MediaType.url,
//   }) : super(key: key);
//
//   @override
//   _CustomVideoPlayerState createState() => _CustomVideoPlayerState();
// }
//
// class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
//   late final player = Player();
//   late final controller = VideoController(player);
//   late Future<File> _videoFile;
//
//   @override
//   void initState() {
//     super.initState();
//     MediaKit.ensureInitialized();
//     if (widget.mediaType == MediaType.asset) {
//       _videoFile = _loadAsset();
//     }
//   }
//
//   Future<File> _loadAsset() async {
//     final ByteData data = await rootBundle.load(widget.mediaSource);
//     final buffer = data.buffer.asUint8List();
//     final tempDir = Directory.systemTemp;
//     final file = File('${tempDir.path}/temp_video.mp4');
//     await file.writeAsBytes(buffer);
//     return file;
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _videoFile.then((file) {
//       final media = widget.mediaType == MediaType.asset
//           ? Media(file.uri.toString())
//           : Media(widget.mediaSource);
//
//       player.open(media);
//     });
//   }
//
//   @override
//   void dispose() {
//     player.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.width * 9.0 / 16.0,
//         child: Video(controller: controller),
//       ),
//     );
//   }
// }



class CustomVideoPlayer extends StatefulWidget {
  final String videoUrl;

  const CustomVideoPlayer({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _CustomVideoPlayerState createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late final player = Player();
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    MediaKit.ensureInitialized();
    player.open(Media(widget.videoUrl));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 9.0 / 16.0,
        child: Video(controller: controller),
      ),
    );
  }
}
