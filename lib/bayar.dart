import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';

class PembayaranView extends StatefulWidget {
  const PembayaranView({super.key});

  @override
  State<PembayaranView> createState() => _PembayaranViewState();
}

class _PembayaranViewState extends State<PembayaranView> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: GlobalColors.mainColor,
          title: Text(
            'Ringkasan Pembayaran',
            style: GoogleFonts.ubuntu(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
          children: [
            Container(
                   margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                   padding: const EdgeInsets.all(10),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Nur.png',
                        width: 50,
                        height: 50,),

                        const SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nurmiati, S.H',
                            style: GoogleFonts.ubuntu(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),),

                            const SizedBox(height: 2,),
                            Text('Advokat',
                            style: GoogleFonts.ubuntu(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),),
                          ],
                        )
                        
                        ],
                      ),
                ),

                Container(
                  alignment: Alignment.topLeft,
                   margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                   padding: const EdgeInsets.all(10),
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
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Biaya Sesi 30 Menit',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          Text('Rp. 50.000',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Biaya Layanan',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          Text('Rp. 2.000',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pembayaranmu',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text('Rp. 52.000',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      )
                    ],
                   )
                ),

                Container(
                  alignment: Alignment.topLeft,
                   margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                   padding: const EdgeInsets.all(10),
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
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pilih Metode Pembayaran',
                      style: GoogleFonts.ubuntu(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height: 5,),
                      RadioListTile(
                      value: 1,
                      groupValue: _selectedValue,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value as int;
                        });
                      },
                      title: Row(
                        children: [
                          Image.asset('assets/images/gopay.png', width: 30, height: 30), 
                          const SizedBox(width: 2),
                          TextButton(onPressed: (){
                            _displayBottomSheet(context);
                          }, 
                          child: Text('Gopay',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ), 
                          )
                          )
                        ],
                      ),
                      subtitle: Text('sambungkan dengan gopay',
                      style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                      ),
                    ),
                      ),

                      RadioListTile(
                      value: 2,
                      groupValue: _selectedValue,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value as int;
                        });
                      },
                      title: Row(
                        children: [
                          Image.asset('assets/images/ovo.png', width: 30, height: 30), 
                          const SizedBox(width: 2),
                          TextButton(onPressed: (){
                            _displayBottomSheet1(context);
                          }, 
                          child: Text('Ovo',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ), 
                          )
                          )
                        ],
                      ),
                      subtitle: Text('sambungkan dengan Ovo',
                      style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                      ),
                    ),
                      ),

                      RadioListTile(
                      value: 3,
                      groupValue: _selectedValue,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value as int;
                        });
                      },
                      title: Row(
                        children: [
                          Image.asset('assets/images/LinkAja.png', width: 30, height: 30), 
                          const SizedBox(width: 2),
                          TextButton(onPressed: (){
                            _displayBottomSheet2(context);
                          }, 
                          child: Text('LinkAja',
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ), 
                          )
                          )
                        ],
                      ),
                      subtitle: Text('sambungkan dengan LinkAja',
                      style: GoogleFonts.ubuntu(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54
                      ),
                    ),
                      ),
                    ],
                   ),
                ),

                const SizedBox(height: 111,),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pembayaranmu',
                            style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Rp. 52.000',
                            style: GoogleFonts.ubuntu(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100, // lebar button
                        height: 52, // tinggi button
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalColors.mainColor,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const ListChatView()),
                            // );
                          },
                          child: Text(
                            'Bayar',
                            style: GoogleFonts.ubuntu(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: GlobalColors.btnColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

                
          ],)),
    );
  }

  Future _displayBottomSheet(BuildContext context){
      return showModalBottomSheet(
        context: context, 
        builder: (context) => Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          alignment: Alignment.topLeft,
          height: 600,
          width: 600,
          child: Column(
            
            children: [
              Text('Sambungkan Gopay ke Aplikasi',
              style: GoogleFonts.ubuntu(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: GlobalColors.mainColor
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Image.asset('assets/images/metode pembayaran 1.png',
                  width: 50,
                  height: 50,),

                  const SizedBox(width: 20,),
                  Text('Masukkan no telepon yang terdaftar \nke akun gopay kamu',
                    style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ), 
                ],
              ),

              const SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 6,
                        ),
                      ]
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/flag.png',
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          '+62',
                          style: GoogleFonts.ubuntu(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Nomor Gopay',
                        labelStyle: GoogleFonts.ubuntu(),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.only(left: 26, right: 26, top: 180),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.mainColor,),
                  onPressed: (){
                    Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PembayaranView()));
                  }, 
                child: Text('Lanjut',
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.btnColor,))),
                )

            ],
            
          ),
        ));
    }

    Future _displayBottomSheet1(BuildContext context){
      return showModalBottomSheet(
        context: context, 
        builder: (context) => Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          alignment: Alignment.topLeft,
          height: 600,
          width: 600,
          child: Column(
            
            children: [
              Text('Sambungkan Ovo ke Aplikasi',
              style: GoogleFonts.ubuntu(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: GlobalColors.mainColor
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Image.asset('assets/images/metode pembayaran 1.png',
                  width: 50,
                  height: 50,),

                  const SizedBox(width: 20,),
                  Text('Masukkan no telepon yang terdaftar \nke akun Ovo kamu',
                    style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ), 
                ],
              ),

              const SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 6,
                        ),
                      ]
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/flag.png',
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          '+62',
                          style: GoogleFonts.ubuntu(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Nomor Ovo',
                        labelStyle: GoogleFonts.ubuntu(),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.only(left: 26, right: 26, top: 180),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.mainColor,),
                  onPressed: (){
                    Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PembayaranView()));
                  }, 
                child: Text('Lanjut',
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.btnColor,))),
                )

            ],
            
          ),
        ));
    }

    Future _displayBottomSheet2(BuildContext context){
      return showModalBottomSheet(
        context: context, 
        builder: (context) => Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          alignment: Alignment.topLeft,
          height: 600,
          width: 600,
          child: Column(
            
            children: [
              Text('Sambungkan LinkAja ke Aplikasi',
              style: GoogleFonts.ubuntu(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: GlobalColors.mainColor
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Image.asset('assets/images/metode pembayaran 1.png',
                  width: 50,
                  height: 50,),

                  const SizedBox(width: 20,),
                  Text('Masukkan no telepon yang terdaftar \nke akun LinkAja kamu',
                    style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ), 
                ],
              ),

              const SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 6,
                        ),
                      ]
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/flag.png',
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          '+62',
                          style: GoogleFonts.ubuntu(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Nomor LinkAja',
                        labelStyle: GoogleFonts.ubuntu(),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.only(left: 26, right: 26, top: 180),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColors.mainColor,),
                  onPressed: (){
                    Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const PembayaranView()));
                  }, 
                child: Text('Lanjut',
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: GlobalColors.btnColor,))),
                )

            ],
            
          ),
        )
    );
  }
}