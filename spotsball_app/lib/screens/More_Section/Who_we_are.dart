
import 'package:flutter/material.dart';

import '../custom_widget.dart';

class Who_we_are extends StatefulWidget {
  const Who_we_are({super.key});

  @override
  State<Who_we_are> createState() => _Who_we_areState();
}

class _Who_we_areState extends State<Who_we_are> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(

          preferredSize: Size.fromHeight(66),
          child: Main_appbar(title: 'Who We Are?', value: 0, context: context)
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
                TextRoboto700_32(
                    fontsize: 18,
                    text:'Who we Are',
                    color: Colors.black),

                SizedBox(
                  height: 10,
                ),

                Flexible(child: Textubuntu400_16(fontsize: 14, color: Color(0xFF6A6A6A), text: 'SpotsBall is a legally incorporated Indian company (SpotsBall Indian Pvt. Ltd.), with its operations based in Delhi. Every day our senior managers, technical support and help desk team work to make sure that SpotsBall is an enjoyable and fun on-line gaming experience for everyone to enjoy.'),
                ),

                SizedBox(
                  height:20,
                ),
                TextRoboto700_32(
                    fontsize: 18,
                    text:'Our Cricket Passion',
                    color: Colors.black),
                SizedBox(
                  height: 10,
                ),
                Flexible(child: Textubuntu400_16(fontsize: 14, color: Color(0xFF6A6A6A), text: 'Everyone at SpotsBall loves cricket; it’s the national sport of our country! We all grew up following and playing the game, and are passionate about our favorite teams and players. As game developers, that’s why we chose cricket as the sport for our new SpotsBall game. What about football, or field hockey? Maybe in the future SpotsBall will look at these applications. Sure, a SpotsBall game can be created for these games too - but we needed to choose one sport to launch SpotsBall in India, and cricket was the unanimous choice.'),
                ),







              ],

            ),
          ),
        ),
      ),
    );
  }
}
