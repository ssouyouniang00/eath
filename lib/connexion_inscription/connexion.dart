import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../mes_constantes.dart';
import 'forget_password.dart';
import 'inscription.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
  String password="useradmin";
  String email="user@admin.com";

  void _login() {
    // Exemple de validation simple
    if (_emailController.text.isEmpty || _emailController.text!=email) {
      // Afficher un message d'erreur ou effectuer une autre action
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Veuillez entrer un email valide')),
      );
      return;
    }

    if (_passwordController.text.isEmpty || _passwordController.text!=password) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Mot de passe incorrect')),
      );
      return;
    }

    // Logique de connexion ici
    print('Email: ${_emailController.text}');
    print('Mot de passe: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 50, top: 70, right: 20, left: 20),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Connexion",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15,                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 40),
            TextField(
              controller: _passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                label: Text(
                  "Mot de passe",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 15,                      fontWeight: FontWeight.w500
                  ),
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
              onTap: _login,
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
            SizedBox(height: 30),
            Center(
              child: Text(
                "ou",
                style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 50,),
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
                        fontWeight: FontWeight.bold,
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
