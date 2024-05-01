import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';

class PesanView extends StatelessWidget {
  const PesanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: GlobalColors.mainColor,
        title: Text('Pesan',
        style: GoogleFonts.ubuntu(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Pesan.png',
              width: 250,
              height: 200,),
              Text('Belum ada Pesan Masuk',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              Text('Belum ada Pesan yang masuk mengenai Advokat, Notaris dan PPAT',
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: GlobalColors.textColor
              ),
              textAlign: TextAlign.center,)
            ],
          ),
        )    
        ),
    );
  }
}