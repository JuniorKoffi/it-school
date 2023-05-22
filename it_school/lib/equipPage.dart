import 'package:flutter/material.dart';

class Equipement extends StatelessWidget {
  const Equipement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Équipements pédagogiques et didactiques",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
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
                  "Équipements disponibles :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 25),
                child: const Text(
                  "Un laboratoire télécom, permettant la formation et la simulation de divers réseaux télécoms et le développement de logiciels et autres applications informatiques.\n\nDes salles de 32 places hautement équipées pour les formations et travaux pratiques utilisant intensivement les outils IT (jusqu’à 32 étudiants par salle).\n\nLes salles informatiques et télécom disposent des matériels pédagogiques suivants :\n\n- Des racks et des serveurs redondants,\n- Des postes de travail équipés d’ordinateurs de bureau,\n- Des micro-ordinateurs portables,\n- Caméras de surveillance,\n- Contrôle biométrique à l'entrée des salles,\n- Des vidéoprojecteurs,\n- Des tableaux électroniques interactifs,\n- Accès Internet Wifi,\n- Un réseau intranet,\n- Divers logiciels didactiques,\n- Un onduleur de grande capacité.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
