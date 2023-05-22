import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'registPage.dart';
import 'homePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          color: Colors.blue.shade100,
          child: Column(
            children: [
              const SizedBox(height: 100),
              _logo(),
              const SizedBox(height: 20),
              _logoText(),
              const SizedBox(height: 20),
              _inputField(
                const Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Color(0xffA6B0BD),
                ),
                "Email",
                false,
                emailController,
              ),
              const SizedBox(height: 20),
              _inputField(
                const Icon(
                  Icons.password_outlined,
                  size: 30,
                  color: Color(0xffA6B0BD),
                ),
                "Mot de passe",
                true,
                passwordController,
              ),
              const SizedBox(height: 20),
              _loginButton(),
              const SizedBox(height: 20),
              _dontHaveAccountText(),
              const SizedBox(height: 10),
              _signUpButton(context),
              const SizedBox(height: 10),
              _terms(),
              const SizedBox(height: 100), // Espacement en bas
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
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

  Widget _logoText() {
    return Container(
      height: 125,
      child: const Text(
        "INSTITUT IVOIRIEN DE TECHNOLOGIE",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Color(0xff000912),
          letterSpacing: 1,
        ),
      ),
    );
  }

  Widget _inputField(
    Icon prefixIcon,
    String hintText,
    bool isPassword,
    TextEditingController valueController,
  ) {
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
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xffA6B0BD)),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: prefixIcon,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

 Widget _loginButton() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: const Color(0xFF008FFF),
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
    child: TextButton(
      onPressed: isLoading ? null : () {
        _connectUser(
          emailController.text,
          passwordController.text,
          context,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: isLoading
            ? CircularProgressIndicator(
                color: Colors.white,
              )
            : const Text(
                "Connexion",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    ),
  );
}




  Future<void> _createNewUser(
  String emailAddress,
  String password,
  BuildContext context,
) async {
  setState(() {
    isLoading = true;
  });

  try {
    // Votre code Firebase pour créer un nouvel utilisateur

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StartPage(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    // Gérer les erreurs Firebase
  } catch (e) {
    // Gérer les erreurs
  }

  setState(() {
    isLoading = false;
  });
}

Future<void> _connectUser(
  String emailAddress,
  String password,
  BuildContext context,
) async {
  setState(() {
    isLoading = true; // Afficher le cercle de chargement
  });

  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);

    await Future.delayed(const Duration(seconds: 1)); // Attendre 1,5 seconde

    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StartPage(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }

  setState(() {
    isLoading = false; // Masquer le cercle de chargement
  });
}


  Widget _dontHaveAccountText() {
    return const Text(
      "Vous n'avez pas de compte?",
    );
  }

  Widget _signUpButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Inscrip(),
          ),
        );
      },
      child: const Text(
        "Inscrivez vous",
        style: TextStyle(
          color: Color(0xFF008FFF),
          fontWeight: FontWeight.w800,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _terms() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 18),
      child: TextButton(
        onPressed: () => {print("Terms pressed.")},
        child: const Text(
          "Terms & conditions",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
