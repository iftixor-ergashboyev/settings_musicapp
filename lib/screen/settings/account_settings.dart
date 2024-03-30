import 'dart:ui';

import 'package:drower_musicapp/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {

  _deleteAccount(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
            color: Colors.transparent,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: CupertinoAlertDialog(
                title: Text("Hisobni o'chirish", style: GoogleFonts.inter()),
                content: Text(
                    "Hisobni butunlay o'chirsangiz, playlistlaringiz ham o'chib ketadi! Hisobni o'chirilsinmi?",
                    style: GoogleFonts.inter()),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text("Yo'q", style: GoogleFonts.inter(
                        color: CupertinoColors.activeBlue)),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text(
                        "Ha", style: GoogleFonts.inter(textStyle: TextStyle(
                        color: CupertinoColors.destructiveRed
                    ))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            )
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        backgroundColor: bgDarkColor,
        leading: Icon(CupertinoIcons.back, color: iconColor),
        actions: [
          Icon(Icons.notifications, color: iconColor),
        ],
        title: Text("Profile", style: GoogleFonts.inter(textStyle: TextStyle(
          color: whiteColor
        ))),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
           Container(
             height: 150,
             width: 150,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
             ),
             child: InkWell(
               child:  CircleAvatar(
                 backgroundImage: const NetworkImage('https://www.williamjacket.com/wp-content/uploads/2022/12/Xavier-Thorpe-Wednesday-2022-Percy-Hynes-Uniform-Blazer.jpg',
               ),
             ),
           ),
           ),
            CupertinoButton(child: Text("Tahrirlash", style: GoogleFonts.inter(
              textStyle: TextStyle(color: whiteColor, fontSize: 13)
            )), onPressed: () {
            //  Navigator.push(context, CupertinoPageRoute(builder: (context) => EditProfile()))
            }),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }
}