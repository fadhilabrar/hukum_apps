import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: GlobalColors.mainColor,
        title: Text('Edit Profile',
        style: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Image.asset('assets/images/profile 1.png',
                      width: 150,
                      height: 150,),
                      TextButton(onPressed: (){}, 
                      child: Text('Ganti Foto profil',
                      style: GoogleFonts.ubuntu(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.mainColor))
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 48, right: 48),
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Nama',
                          labelStyle: GoogleFonts.ubuntu(
                          ),
                          hintText: 'Masukkan Nama',
                          hintStyle: GoogleFonts.ubuntu(),
                          border: const UnderlineInputBorder(),
                          ),
                       ),

                       TextFormField(
                        style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: GoogleFonts.ubuntu(
                          ),
                          hintText: 'Masukkan Email',
                          hintStyle: GoogleFonts.ubuntu(),
                          border: const UnderlineInputBorder(),
                          ),
                       ),

                       TextFormField(
                        style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          labelText: 'Tanggal Lahir',
                          labelStyle: GoogleFonts.ubuntu(
                          ),
                          hintText: 'Masukkan Tanggal Lahir',
                          hintStyle: GoogleFonts.ubuntu(),
                          border: const UnderlineInputBorder(),
                          ),
                       ),

                       TextFormField(
                        style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'No Telepon',
                          labelStyle: GoogleFonts.ubuntu(
                          ),
                          hintText: 'Masukkan No Telp',
                          hintStyle: GoogleFonts.ubuntu(),
                          border: const UnderlineInputBorder(),
                          ),
                       ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.only(left: 26, right: 26, top: 20),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.mainColor,),
                  onPressed: (){}, 
                child: Text('Ubah Profile',
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.btnColor,))),
                )
                
              ],
            )
          ],
        ),),
    );
  }
}