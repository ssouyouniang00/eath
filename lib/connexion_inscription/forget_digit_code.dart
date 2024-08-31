import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../mes_constantes.dart';
import 'change_password.dart';


class ForgetDigitCode extends StatefulWidget {
  const ForgetDigitCode({super.key});

  @override
  State<ForgetDigitCode> createState() => _ForgetDigitCodeState();
}

class _ForgetDigitCodeState extends State<ForgetDigitCode> {
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
            Container(
              width: 250,
              height: 70,
              child: PinCodeTextField(appContext: context, length: 3,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
             borderRadius: BorderRadius.circular(5),
                fieldHeight: 60,
                fieldWidth: 60,
                activeColor: Colors.grey,
                selectedColor: Colors.grey,
                inactiveColor: Colors.grey
              ),
              ),
            ),
            SizedBox(height: 70,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Text("Vérifier", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),

                ),
              ),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Code non reçu?", style: GoogleFonts.poppins(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(width: 10,),
                InkWell(
                    onTap: (){
                    },
                    child: Text("Renvoyer", style: GoogleFonts.poppins(color: secondaryColor, fontWeight: FontWeight.w500, fontSize: 16),)),

              ],
            )

          ],
        ),
      ),
    );
  }
}
