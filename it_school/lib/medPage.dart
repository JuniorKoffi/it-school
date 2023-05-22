import 'package:flutter/material.dart';

class MedPage extends StatelessWidget {
  const MedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IIT dans la presse",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Journée porte ouverte et rentrée universitaire 2020-2021:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "L’IIT se dévoile au public...\n"
                "L’Institut Ivoirien de Technologie (IIT), sis à Grand-Bassam au Vitib, a organisé une journée porte ouverte, samedi 19 septembre 2020. En cette journée ouverte aux parents d’étudiants, aux étudiants, aux nouveaux bacheliers et au public, l’Institut Ivoirien de Technologie, son corps professoral et ses équipements Pédagogiques ont été présentés aux participants. La journée s’est terminée avec une visite du campus et un cocktail de clôture.",
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Côte d’Ivoire : Un ancien de MIT ouvre l’Institut ivoirien de technologie (IIT) à Grand-Bassam",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Fondé par Caliste Claude M’Bahia, diplômé de MIT (Massachusetts Institute of Technology), dirigeant d’entreprise et ingénieur-consultant dans les TIC et de la gestion des affaires, l’Institut ivoirien de technologie (IIT) est le nouveau-né des grandes écoles en Côte d’Ivoire.",
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "CÔTE D’IVOIRE-ENSEIGNEMENT SUPÉRIEUR:\n\n"
                "UN INSTITUT À L’IMAGE DE LA PRESTIGIEUSE UNIVERSITÉ MIT OUVRE SES PORTES À GRAND-BASSAM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "L’institut ivoirien de technologie ouvre ses portes cette année académique 2019-2020. Une visite-guidée de l’établissement a été organisée, samedi 12 octobre, pour présenter l’Institut aux Ivoiriens, aux journalistes et au monde entier. Un point presse a mis fin à cette visite.",
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "TIC : l’institut ivoirien de la technologie ouvre ses portes à VITIB (Grand-Bassam)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "La Zone Franche de la Biotechnologie et des Technologies de l’Information et de la Communication (ZBTIC) de Grand Bassam va accueillir l’institut ivoirien de technologie cette année académique 2019-2020, a-t-on appris ce samedi auprès des responsable.",
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "L’Institut Ivoirienne de Technologie (IIT) s'installe au VITIB",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Le vendredi 06 septembre 2019, le Parc Technologique Mahatma GANDHI a enregistré l’arrivée de l’Institut Ivoirien de Technologie (IIT) qui s’est matérialisée lors de la cérémonie de remise d’agrément de cet établissement de référence au siège du VITIB.",
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
