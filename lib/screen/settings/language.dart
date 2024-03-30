import 'package:drower_musicapp/screen/home.dart';
import 'package:drower_musicapp/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child:  Text("Choose Language", textAlign: TextAlign.center, style: GoogleFonts.inter(textStyle: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
              ))),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: slideColor,
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    child: Image.network("https://static-00.iconduck.com/assets.00/uzbekistan-emoji-512x512-ad7udnsr.png"),
                  ),
                  SizedBox(width: 20),
                  Text("O'zbek tili", style: GoogleFonts.inter(textStyle: TextStyle(
                    color: whiteColor, fontSize: 15,
                  ))),
                ],
              ),
            ),
          ),
          SizedBox(height: 6),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: slideColor,
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    child: Image.network("https://static-00.iconduck.com/assets.00/russia-emoji-2048x2048-2fygdrtr.png"),
                  ),
                  SizedBox(width: 20),
                  Text("Rus tili", style: GoogleFonts.inter(textStyle: TextStyle(
                    color: whiteColor, fontSize: 15,
                  ))),
                ],
              ),
            ),
          ),
          SizedBox(height: 6),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: slideColor,
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    child: Image.network("https://cdn-icons-png.flaticon.com/512/3909/3909383.png"),
                  ),
                  SizedBox(width: 20),
                  Text("Ingiliz tili", style: GoogleFonts.inter(textStyle: TextStyle(
                    color: whiteColor, fontSize: 15,
                  ))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
