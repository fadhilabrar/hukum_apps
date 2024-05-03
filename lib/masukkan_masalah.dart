import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/bayar.dart';
import 'package:loginn/global_colors.dart';

class MasukkanMasalahmuView extends StatelessWidget {
  const MasukkanMasalahmuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: GlobalColors.mainColor,
        title: Text(
          'Detail Masalah',
          style: GoogleFonts.ubuntu(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 230,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 20, top:20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6,
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('informasi Konsultasi Hukum',
                  style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black38)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.text_fields_sharp),
                            labelStyle: GoogleFonts.ubuntu(
                            ),
                            hintText: 'Masukkan Topik Masalahmu',
                            hintStyle: GoogleFonts.ubuntu(),
                            border: const OutlineInputBorder(), 
                          ),
                        ),

                        const SizedBox(height: 10,),
                        TextFormField(
                          style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            icon: const Icon(Icons.description),
                            labelStyle: GoogleFonts.ubuntu(
                            ),
                            hintText: 'Deskripsikan Masalahmu',
                            hintStyle: GoogleFonts.ubuntu(),
                            border: const OutlineInputBorder(), 
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 52,
              margin: const EdgeInsets.only(left: 26, right: 26),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.mainColor,
                ),
                onPressed: () {
                  Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PembayaranView()));
                },
                child: Text('Konfirmasi',
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.btnColor,
                ),),
              ),      
            ),
          ],
        ),)
    );
  }
}