import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';

class PilihLayananView extends StatefulWidget {
  const PilihLayananView({super.key});

  @override
  State<PilihLayananView> createState() => _PilihLayananViewState();
}

class _PilihLayananViewState extends State<PilihLayananView> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: GlobalColors.mainColor,
          title: Text(
            'Pilih Layanan',
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
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 6,
                      )
                    ]
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pilih Layanan Chat',
                        style: GoogleFonts.ubuntu(
                            fontSize: 16,
                            fontWeight: FontWeight.bold)
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1, 
                              groupValue: _value, 
                              onChanged: (value){
                                setState(() {
                                  _value = value as int;
                                });
                              }
                              ),
                              const SizedBox(width: 10,),
                              Text('Konsultasi 30 Menit',
                              style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                              ),
                          ],
                        ),

                        Row(
                          children: [
                            Radio(
                              value: 2, 
                              groupValue: _value, 
                              onChanged: (value){
                                setState(() {
                                  _value = value as int;
                                });
                              }
                              ),
                              const SizedBox(width: 10,),
                              Text('Konsultasi 60 Menit',
                              style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                              ),
                          ],
                        ),

                        Row(
                          children: [
                            Radio(
                              value: 3, 
                              groupValue: _value, 
                              onChanged: (value){
                                setState(() {
                                  _value = value as int;
                                });
                              }
                              ),
                              const SizedBox(width: 10,),
                              Text('Konsultasi 90',
                              style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                              ),
                          ],
                        ),

                        Row(
                          children: [
                            Radio(
                              value: 4, 
                              groupValue: _value, 
                              onChanged: (value){
                                setState(() {
                                  _value = value as int;
                                });
                              }
                              ),
                              const SizedBox(width: 10,),
                              Text('Konsultasi 120 Menit',
                              style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                              ),
                          ],
                        ),
                      ],
                    )
              ),

              Container(
                          width: double.infinity,
                          height: 52,
                          margin: const EdgeInsets.only(left: 26, right: 26, top: 329, bottom: 20),
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          backgroundColor: GlobalColors.mainColor,),
                          onPressed: (){
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => const PilihLayananView()));
                          }, 
                        child: Text('Bayar',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: GlobalColors.btnColor,))),
                        )
            ]
            )
            )
    );
  }
}