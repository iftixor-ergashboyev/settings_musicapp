import 'dart:ui';

import 'package:drower_musicapp/screen/settings/account/account_settings.dart';
import 'package:drower_musicapp/screen/settings/language.dart';
import 'package:drower_musicapp/screen/settings/theme.dart';
import 'package:drower_musicapp/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  _notification(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
            color: Colors.transparent,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: CupertinoAlertDialog(
                title: Text("Bildirishnoma", style: GoogleFonts.inter()),
                content: Text("Bildirishnomalarni tanlash va ko'rish uchun ilova Sozlamalariga kirishni hohlaysizmi?", style: GoogleFonts.inter()),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text("Hozir emas", style: GoogleFonts.inter(color: slideColor)),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text("Ha", style: GoogleFonts.inter()),
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
        iconTheme: IconThemeData(color: iconColor),
        backgroundColor: bgColor,
        title: Text("Sozlamalar", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor, )),),
        actions: [
          Icon(CupertinoIcons.search, color: iconColor)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 5),
        children: [
          ListTile(
            leading: Icon(Icons.notifications, color: iconColor),
            title: Text("Bildirishnomalar", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            onTap: () {
              _notification(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.public, color: iconColor),
            title: Text("Ilova Tili", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> Language()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shield_moon, color: iconColor),
            title: Text("Ilova mavzusi", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> ThemeScreen()));
            },
          ),
          Divider(color: whiteColor),
          ListTile(
            leading: Icon(CupertinoIcons.person, color: iconColor),
            title: Text("Profil", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> AccountSettings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback, color: iconColor),
            title: Text("Fikr mulohaza", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(Icons.code, color: iconColor),
            title: Text("Ilova haqida", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
