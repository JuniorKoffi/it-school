import 'package:flutter/material.dart';

class ITPage extends StatelessWidget {
  const ITPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          "Présentation de l'Institut Ivoirien de Technologie",
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
                  "La création de l’Institut Ivoirien de Technologie consacre une ambition :",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                "Celle de contribuer au développement de l’Afrique à travers la mise en place d’un Institut bilingue (français-anglais) d’enseignement supérieur dédié aux technologies de l’information et de la communication, aux biotechnologies et à la gestion des affaires, à l’image de la prestigieuse université américaine du Massachussetts Institute of Technology (MIT), notre modèle de référence.\n\nLa philosophie générale qui guide l’enseignement prodigué à l’IIT est celle du « Mens et Manus », c’est à dire l’Esprit et les Mains.\n\nEn d’autres termes, nous considérons que l’acquisition du savoir est aussi importante que sa mise en pratique concrète sur le terrain. Nos étudiants sont donc entraînés à identifier les problèmes, leur trouver des solutions et enfin implémenter ces solutions.",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Localisation géographique :",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "L’IIT est situé dans la belle ville de Grand-Bassam, cité historique, balnéaire et touristique, classée au patrimoine mondial de l’UNESCO, à 15 minutes de l’aéroport international d’Abidjan et 30 minutes du centre-ville d’Abidjan, capitale économique de la Côte d’Ivoire ; au cœur de la Zone Franche de la Biotechnologie et des Technologies de l’Information et de la Communication (ZBTIC) gérée par le VITIB.\n\nLa zone franche est accessible par l’autoroute internationale Abidjan-Lagos.",
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
