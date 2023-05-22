import 'package:flutter/material.dart';

class MotFond extends StatelessWidget {
  const MotFond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mot du fondateur",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 17),
                child: const Text(
                  "Pourquoi l’Institut Ivoirien de Technologie ?",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                "J’ai eu beaucoup de chances dans la vie.\n\nLa chance d’avoir fait de bonnes études qui m’ont permis d’avoir, à ce jour, un parcours professionnel riche et honorable.\nLa chance d’avoir voyagé, beaucoup voyagé et vu ce qui se fait de mieux un peu partout dans le monde en matière de culture, d’architecture, de gastronomie et que sais-je encore.\nLa chance d’avoir connu et expérimenté ce qui se fait de mieux en matière d’éducation dans le monde. MIT, Harvard, University of Washington…\n\nLa chance d’avoir été enseigné par quelques-uns des meilleurs professeurs au monde, Tim Berners-Lee, Calestous Juma...\nLa chance d’avoir partagé les mêmes bancs d’école avec quelques-uns des étudiants les plus brillants au monde.\nLa chance d’avoir été boursier de plusieurs institutions dont l’État Ivoirien.\n\nAujourd’hui, je veux partager mes connaissances et mes expériences avec les nouvelles générations africaines.\nJ’ai décidé de créer cet institut d’enseignement supérieur pour retourner une partie de l’investissement fait sur ma personne, rembourser cette dette, aux nouvelles générations en contribuant à les former techniquement, professionnellement et humainement dans le respect des valeurs fondamentales d’excellence, de rigueur et d’intégrité morales et intellectuelles.\n\nTelle est désormais mon ambition.",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
