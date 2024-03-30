import 'package:drower_musicapp/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {

  @override
  Widget build(BuildContext context) {
    bool _lights = false;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Text("Theme", style: GoogleFonts.inter(textStyle: TextStyle(
                fontSize: 20, color: whiteColor
            ))),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 270,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: bgDarkColor
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.music_house, color: iconColor, size: 30),
                      SizedBox(height: 5),
                      Text("Dark Mode", style: GoogleFonts.inter(textStyle: TextStyle(
                        color: whiteColor, fontSize: 20
                      ))),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 270,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.music_house_fill, color: slideColor, size: 30),
                      SizedBox(height: 5),
                      Text("Light Mode", style: GoogleFonts.inter(textStyle: TextStyle(
                          color: bgDarkColor, fontSize: 20
                      ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
         Container(
           height: 60,
           width: 280,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: bgDarkColor
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Light Mode", style: GoogleFonts.inter(textStyle: TextStyle(
               fontSize: 20, color: whiteColor
            ))),
               SizedBox(width: 10),
               CupertinoSwitch(
                 activeColor: slideColor,
                   value: _lights, onChanged: (bool value) {
                 setState(() {
                   _lights = value;
                 });
               })
             ],
           ),
         ),
        ],
      )
    );
  }
}
