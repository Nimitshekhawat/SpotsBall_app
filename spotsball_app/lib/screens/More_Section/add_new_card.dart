import 'package:flutter/material.dart';

import '../custom_widget.dart';


class addnewcard extends StatefulWidget {
  const addnewcard({super.key});

  @override
  State<addnewcard> createState() => _addnewcardState();
}

class _addnewcardState extends State<addnewcard> {
  TextEditingController Cardno=TextEditingController();
  TextEditingController Expiredate=TextEditingController();
  TextEditingController CVV=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Update Profile', value: 0, context: context)
      ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Textubuntu700_32(fontsize: 14, text: 'Credit/Debit Card Number',color: Colors.black),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.black12
                        )
                      ]
                    ),

                    child: Center(
                      child: Row(
                        children: [
                          text_field(
                            width: MediaQuery.of(context).size.width*0.70,
                              context: context,
                              controller: Cardno,
                              hintText: 'XXXX XXXX XXXX 1689',
                              keyboardType: TextInputType.number,),

                          SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/debitcard_circles.png',height: 13.25,),

                          SizedBox(
                            width: 15,
                          ),
                          Image.asset('assets/images/cardicon.png',height: 13.25,),



                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textubuntu700_32(fontsize: 14, text: 'Expiry Date',color: Colors.black),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 5,
                              color: Colors.black12
                          )
                        ]
                    ),

                    child: Center(
                      child: Row(
                        children: [
                          text_field(
                            width: MediaQuery.of(context).size.width*0.70,
                            context: context,
                            controller: Expiredate ,
                            hintText: 'Valid Upto 08 / 2030',
                            keyboardType: TextInputType.number,),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textubuntu700_32(fontsize: 14, text: 'CVV / CVC',color: Colors.black),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 5,
                              color: Colors.black12
                          )
                        ]
                    ),

                    child: Center(
                      child: Row(
                        children: [
                          text_field(
                            width: MediaQuery.of(context).size.width*0.70,
                            context: context,
                            controller: CVV ,
                            hintText: '876',
                            keyboardType: TextInputType.number,),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),



                  Custombtn_h50_wfull(context: context, text: 'Save', textcolor: Colors.white),

                  SizedBox(
                    height: 30,
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
