import 'package:flutter/material.dart';
import 'iitPage.dart';
import 'motfondPage.dart';
import 'biofondpage.dart';
import 'missvalPage.dart';
import 'scolaritePage.dart';
import 'equipPage.dart';

class EcolePage extends StatelessWidget {
  const EcolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Université bilingue_IIT",
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
            buildListItem(context, "L'Institut Ivoirien de Technologie", const ITPage()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Mot du fondateur", const MotFond()),
            const SizedBox(height: 10.0),
            buildListItem(context, "La biographie du fondateur", const Biofond()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Vision, Mission et Valeurs", const MissVal()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Frais d'inscription et de Scolarité", const Scolarite()),
            const SizedBox(height: 10.0),
            buildListItem(context, "Equipements Pédagogiques et didactiques", const Equipement()),
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
        primary: Colors.white,
        onPrimary: Colors.black87,
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

// Rest of the code...
