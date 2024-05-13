// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/buat_janji_offline.dart';
import 'package:loginn/chatnotaris.dart';
import 'package:loginn/chtadvokat1.dart';
import 'package:loginn/global_colors.dart';
import 'package:loginn/meet_advokat.dart';
import 'package:loginn/notif_view.dart';
import 'package:loginn/profile_advokat1.dart';
import 'package:loginn/profile_advokat2.dart';


class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        foregroundColor: Colors.white,
        leading: Image.asset('assets/images/logo.png',
        width: 5,
        height: 5,), 
        actions: [
          IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white, size: 35),
          onPressed: () {
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const NotifikasiView()));
          },
        ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome! \n Zhafira",
                  style: TextStyle(
                    color: GlobalColors.btnColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Image.asset(
                  'assets/images/Ilustrasi Hukum.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            ),

            //Bagian Menu
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  //Layanan kami
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20, ),
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Layanan Kami',
                        style: GoogleFonts.ubuntu(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,)
                          ),

                          GridView.count(
                            shrinkWrap: true,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 15,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            crossAxisCount: 3,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, 
                                     MaterialPageRoute(builder: (context) => const ChtAdvokat1View()));
                                },
                                splashColor: GlobalColors.btnColor,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/chat dengan advokat.png',
                                      height: 65,
                                      width: 65,
                                      ),
                                      Text('Chat dengan \nAdvokat',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: (){
                                  Navigator.push(context, 
                                     MaterialPageRoute(builder: (context) => const PilihNotarisView()));
                                },
                                splashColor: GlobalColors.btnColor,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/chat dengan notaris.png',
                                      height: 65,
                                      width: 65,
                                      ),
                                      Text('Layanan \nNotaris/PPAT',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: (){
                                  Navigator.push(context, 
                                     MaterialPageRoute(builder: (context) => const JanjiOfflineView()));
                                },
                                splashColor: GlobalColors.btnColor,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/buat janji offline.png',
                                      height: 65,
                                      width: 65,
                                      ),
                                      Text('Buat Janji Offline',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: (){
                                  Navigator.push(context, 
                                     MaterialPageRoute(builder: (context) => const MeetingAdvokatView()));
                                },
                                splashColor: GlobalColors.btnColor,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/Meeting Online.png',
                                      height: 65,
                                      width: 65,
                                      ),
                                      Text('Buat Meeting Online',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: (){},
                                splashColor: GlobalColors.btnColor,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/perceraian1.png',
                                      height: 65,
                                      width: 65,
                                      ),
                                      Text('Perceraian',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: (){},
                                splashColor: GlobalColors.btnColor,
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/Lainnya.png',
                                      height: 65,
                                      width: 65,
                                      ),
                                      Text('Lainnya',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                            )
                          ]
                    )
                  ),

                  //Promosi
                  Container(
                    margin: const EdgeInsets.only(left: 20, right:20, top: 10 ),
                    child: Image.asset('assets/images/promosi.png'),
                  ),

                  //Advokat Populer
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20 ),
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Advokat Populer',
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)
                              ),

                              TextButton(onPressed: (){}, 
                              child: Text('Lihat Semua',
                              style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: GlobalColors.mainColor,
                              fontWeight: FontWeight.w500,)
                              )
                              )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: const EdgeInsets.all(1),
                            child: Row(
                            children: [

                              //Advokat Populer 1
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) => const ProfileAdvokat1View()));
                                },
                                splashColor: GlobalColors.btnColor,
                                child: Container(
                                padding: const EdgeInsets.only(right: 20),
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
                                  child: Row(
                                    children: [
                                      Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 90,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(
                                          color: Colors.grey.shade200)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('assets/images/Nur.png',
                                            width: 70,
                                            height: 120,),
                                            Image.asset('assets/images/Online.png',
                                            width: 15,
                                            height: 15,)]
                                        )
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Nurmiati, S.H',
                                              style: GoogleFonts.ubuntu(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),),
                                              const SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset('assets/images/icon_pengalaman.png',
                                            height: 15,
                                            width: 15),
                                              const SizedBox(width: 10),
                                                  Text('5 Tahun',
                                                  style: GoogleFonts.ubuntu(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500)
                                            ),
                                            const SizedBox(width: 10),
                                            Image.asset('assets/images/icon_rating.png',
                                            height: 15,
                                            width: 15),
                                              const SizedBox(width: 10),
                                                  Text('4.6/5 Tahun',
                                                  style: GoogleFonts.ubuntu(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500)
                                            ),
                                          ],
                                          ),
                                          const SizedBox(height: 15),
                                            Text('Free',
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                            ),)
                                          ],  
                                          ),
                                    ],
                                  ),
                                 ),
                              ),

                              //Advokat Populer 2
                              const SizedBox(width: 10,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) => const ProfileAdvokat2View()));
                                },
                                splashColor: GlobalColors.btnColor,
                                child: Container(
                                padding: const EdgeInsets.only(right: 20),
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
                                  child: Row(
                                    children: [
                                      Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 90,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(
                                          color: Colors.grey.shade200)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('assets/images/gbr_advokat2.png',
                                            width: 70,
                                            height: 120,),
                                            Image.asset('assets/images/Online.png',
                                            width: 15,
                                            height: 15,)]
                                        )
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Muh. Rizaldi, S.H., M.H',
                                              style: GoogleFonts.ubuntu(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),),
                                              const SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                            const SizedBox(width: 10),
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
                                          const SizedBox(height: 15),
                                            Text('Free',
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                            ),)
                                          ],  
                                          ),
                                    ],
                                  ),
                          ),
                              ),
                            ],
                          ),
                          ),
                        )
                      ]
                    )
                  ),


                  //Notaris dan PPAT Populer
                  Container(
                    margin: const EdgeInsets.only(left: 20,  top: 10, right: 20 ),
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Notaris dan PPAT Populer',
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)
                              ),

                              TextButton(onPressed: (){}, 
                              child: Text('Lihat Semua',
                              style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: GlobalColors.mainColor,
                              fontWeight: FontWeight.w500,)
                              )
                              )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: const EdgeInsets.all(1),
                            child: Row(
                            children: [

                              //Notaris dan PPAT Populer 1
                              InkWell(
                                onTap: (){},
                                splashColor: GlobalColors.btnColor,
                                child: Container(
                                padding: const EdgeInsets.only(right: 20),
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
                                  child: Row(
                                    children: [
                                      Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 90,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(
                                          color: Colors.grey.shade200)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('assets/images/Nur.png',
                                            width: 70,
                                            height: 120,),
                                            Image.asset('assets/images/Online.png',
                                            width: 15,
                                            height: 15,)]
                                        )
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Nurmiati, S.H',
                                              style: GoogleFonts.ubuntu(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),),
                                              const SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset('assets/images/icon_pengalaman.png',
                                            height: 15,
                                            width: 15),
                                              const SizedBox(width: 10),
                                                  Text('5 Tahun',
                                                  style: GoogleFonts.ubuntu(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500)
                                            ),
                                            const SizedBox(width: 10),
                                            Image.asset('assets/images/icon_rating.png',
                                            height: 15,
                                            width: 15),
                                              const SizedBox(width: 10),
                                                  Text('4.6/5 Tahun',
                                                  style: GoogleFonts.ubuntu(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500)
                                            ),
                                          ],
                                          ),
                                          const SizedBox(height: 15),
                                            Text('Free',
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                            ),)
                                          ],  
                                          ),
                                    ],
                                  ),
                                 ),
                              ),

                              //Notaris dan PPAT Populer 2
                              const SizedBox(width: 10,),
                              InkWell(
                                onTap: (){},
                                splashColor: GlobalColors.btnColor,
                                child: Container(
                                padding: const EdgeInsets.only(right: 20),
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
                                  child: Row(
                                    children: [
                                      Container(
                                      margin: const EdgeInsets.all(10),
                                      width: 90,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(
                                          color: Colors.grey.shade200)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('assets/images/gbr_advokat2.png',
                                            width: 70,
                                            height: 120,),
                                            Image.asset('assets/images/Online.png',
                                            width: 15,
                                            height: 15,)]
                                        )
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Muh. Rizaldi, S.H., M.H',
                                              style: GoogleFonts.ubuntu(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),),
                                              const SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                            const SizedBox(width: 10),
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
                                          const SizedBox(height: 15),
                                            Text('Free',
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                            ),)
                                          ],  
                                          ),
                                    ],
                                  ),
                          ),
                              ),
                            ],
                          ),
                          ),
                        )
                      ]
                    )
                  ),

                  //Aetikel 
                  Container(
                    margin: const EdgeInsets.only(left: 20,  top: 10, right: 20 , bottom: 10),
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Baca Artikel',
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)
                              ),

                              TextButton(onPressed: (){}, 
                              child: Text('Lihat Semua',
                              style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              color: GlobalColors.mainColor,
                              fontWeight: FontWeight.w500,)
                              )
                              )
                          ],
                        ), 
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: const EdgeInsets.all(1),
                            child: Row(
                            children: [
                              InkWell(
                                    child: Container(
                                    padding: const EdgeInsets.only(right: 20),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 6,
                                            ),
                                          ]
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              child: Stack(
                                                alignment: Alignment.bottomCenter,
                                                children: [
                                                  Image.asset('assets/images/GbrArtikel2.png',
                                                  width: 150,
                                                  height: 120,),

                                                  const SizedBox(height: 50,),
                                                  Text('   Pengamat Sebut Putusan \nPraperadilan Eks Wamenkumham\n Patut Diapresiasi',
                                                  style: GoogleFonts.ubuntu(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  )
                                                ],
                                              ),                                              
                                            ),
                                            Text('Putusan Praperadilan \nPengadilan Negeri (PN) Jakarta \nSelatan terkait gugatan yang \ndiajukan eks Wamenkumham \nEdward Omar Sharif Hiariej \natau Eddy Hiariej patut \ndiapresiasi.',
                                            style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.w500,
                                                    fontSize: 12
                                            ),
                                            
                                            )
                                          ],
                                        ),
                                  ),
                                  ),

                                  const SizedBox(width: 10,),
                                  InkWell(
                                    child: Container(
                                    padding: const EdgeInsets.only(right: 20),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 6,
                                            ),
                                          ]
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              child: Stack(
                                                alignment: Alignment.bottomCenter,
                                                children: [
                                                  Image.asset('assets/images/GbrArtikel.png',
                                                  width: 150,
                                                  height: 120,),

                                                  const SizedBox(height: 50,),
                                                  Text('   Advokat Stefanus Roy \nRening Divonis 4,5 Tahun \nterkait Perintangan \nPenyidikan Lukas Enembe',
                                                  style: GoogleFonts.ubuntu(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  )
                                                ],
                                              ),                                              
                                            ),
                                            Text('Majelis hakim Pengadilan \nTindak Pidana Korupsi \n(Tipikor) pada Pengadilan \nNegeri (PN) Jakarta Pusat\n memvonis Stefanus Roy \nRening dengan hukuman\n 4 tahun dan 6 bulan\n penjara. ',
                                            style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.w500,
                                                    fontSize: 12
                                            ),
                                            
                                            )
                                          ],
                                        ),
                                  ),
                                  ),
                            ],
                          ),
                          ),
                        )
                      ]
                    )
                  ),       
                ],
                ),
              )
          ],
        )),
      
    );
  }
}


