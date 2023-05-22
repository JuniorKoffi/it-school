import 'package:flutter/material.dart';
import 'ecolePage.dart';
import 'critadmPage.dart';
// ignore: unused_import
import 'Filiere.dart';
import 'medPage.dart';
import 'filPage.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Institut Ivoirien de Technologie",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            buildListItem(context, "Institut Ivoirien de Technologie", const EcolePage()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Formation", const FormPage()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Nos filières", const NosfilPage()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Admissions", const CritAdm()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Médias", const MedPage()),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(BuildContext context, String title, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black87, backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Programme",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "LICENCES | MASTERS | FORMATION CONTINUE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "L’IIT est une institution de formation bilingue Français-Anglais qui dispense des enseignements en formation initiale et en formation continue, dans les domaines des TIC et de la Gestion des Affaires.",
              style: TextStyle(fontSize: 17),
            ),
            // Rest of the content...
          ],
        ),
      ),
    );
  }
}

// Rest of the code...
