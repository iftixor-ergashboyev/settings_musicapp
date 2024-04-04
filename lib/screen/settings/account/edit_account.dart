import 'package:drower_musicapp/screen/settings/account/edit_email.dart';
import 'package:drower_musicapp/screen/settings/account/edit_name.dart';
import 'package:drower_musicapp/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({super.key});

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {

  _logout() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Hisobdan chiqish", style: GoogleFonts.montserrat(),),
          content: Text(" Hisobdan chiqib ketsangiz, Playlistlaringiz email'ingizga saqlanib qoladi.", style: GoogleFonts.montserrat(),),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text("Yo'q", style: GoogleFonts.montserrat(color: Colors.red),),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text("Ha", style: GoogleFonts.montserrat(),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  _deleteAccount() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Hisobni o'chirish", style: GoogleFonts.montserrat(),),
          content: Text("Accountni o'chirsangiz, Playlistlaringiz va qo'shiqlaringiz ham o'chib ketadi.", style: GoogleFonts.montserrat(),),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text("Yo'q", style: GoogleFonts.montserrat(color: Colors.red),),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text("Ha", style: GoogleFonts.montserrat(),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Text("Edit Account", style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: whiteColor)
            )),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Sizning rasmingiz:", style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 16, color: whiteColor),
              )),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    child: CircleAvatar(
                      backgroundImage: const NetworkImage('https://www.williamjacket.com/wp-content/uploads/2022/12/Xavier-Thorpe-Wednesday-2022-Percy-Hynes-Uniform-Blazer.jpg',
                      ),
                      radius: 40, // Rasimning o'lchami
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Icon(CupertinoIcons.camera_rotate, color: whiteColor, size: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Emailingiz:", style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 16, color: whiteColor),
              )),
              Row(
                children: [
                  Text("percyhynes@gmail.com", style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 16, color: whiteColor),
                  )),
                  IconButton(onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=> EditEmail()));
                  }, icon: Icon(Icons.edit, color: iconColor, size: 16,)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Ismingiz:", style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 16, color: whiteColor),
              )),
              Row(
                children: [
                  Text("Percy Hynes", style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 16, color: whiteColor),
                  )),
                  IconButton(onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=> EditName()));
                  }, icon: Icon(Icons.edit, color: iconColor, size: 16,)),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
              onPressed: () {}, child: Text("Bajarildi!", style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: whiteColor)
          ))),
          SizedBox(height: 5),
          Divider(),
          SizedBox(height: 5),
          Text("login", style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 15),
          )),
          SizedBox(height: 5),
          CupertinoButton(
            pressedOpacity: 0,
              child: Text("Loog out", style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 18, color: Colors.blue),
              )),
              onPressed: () {_logout();}
          ),
          CupertinoButton(
            pressedOpacity: 0,
              child: Text("Accountni o'chirish", style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 18, color: Colors.red),
              )),
              onPressed: () {
              _deleteAccount();
              }
          )
        ],
      ),
    );
  }
}
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 160,
        color: bgColor,
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Rasimni tahrirlash', style: GoogleFonts.inter(
                textStyle: TextStyle(color: whiteColor, fontSize: 18, fontWeight: FontWeight.bold)
              )),
              SizedBox(height: 5),
              Divider(),
              InkWell(
                onTap: () {},
                child: Row(

                  children: [
                    SizedBox(width: 5),
                    Icon(CupertinoIcons.camera, color: iconColor, size: 20),
                    SizedBox(width: 180),
                    Text("Kamera", style: GoogleFonts.inter(
                      textStyle: TextStyle(color: whiteColor, fontSize: 20)
                    )),
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(CupertinoIcons.folder_open, color: iconColor, size: 20),
                    SizedBox(width: 180),
                    Text("Gallery", style: GoogleFonts.inter(
                        textStyle: TextStyle(color: whiteColor, fontSize: 20)
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


