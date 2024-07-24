import 'package:flutter/material.dart';
import 'package:spotsball_app/lib/screens/custom_widget.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {

  TextEditingController CurrencyController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Currency'),
      ),

      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    children: [
                     Card(

                       elevation: 3,
                       child: Center(
                         child: Container(
                           height: 50,
                           child: text_field(

                             width: MediaQuery.of(context).size.width*0.59,
                             radius: 10,
                               context: context,
                               controller: CurrencyController,
                               hintText: '₹ INR',
                               keyboardType: TextInputType.number
                           ),
                         ),
                       ),
                     ),
                      SizedBox(
                        width: 7,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Custombtn_h50_wfull(
                            width: MediaQuery.of(context).size.width*0.26,
                              context: context,
                              text: 'Change',
                              textcolor:Colors.white
                          ),
                        ),
                      )
                    ],

                  ),
                )

              ],

            ),
          ),
        ),
      ),
    );
  }
}
