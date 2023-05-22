import 'package:flutter/material.dart';

class Biofond extends StatelessWidget {
  const Biofond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "La biographie du fondateur",
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
                  "L’Institut Ivoirien de Technologie a été fondé par Caliste Claude M’BAHIA, dirigeant d’entreprise et Ingénieur-Consultant dans les domaines des TIC et de la gestion des affaires.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                "Il est diplômé de la prestigieuse université du MIT aux USA.\n\nAprès ses classes préparatoires de Mathématiques Supérieures et Spéciales, et son diplôme d’ingénieurs en Génie Electrique obtenu à l’Ecole Supérieure d’Ingénieurs en Génie Electrique en France, Claude M’BAHIA commence sa carrière comme Ingénieur-Consultant en Génie Logiciel à France Télécom, puis à BNP Paribas et au Crédit Agricole où il a contribué à développer et déployer les couches logicielles basses des applications lourdes de ces sociétés.\n\nIl prend ensuite la direction commerciale Afrique de l’Ouest, du Centre et de l’Est et la direction générale en Côte d’Ivoire de la Société Internationale de Télécommunications Aéronautiques (SITA) pendant environ 8 années avant de cofonder Smart Technologies, une société de services et conseils en informatique dont il fut le Directeur Général pendant quatre ans.\n\nClaude M’BAHIA obtient ensuite une bourse d’études du gouvernement Américain dans le cadre du programme Fulbright qu’il achèvera muni d’un Diplôme d’Etudes Supérieures en Administration Publique de l’Université de Washington (Evans School of Public Policy and Governance).\n\nDurant cette période, il a également travaillé au Département des technologies de la mairie de la ville de Seattle, considérée comme la ville la plus en pointe en matière de déploiement de solutions e-Government aux Etats Unis.",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 17),
                child: const Text(
                  "Désireux de poursuivre son expérience américaine, Claude M’BAHIA intègre le MIT d’où il obtiendra un double Master en Ingénierie et en Management respectivement à MIT School of Engineering et à MIT Sloan School of Management.\n\nIl travaillera également au cours de cette période comme Research Assistant au Center for Digital Business du MIT pour les professeurs Geoffrey Parker and Marshall Van Alstyne.\n\nEnfin, profitant des accords d’échanges entre le MIT et l’université de Harvard, Claude a suivi une formation complémentaire en Stratégie des Technologies et en Politique Publique de l’Innovation respectivement à Harvard Business School et à Harvard Kennedy School of Government.\n\nSon mémoire de fin d’études a été supervisé par le célèbre Professeur Calestous Juma de Harvard Kennedy School. Caliste Claude M’BAHIA a récemment assumé les fonctions de Membre du Conseil de Régulation, de Président du Comité d’Audit et de Gestion des Risques et de Président par intérim de l’Autorité de Régulation des Télécommunications/TIC de Côte d’Ivoire (ARTCI).\n\nClaude M’BAHIA a reçu de nombreuses distinctions internationales en particulier celles du programme Fulbright du gouvernement américain et du MIT Legatum Center for Entrepreneurship.\n\nIl est membre fondateur de l’Academy of Regulatory Professionals basée en Floride, USA.",
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
