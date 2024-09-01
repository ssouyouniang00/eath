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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _tailleController = TextEditingController();
  final TextEditingController _poidsController = TextEditingController();
  final TextEditingController _genreController = TextEditingController();

  String? _validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Ce champ est obligatoire';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre email';
    }
    final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegExp.hasMatch(value)) {
      return 'Veuillez entrer un email valide';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform registration action
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
        child: Form(
          key: _formKey,
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
              SizedBox(height: 40),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: Text(
                    "Nom Complet",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateField,
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  label: Text(
                    "Email",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateEmail,
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Secure password input
                decoration: InputDecoration(
                  label: Text(
                    "Mot de passe",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateField,
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  label: Text(
                    "Age (ans)",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateField,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: _tailleController,
                decoration: InputDecoration(
                  label: Text(
                    "Taille (cm)",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateField,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: _poidsController,
                decoration: InputDecoration(
                  label: Text(
                    "Poids (kg)",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateField,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: _genreController,
                decoration: InputDecoration(
                  label: Text(
                    "Sexe (M/F)",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                validator: _validateField,
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: _submitForm,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "S'inscrire",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pas de compte ?",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  //   SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Connexion()));
                    },
                    child: Text(
                      "Se connecter",
                      style: GoogleFonts.poppins(
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
