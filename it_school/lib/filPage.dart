import 'package:flutter/material.dart';
import 'Filiere.dart';

class NosfilPage extends StatelessWidget {
  const NosfilPage({Key? key}) : super(key: key);

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
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        children: <Widget>[
          listItem("Informatique et Génie Logiciel", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Infolog(),
              ),
            );
          }),
          listItem("Réseaux et Télécommunication", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ResTel(),
              ),
            );
          }),
          listItem("Finance et Comptabilité", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Fincompta(),
              ),
            );
          }),
          listItem("Commercial et Marketing", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ComMark(),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget listItem(String title, VoidCallback onPressed) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black87, backgroundColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Row(
          children: [
            const Icon(Icons.arrow_forward),
            const SizedBox(width: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
