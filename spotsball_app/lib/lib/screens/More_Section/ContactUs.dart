
import 'package:flutter/material.dart';
import 'package:spotsball_app/lib/screens/custom_widget.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {

  TextEditingController FirstName = TextEditingController();
  TextEditingController LastName = TextEditingController();
  TextEditingController E_mail = TextEditingController();
  TextEditingController Phone_no = TextEditingController();
  TextEditingController Feedback = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Review'),
      ),

      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TextRoboto500_14(fontsize: 16,
                      fontweight: FontWeight.w400,
                      color: Color(0xFF6A6A6A),
                      text:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.'),

                   SizedBox(
                     height: 8,
                   ),

                   TextRoboto500_14(fontsize: 16,
                      fontweight: FontWeight.w400,
                       color: Color(0xFF6A6A6A),
                      text:'Robert Robertson, 1234 NW Bobcat Lane, St. Robert, MO 65584-5678.'),

                  SizedBox(
                    height: 20,
                  ),

                  TextRoboto700_32(fontsize: 20,
                      color: Colors.black,
                      text: 'Contact Details'),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [

                      Container(
                        child: Image.asset('assets/more_section_images/Cell_phone_icon.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      TextRoboto500_14(fontsize: 16,
                          fontweight: FontWeight.w400,
                          color: Color(0xFF6A6A6A),
                          text:'+91- 9467015594'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [

                      Container(
                        child: Image.asset('assets/more_section_images/mail_icon.png'),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      TextRoboto500_14(fontsize: 16,
                          fontweight: FontWeight.w400,
                          color: Color(0xFF6A6A6A),
                          text:'nimitshkekhawat15@gmail.com'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: [

                        Container(
                          child: Image.asset('assets/more_section_images/location_icon.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: TextRoboto500_14(fontsize: 16,
                              fontweight: FontWeight.w400,
                              color: Color(0xFF6A6A6A),
                              text:'Robert Robertson, 1234 NW Bobcat Lane,'
                                  ' St. Robert, MO'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),



                  TextRoboto700_32(fontsize: 20,
                      color: Colors.black,
                      text: 'Send a Message'),
                  SizedBox(
                    height: 18,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: text_field(
                          context: context,
                          radius: 10,

                          controller:  FirstName,
                          hintText: 'First Name',
                          keyboardType:  TextInputType.text),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: text_field(
                          context: context,
                          radius: 10,

                          controller:  LastName,
                          hintText: 'Last Name',
                          keyboardType:  TextInputType.text),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: text_field(
                          context: context,
                          radius: 10,

                          controller:  E_mail,
                          hintText: 'E-Mail',
                          keyboardType:  TextInputType.emailAddress),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: text_field(
                          context: context,
                          radius: 10,

                          controller:  Phone_no,
                          hintText: 'Phone No. ',
                          keyboardType:  TextInputType.number),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      child: text_field(
                          context: context,
                          radius: 10,

                          controller:  Feedback,
                          hintText: 'FeedBack',
                          keyboardType:  TextInputType.text),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Custombtn_h50_wfull(context: context,
                      text: 'Send FeedBack',
                      textcolor: Colors.white),
                  SizedBox(
                    height: 20,
                  ),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
