import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../mes_constantes.dart';
import 'connexion.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20, bottom: 20),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Inscription",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text("Nom Complet", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Email", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Mot de passe", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Age(ans)", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Taille(cm)", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Poids(kg)", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Sexe(M/F)", style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20),)
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Text("S'inscrire", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pas de compte ?", style: GoogleFonts.poppins(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),),
                SizedBox(width: 10,),
                InkWell(onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Connexion()));
                    },child: Text("Se connecter", style: GoogleFonts.poppins(color: secondaryColor, fontWeight: FontWeight.w500, fontSize: 16),)),

              ],
            )
          ],
        ),
      ),
    );
  }
}
