import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: GlobalColors.mainColor,
        title: Text('Riwayat Transaksi',
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
              Image.asset('assets/images/riwayat 1.png',
              width: 300,
              height: 200,),
              Text('Belum ada Transaksi',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              Text('Belum ada Riwayat Transaksi melalui Layanan Kami',
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