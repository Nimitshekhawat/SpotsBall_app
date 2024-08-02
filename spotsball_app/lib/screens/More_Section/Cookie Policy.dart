import 'package:flutter/material.dart';

import '../custom_widget.dart';

class cookie_policy extends StatefulWidget {
  const cookie_policy({super.key});

  @override
  State<cookie_policy> createState() => _cookie_policyState();
}

class _cookie_policyState extends State<cookie_policy> {

  TextEditingController cookie_policyController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Cookie Policy', value: 0, context: context)
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
                Flexible(child: TextRoboto400_16(
                    fontsize: 16,
                    color: Color(0xFF6A6A6A),
                    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.'))



              ],

            ),
          ),
        ),
      ),
    );
  }
}
