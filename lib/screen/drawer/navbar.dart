import 'dart:ui';
import 'package:drower_musicapp/screen/settings/account/account_settings.dart';
import 'package:drower_musicapp/screen/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  _logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: CupertinoAlertDialog(
              title: Text("Exit App", style: GoogleFonts.inter()),
              content: Text("Do you want to exit the app?", style: GoogleFonts.inter()),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  child: Text("No", style: GoogleFonts.inter(color: slideColor)),
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoDialogAction(
                  child: Text("Yes", style: GoogleFonts.inter()),
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

  _rateUS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
            color: Colors.transparent,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: CupertinoAlertDialog(
                title: Text("Rate US", style: GoogleFonts.inter()),
                content: Text("Rate the app now, open Play Market?", style: GoogleFonts.inter()),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text("Not now", style: GoogleFonts.inter(color: slideColor)),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text("Yes", style: GoogleFonts.inter()),
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

  _politics(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
            color: Colors.transparent,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: CupertinoAlertDialog(
                title: Text("Politics", style: GoogleFonts.inter()),
                content: Text("Seemingly trivial software does important cultural work, both reflecting hegemonicnorms and providing opportunities for transforming them. Software applicationsfor music production (music apps) within the iOS app store promise to broaden the potential for musical participation through simple fun user-friendly interface design", style: GoogleFonts.inter()),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: Text("OK", style: GoogleFonts.inter(color: slideColor)),
                    isDefaultAction: true,
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
    return Drawer(
      backgroundColor: bgColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Row(
              children: [
                SizedBox(height: 6),
                Text("Percy Hynes", style: GoogleFonts.inter(textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountSettings()));
                }, icon: Icon(CupertinoIcons.pencil, color: iconColor)),
              ],
            ),
            accountEmail: Text("percyhynes@gmail.com", style: GoogleFonts.inter(textStyle: TextStyle(color: whiteColor))),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    "https://www.williamjacket.com/wp-content/uploads/2022/12/Xavier-Thorpe-Wednesday-2022-Percy-Hynes-Uniform-Blazer.jpg",
                    width: 90, height: 90, fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.music_note_list, color: iconColor),
            title: Text('Playlist', style: TextStyle(color: whiteColor)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(CupertinoIcons.hand_thumbsup, color: iconColor),
            title: Text('Baholash', style: TextStyle(color: whiteColor)),
            onTap: () {
              _rateUS(context);
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.sparkles, color: iconColor),
            title: Text('Request', style: TextStyle(color: whiteColor)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings, color: iconColor),
            title: Text('Sozlamalar', style: TextStyle(color: whiteColor)),
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> Settings()));
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.square_list_fill, color: iconColor),
            title: Text('Politics', style: TextStyle(color: whiteColor)),
            onTap: () {
              _politics(context);
            },
          ),
          Divider(color: whiteColor),
          ListTile(
            leading: Icon(CupertinoIcons.arrow_turn_down_left, color: iconColor),
            title: Text('Chiqish', style: TextStyle(color: whiteColor)),
            onTap: () {
              _logout(context);
            },
          ),
        ],
      ),
    );
  }
}