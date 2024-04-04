import 'dart:ui';

import 'package:drower_musicapp/screen/settings/account/edit_account.dart';
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
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back, color: iconColor)),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context)=> EditAccount()));
          },
              icon: Icon(Icons.edit, color: iconColor))
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
            Text("Percy Hynes", style: GoogleFonts.inter(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: whiteColor)
            )),
            Text("percyshnes@gmail.com", style: GoogleFonts.inter(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: whiteColor)
            )),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.download, color: whiteColor, size: 16),
                    SizedBox(width: 10),
                    Center(
                      child: Text("Yuklanmalar", style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 16, color: whiteColor),
                      )),
                    ),
                    SizedBox(width: 120),
                    Icon(CupertinoIcons.right_chevron, color: whiteColor)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(CupertinoIcons.music_note_list, color: whiteColor, size: 16),
                    SizedBox(width: 10),
                    Center(
                      child: Text("Mening Playlistlarim", style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 16, color: whiteColor),
                      )),
                    ),
                    SizedBox(width: 60),
                    Icon(CupertinoIcons.right_chevron, color: whiteColor)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.more_time, color: whiteColor, size: 16),
                    SizedBox(width: 10),
                    Center(
                      child: Text("Tarix", style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 16, color: whiteColor),
                      )),
                    ),
                    SizedBox(width: 180),
                    Icon(CupertinoIcons.right_chevron, color: whiteColor)
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}