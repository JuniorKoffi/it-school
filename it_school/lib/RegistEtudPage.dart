// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

//Page d'incription des étudiants
class InscripEtud extends StatelessWidget {
  const InscripEtud({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        color: Colors.blue.shade100,
        width: double.infinity,
        child: Column(children: [
          _logo3(),
          _logoText3(),
          _inputField3(
            const Icon(
              Icons.person_outline,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "NOM & PRENOMS",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.date_range_outlined,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "DATE ET LIEU DE NAISSANCE",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.call,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "N° DE TELEPHONE",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.house_outlined,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "LIEU D'HABITATION",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.mail_outline,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "E-MAIL",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.school_outlined,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "SERIE&ANNEE DE BAC",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.school_outlined,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "NIVEAU D'ETUDE",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.school_outlined,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "ETABLISSEMENT D'ORIGINE",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.person,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "NOM & PRENOMS DU PERE",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.call,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "TEL",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.person,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "NOM & PRENOMS DE LA MERE",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.call,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "TEL",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.person,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "NOM & PRENOMS DU TUTEUR",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.call,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "TEL",
            false,
          ),
          _inputField3(
            const Icon(
              Icons.school_outlined,
              size: 30,
              color: Color(0xffA6B0BD),
            ),
            "OPTION(Filière de la formation)",
            false,
          ),
          _Import(),
          _loginBtn3(context),
           _loginBtn4(context),
        ]),
      ),
    ));
  }
}

// Pour les bulles de texte
Widget _inputField3(
  Icon prefixIcon,
  String hinText,
  bool isPassword,
) {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ]),
    margin: const EdgeInsets.only(bottom: 20),
    child: TextField(
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

// ignore: non_constant_identifier_names
Widget _Import() {
  return const Text(
    "Cliquez pour importer les pièces à fournir",
  );
}

// Pour le boutton "Importer"
Widget _loginBtn3(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 20, bottom: 30),
    decoration: BoxDecoration(
      color: const Color(0xff008FFF),
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: const Color(0x60008FFF),
          blurRadius: 10,
          offset: const Offset(0, 5),
          spreadRadius: 0,
        ),
      ],
    ),
    child: TextButton(
      onPressed: _pickFile,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.file_upload, color: Colors.white),
          SizedBox(width: 10),
          Text(
            "Importer",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}

void _pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if (result == null) return;

  final file = result.files.first;
  openFile(file);
}

void openFile(PlatformFile file) {
  OpenFile.open(file.path!);
}

// Pour le boutton "Terminer"
Widget _loginBtn4(BuildContext context) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 20, bottom: 20), // Ajustement de la marge
    decoration: BoxDecoration(
      color: const Color(0xff008FFF),
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
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StartPage(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: const Center(
            child: Text(
              "Terminer",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}



// Pour le logo 3
Widget _logo3() {
  return Container(
    height: 100,
    margin: const EdgeInsets.only(top: 100),
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

// Pour le texte en dessous du logo 3
Widget _logoText3() {
  return Container(
    margin: const EdgeInsets.only(bottom: 50),
    child: const Text(
      "IDENTIFICATION",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: Color(0xff000912),
        letterSpacing: 1,
      ),
    ),
  );
}
