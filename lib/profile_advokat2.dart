import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';

class ProfileAdvokat2View extends StatelessWidget {
  const ProfileAdvokat2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: GlobalColors.mainColor,
          title: Text(
            'Profile Advokat',
            style: GoogleFonts.ubuntu(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50.0),
                alignment: Alignment.topCenter,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/gbr_advokat2.png',
                  width: 150,
                  height: 150,),
                  const SizedBox(height: 5,),
                  Text('Muh. Rizaldi, S.H., M.H',
                  style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),
                    ),
                    Text('Advokat',
                  style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/icon_pengalaman.png',
                        height: 15,
                        width: 15),
                          const SizedBox(width: 10),
                              Text('10 Tahun',
                              style: GoogleFonts.ubuntu(
                                fontSize: 10,
                                fontWeight: FontWeight.w500)
                        ),
                        const SizedBox(width: 20),
                        Image.asset('assets/images/icon_rating.png',
                        height: 15,
                        width: 15),
                          const SizedBox(width: 10),
                              Text('4.9/5 Tahun',
                              style: GoogleFonts.ubuntu(
                                fontSize: 10,
                                fontWeight: FontWeight.w500)
                        ),
                      ],
                    ),
                ],
                ),
              ),

              //Bagian Profile Advokat
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Area Praktik',
                      style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 2,),
                    Text('Pendirian PT, Keluarga, Hutang Piutang, Pertanahan dan Properti',
                      style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,),
                    ),
                    const SizedBox(height: 10,),
                    Text('Tentang Saya',
                      style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 2,),
                    Text('Saya adalah advokat yang menjunjung tinggi perfesionalisme di dalam profesi saya, serta memahami berbagai aspek hukum, serta menjunjung tinggi hak pencari keadilan.',
                      style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,),
                    ),
                    const SizedBox(height: 10,),
                    Text('Pendidikan',
                      style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 2,),
                    Row(
                      children: [
                        Image.asset('assets/images/icon_pendidikan.png',
                    height: 15,
                    width: 15),
                      const SizedBox(width: 10),
                          Text('S1 Hukum / Universitas Hasanuddin',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                    ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Text('Sertifikasi',
                      style: GoogleFonts.ubuntu(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),
                    ),
                    const SizedBox(height: 2,),
                    Row(
                      children: [
                        Image.asset('assets/images/icon_sertifikasi.png',
                    height: 15,
                    width: 15),
                      const SizedBox(width: 10),
                          Text('Pendidikan Khusus Profesi Advokat (PKPA)',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                    ),
                      ],
                    ),

                    Container(
                          width: double.infinity,
                          height: 52,
                          margin: const EdgeInsets.only(left: 26, right: 26, top: 60),
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.mainColor,),
                          onPressed: (){}, 
                        child: Text('Konsultasi',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.btnColor,))),
                        )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}