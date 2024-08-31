import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../mes_constantes.dart';
import 'forget_digit_code.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 100, top: 70, right: 20, left: 20),
        child: Column(
          children: [
            Text("Réinitialisation mot de passe", style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),),
            SizedBox(height: 70,),
            Text("Veuillez entrez votre email pour recevoir le code réinitialisation",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
            SizedBox(height: 50,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Email", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetDigitCode()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Text("Envoyer code", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
