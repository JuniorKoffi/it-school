// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homePage.dart';

class Inscrip extends StatefulWidget {
  Inscrip({Key? key, String? title}) : super(key: key);

  @override
  _InscripState createState() => _InscripState();
}

class _InscripState extends State<Inscrip> {
  TextEditingController newEmailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newUtilisateurController = TextEditingController();
  TextEditingController newConfirmController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
          color: Colors.blue.shade100,
          child: Column(
            children: [
              _logo2(),
              _logoText2(),
              _inputField2(
                const Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Color(0xffA6B0BD),
                ),
                "Nom d'utilisateur",
                false,
                newUtilisateurController,
              ),
              _inputField2(
                const Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Color(0xffA6B0BD),
                ),
                "Email",
                false,
                newEmailController,
              ),
              _inputField2(
                const Icon(
                  Icons.lock,
                  size: 30,
                  color: Color(0xffA6B0BD),
                ),
                "Nouveau mot de passe",
                true,
                newPasswordController,
              ),
              _inputField2(
                const Icon(
                  Icons.lock,
                  size: 30,
                  color: Color(0xffA6B0BD),
                ),
                "Confirmer le nouveau mot de passe",
                true,
                newConfirmController,
              ),
              isLoading
                  ? CircularProgressIndicator()
                  : Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20, bottom: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x60008FFF),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          Future.delayed(const Duration(milliseconds: 1500),
                              () {
                            _createNewUser(
                              newEmailController.text,
                              newPasswordController.text,
                              context,
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff008FFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                        ),
                        child: const Text(
                          "Inscription",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _createNewUser(
      String emailAddress, String password, BuildContext context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const StartPage(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Widget _inputField2(Icon prefixIcon, String hinText, bool isPassword,
      TextEditingController valueController) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: valueController,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 25),
          hintText: hinText,
          hintStyle: const TextStyle(color: Color(0xffA6B0BD)),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: prefixIcon,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _logo2() {
    return Container(
      height: 100,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -50,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff00bfdb),
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff008FFF),
              ),
            ),
          ),
          Positioned(
            left: 50,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff00227E),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _logoText2() {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 40),
      child: Text(
        "INSCRIPTION",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w800,
          color: Colors.blueGrey[900],
          letterSpacing: 1,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
