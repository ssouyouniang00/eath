import 'package:eath/mes_constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forget_password.dart';
import 'inscription.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 100, top: 70, right: 20, left: 20),
        child: Column(
          children: [
            Text(
              "Connexion",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
                label: Text(
                  "Mot de passe",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()));
                },
                child: Text(
                  "Mot de passe oublié?",
                  style: GoogleFonts.poppins(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: null,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Se connecter",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "ou",
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: null,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        left: 0,
                        child: Image.asset(
                          "assets/icons/gmail.png",
                          height: 30,
                        )),
                    Text(
                      "Se connecter avec google",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pas de compte ?",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Inscription()));
                  },
                  child: Text(
                    "S'inscrire",
                    style: GoogleFonts.poppins(
                        color: secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
