
import 'package:flutter/material.dart';
import 'package:spotsball_app/screens/More_Section/add_new_card.dart';

import '../custom_widget.dart';

class update_profile extends StatefulWidget {
  const update_profile({super.key});

  @override
  State<update_profile> createState() => _update_profileState();
}

class _update_profileState extends State<update_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Container(
                    height: 90,
                    child: Row(
                      children: [
                        Container(
                          height: 86,
                          width: 86,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),

                          ),

                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Textubuntu700_32(fontsize: 16, text: 'Nimit Shekhawat',color: Colors.black),
                            SizedBox(
                              height: 6,
                            ),
                            Textubuntu400_16(fontsize: 16, text:'example@gmail.com')

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                   height: 20,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 61,

                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                  child: Textubuntu500_14(fontsize: 14, text: 'Nimit Shekhawat',color: Colors.black)),
                            ),
                            Expanded(
                                flex: 2,
                                child: Image.asset('assets/images/editicon.png'))

                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 61,

                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                  child: Textubuntu500_14(fontsize: 14, text: 'example@gmail.com',color: Colors.black)),
                            ),
                            Expanded(
                                flex: 2,
                                child: Image.asset('assets/images/editicon.png'))

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Card(
                    elevation: 4,
                    child: Container(
                      height: 61,

                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                  child: Textubuntu500_14(fontsize: 14, text: '8676568798',color: Colors.black)),
                            ),
                            Expanded(
                                flex: 2,
                                child: Image.asset('assets/images/editicon.png'))

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textubuntu500_14(fontsize: 16, text: 'Payment Methods',color: Colors.black),
                  SizedBox(
                    height: 12,
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                      height: 61,

                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Textubuntu500_14(fontsize: 14, text: 'Card 1',color: Colors.black),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Textubuntu500_14(fontsize: 14, text: 'XXXX XXXX XXXX 8787',color: Colors.black),
                                    ],
                                  )

                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Image.asset('assets/images/editicon.png'))

                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> addnewcard()));
                    },

                    child: Container(
                      width: double.infinity,
                      child:  Center(child: Textubuntu500_14(fontsize: 14, text: '+ Add New Card',color: Color(0xFF7CAB05))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Custombtn_h50_wfull(context: context, text: 'Save', textcolor: Colors.white)






                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
