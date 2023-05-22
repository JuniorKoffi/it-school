import 'package:flutter/material.dart';

class MissVal extends StatelessWidget {
  const MissVal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vision, Mission et Valeurs",
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
                child: Text(
                  "Notre Vision :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 17),
                child: Text(
                  "Contribuer à l’émergence d’une société africaine plus prospère grâce à la maîtrise des technologies, de l’innovation et de l’entreprenariat",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 17),
                child: Text(
                  "Notre Mission :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 17),
                child: const Text(
                  "Contribuer à construire, gérer et développer en Afrique, un écosystème d’innovation, vecteur de progrès économique, social et environnemental durables. L’objectif de l’Institut Ivoirien de Technologie est de : Développer le capital humain, en particulier des jeunes, dans le domaine des technologies de l’information et de la communication et dans le domaine des affaires. Diffuser le savoir technique, scientifique ainsi que les meilleures pratiques en matière de technologies de l’information et de la communication et en matière de gestion des affaires. Promouvoir le développement, l’adoption et la diffusion des technologies de l’information et de la communication dans tous les domaines: agriculture, santé, éducation, finance, commerce, etc. Promouvoir l’esprit d’entreprise et accompagner les étudiants et les entrepreneurs en leur fournissant une assistance technique, juridique, managériale et financière. Plus spécifiquement, il s’agit pour l’Institut : de donner aux étudiants une formation scientifique et technique approfondie et une compétence professionnelle générale et spécifique dans le domaine des TIC, du Management et de l’Entreprenariat. de développer leurs aptitudes à l’autonomie, à l’initiative et à la responsabilité. de leur apporter les connaissances nécessaires pour une intégration rapide et réussie dans le milieu socio-économique. de leur apprendre à maîtriser la communication écrite et orale, notamment en anglais.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 17),
                child: const Text(
                  "Nos Valeurs :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 17),
                child: const Text(
                  "Les valeurs qui sous-tendent notre rêve et notre travail au quotidien sont celles d’intégrité intellectuelle et morale et d’excellence.",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.black87,
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
