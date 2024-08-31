import 'package:eath/connexion_inscription/succes.dart';
import 'package:eath/mes_constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forget_password.dart';
import 'inscription.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.only(bottom: 100, top: 70, right: 20, left: 20),
        child: Column(
          children: [
            Text("Connexion", style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),),
            SizedBox(height: 50,),
            Text("Vueillez entrer le nouveau mot de passe",textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey.shade700, fontWeight: FontWeight.w400),),
            SizedBox(height: 50,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Nouveau mot de passe", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Confirmer mot de passe", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Succes()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Text("Confirmer", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
