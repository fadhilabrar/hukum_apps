import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginn/global_colors.dart';
import 'package:loginn/kode.dart';
import 'package:loginn/login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SafeArea(
        child: ListView(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 40.0, top: 30.0),
            child: (
              Text('Sign UP',
              style: GoogleFonts.ubuntu(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),  
              )
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 40.0,),
            child: (
              Text('Create account and enjoy all services',
              style: GoogleFonts.ubuntu(
              fontSize: 16,
              color: GlobalColors.textColor,
              ),
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 48, right: 47, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [     
                 TextFormField(
                  style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.phone),
                    labelText: 'No Telp',
                    labelStyle: GoogleFonts.ubuntu(
                    ),
                    hintText: 'Masukkan Nomor Telepon',
                    hintStyle: GoogleFonts.ubuntu(),
                    border: const UnderlineInputBorder(),
                    
                  ),
                ),           
                TextFormField(
                  style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.email),
                    labelText: 'Email',
                    labelStyle: GoogleFonts.ubuntu(
                    ),
                    hintText: 'Masukkan Email',
                    hintStyle: GoogleFonts.ubuntu(),
                    border: const UnderlineInputBorder(),
                    
                  ),
                ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(fontSize: 13, color: GlobalColors.textColor),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.lock),
                        labelText: 'Password',
                        labelStyle: GoogleFonts.ubuntu(),
                        hintText: 'Masukkan Password',
                        hintStyle: GoogleFonts.ubuntu(),
                        border: const UnderlineInputBorder(),
                        suffix: const Icon(Icons.visibility),
                  ),
                ),
                // TextButton(onPressed:  () {}, 
                // child:    
                // Text("forgot password",
                // style: GoogleFonts.ubuntu(
                //   fontSize: 14,
                //   fontWeight: FontWeight.w500,
                //   color: GlobalColors.mainColor,
                // ),
                // ),)
            
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 52,
            margin: const EdgeInsets.only(left: 26, right: 26, top: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: GlobalColors.mainColor,
              ),
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const KodeVieww()));
              },
              child: Text('Sign Up',
              style: GoogleFonts.ubuntu(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: GlobalColors.btnColor,
              ),),
            ),      
          ),
          
          const SizedBox(height: 83),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("have an account ?",
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: GlobalColors.textColor,
                               
              ),
              ),
              
              const SizedBox(height: 250),
              // const SizedBox(height: 167),
              TextButton(onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const LoginView()));
              }, 
              child:  Text('Sign In',
              
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: GlobalColors.mainColor
              ),))                       
            ],
          )
        ],
        ),
      ),
    );
  }
}