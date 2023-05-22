import 'package:flutter/material.dart';

class CritAdm extends StatelessWidget {
  const CritAdm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Critères d'admissions",
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
                "PIÈCES À JOINDRE AU DOSSIER D'INSCRIPTION",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "- Demande manuscrite\n"
                "- Un Extrait de naissance\n"
                "- Photocopie de la carte d’identité ou du passeport\n"
                "- 4 Photos d’identité\n"
                "- Copie légalisée du Baccalauréat\n"
                "- Copie légalisée du dernier Diplôme\n"
                "- Pour les boursiers, une attestation d’attribution de bourse et une prise en charge.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "L’admission de nouveaux étudiants a lieu au début de chaque semestre académique, c’est-à-dire en septembre et en janvier.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Licence / Bachelor:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "L’admission en Licence (Bachelor) à l’IIT se fait sur dossier scolaire et des tests en mathématiques et en anglais.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Master",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "L’admission en Master à l’IIT comporte trois phases :\n\n"
                "- Une phase de présélection sur dossier\n"
                "- Des tests en mathématiques, en français et en anglais\n"
                "- Un entretien devant un jury composé d’anciens élèves, de professeurs et de responsables d’entreprises.\n\n"
                "Dans les deux cas, Bachelor ou Master, les résultats d’admission sont prononcés par un jury d’admission dont le président et les membres sont désignés par le président de l’IIT.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Profil des candidats:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 17),
              child: const Text(
                "Les candidats recrutés dans le cadre de notre programme devront avoir un profil Bac, BTS, Licences ou Masters universitaires.\n\n"
                "Les candidats recrutés dans le cadre de ce programme devront être matures et avoir une vivacité d’esprit et de comportement. Ils doivent pouvoir travailler en équipe, avoir le respect des autres, être capables de supporter un important volume de travail et résister à la pression.",
                style: TextStyle(
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
