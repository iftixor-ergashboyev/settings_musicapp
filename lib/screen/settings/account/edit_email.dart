import 'package:drower_musicapp/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditEmail extends StatefulWidget {
  const EditEmail({super.key});

  @override
  State<EditEmail> createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text("Edit Email", style: GoogleFonts.inter(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
            )),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Text("Hozirgi:", style: GoogleFonts.inter(
                  textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: iconColor),
                )),
                SizedBox(width: 5),
                Text("percyhynes@gmail.com", style: GoogleFonts.inter(
                  textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                )),
              ],
            ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepOrange)
              ),
              labelText: 'Yangi Email', // Label
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)
                  ),
                  labelText: 'Parol', // Label
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(400, 70)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                ),
                onPressed: () {}, child: Text("Bajarildi!", style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: whiteColor)
            ))),
          ],
        ),
      ),
    );
  }
}
