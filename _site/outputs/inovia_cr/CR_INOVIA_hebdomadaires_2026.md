# Comptes rendus INOVIA hebdomadaires 2026

## PV du 05.01.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Organisation des réunions | Plusieurs indisponibilités et jours fériés affectent les réunions du lundi : absence de PF les 19/01 et 30/03, lundi de Pâques le 06/04, Pentecôte le 25/05.<br>Un lien de visioconférence doit être préparé pour les prochaines réunions. | Créer le lien de visioconférence. |
| Financements et appels à projets | La Fondation Béatrice Denys est écartée.<br>L’appel à projets RAISE pourrait financer une étude rétrospective sur deux EDS de la région, avec un budget annoncé de 60 kEUR.<br>L’axe proposé porte sur un dictionnaire d’harmonisation des variables obstétriques pour des travaux d’IA : choix des variables, qualification des cas et construction d’un métamodèle de prédiction.<br>L’axe données de santé pour RAISE consisterait à récupérer des situations de naissance avec pH < 7, enregistrement CTG et contexte obstétrical, notamment sur cinq ans de données d’enfants transférés. | Demander à Ingrid Tissot l’état de l’EDS et son éligibilité pour RAISE. |
| Variables et issues néonatales | Les variables d’intérêt clinique a priori doivent être identifiées, ainsi que les variables à exclure en raison de leur faible présence.<br>Les issues potentielles discutées sont : acidose/pH, variabilité du FHR, score d’Apgar, excès ou déficit de base, transfert du nouveau-né en soins intensifs, équilibre acido-basique, lactates et température néonatale.<br>Une issue défavorable pourrait être définie par transfert, pH < 7 et/ou Apgar à 5 minutes < 7.<br>Un score clinico-biologique combinant Apgar et équilibre acido-basique est envisagé, avec une pondération prioritairement clinique.<br>Le FHR serait utilisé comme outil de prédiction des paramètres postnataux ; les paramètres envisagés sont la ligne de base, la variabilité et le rythme moyen. | Vérifier avec Odile la description des variables et les champs parto S1/S2. |
| Consortium INTERREG | La composition du consortium reste à clarifier : CHUB, UMLP, CHUV, UNIGE et entreprises suisses potentielles.<br>Deux options sont évoquées : INOVIA + universités, ou deux grands groupes + universités + INOVIA.<br>Les contacts HUG d’OB et les relais industriels possibles restent à préciser. NM connaît notamment Samsung via Benjamin Tarterre. | Identifier les partenaires suisses et demander une réunion de cadrage INTERREG. |
| Article et base de données | L’objectif scientifique cité est de tester si l’ajout de variables cliniques améliore un système de CTG informatisé pour prédire une acidémie néonatale sévère.<br>DeepCTG est décrit comme une régression logistique et non comme un modèle de deep learning.<br>Après validation de la base synthétique, deux suites sont envisagées : passer par un PHRC pour tester sur d’autres centres et ajouter des cas pathologiques via ces centres. |  |

## PV du 12.01.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Administration et propriété intellectuelle | Un point PI est à prévoir. Une preuve écrite indiquant que la DI est caduque est nécessaire auprès de la SATT.<br>Un rendez-vous avec Degive (INPI) et Kanpan (UMLP) est envisagé.<br>Une prestation Inno AER pour étude juridique PI pourrait être mobilisée, avec prise en charge à 50 %, plafonnée à 6 500 EUR HT.<br>Dans le cadre de l’incubation, des entretiens doivent être réalisés pour clarifier les clients potentiels : fournisseurs de matériel, fournisseurs de DPI, ou médecins prescripteurs. | Programmer le point PI et préparer les entretiens d’incubation. |
| Veille marché et brevets | La possibilité d’accéder aux bases de brevets via le laboratoire est à investiguer.<br>L’accès Xerfi via la BU et les rapports annuels de sociétés commercialisant des moniteurs sont évoqués.<br>Des rendez-vous business avec des fournisseurs pourraient aider à comprendre leurs solutions actuelles. | Identifier les accès documentaires disponibles. |
| Analyse CTG et variables | Gregory rappelle que le praticien extrait des features dans l’analyse CTG ; l’objectif serait d’automatiser une partie de cette extraction.<br>Les variables à extraire pourraient inclure : base, moyenne, minimum, maximum, nombre d’accélérations et nombre de décélérations.<br>La démarche est rapprochée de DeepCTG. |  |
| Données synthétiques CARMENTA | Salma présente une génération de dataset synthétique à partir de CARMENTA, selon les règles métiers, distributions et types de variables.<br>Un jeu de 200 000 lignes est généré avec des NaN, dans les bornes du dictionnaire.<br>Les variables dupliquées sont conservées pour la traçabilité. Le document est composé de plusieurs tableaux et non d’un seul tableau.<br>Le nettoyage n’est pas encore réalisé ; les colonnes avec valeurs manquantes ou catégories peu claires sont générées avec NaN.<br>Gregory propose de supprimer les cas lorsque la donnée manque, car mettre 0 constituerait une information différente de l’absence d’information. | Clarifier les ambiguïtés sémantiques du dictionnaire. |
| Score clinico-biologique | L’issue défavorable est discutée à partir des variables biologiques : pH, base excess, lactates, delta pH artériel/veineux, PCO2 et PO2.<br>Les variables cliniques discutées sont les scores d’Apgar, le poids du nouveau-né et la température.<br>L’objectif du score CB est de produire un paramètre quantitatif du bien-être néonatal et de vérifier son association au risque de transfert.<br>Le décès et la réanimation définissent les issues les plus défavorables.<br>Le score doit combiner biologique et clinique, avec pondération en faveur de la clinique. | Définir les seuils et classes retenus pour le score. |

## PV du 26.01.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Suivi administratif | Une relance est nécessaire pour la signature du protocole, auprès de M. Kanpan ou Daussy.<br>Pour INTERREG, la FPP est en cours avec Jana Landry. La liste des membres du consortium, les noms, le nombre et le type de postes sont attendus.<br>Les disponibilités du bureau de Nicolas sont à clarifier. | Relancer la signature du protocole et compléter les informations consortium. |
| Questionnaire IA | Le questionnaire de familiarité avec l’IA est disponible via Google Forms.<br>Un rendez-vous PI avec M. Kanpan est à programmer, avec l’INPI en parallèle pour clore le sujet. | Programmer le rendez-vous PI. |
| Variables CARMENTA | Gregory interroge les variables pouvant être exclues par défaut : OBST, post, PMSI, BIO, fusion des parto S1/S2, doublons Echo, champs libres et variables Echo trop fines.<br>Une étude statistique sur le dictionnaire doit permettre d’identifier les paramètres ayant un effet et de classer les variables d’entrée.<br>Une colonne supplémentaire pourrait indiquer si la variable est conservée ou non. | Ajouter une colonne de décision de conservation des variables. |
| Équipe projet | L’équipe projet envisagée comprend Nicolas, Justine, une sage-femme recherche dédiée à 100 % ETP, un technicien de recherche clinique, deux stagiaires et un project manager DRCI. |  |

## PV du 02.02.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Suivi Gregory | Le cahier des charges reste à clarifier. Le dernier courriel n’a pas été compris. | Clarifier le cahier des charges avec Gregory. |
| Administration et INTERREG | La relance concernant la signature de la convention a été faite le 27/01.<br>Pour le CHU, la liste des membres du consortium, les noms, le nombre et les types de postes sont attendus.<br>La sage-femme recherche et le technicien de recherche sont affectés au projet sur toute sa durée.<br>Les packs numériques ne sont pas nécessaires. | Compléter les informations consortium CHU. |
| Présentation Vouga | Les slides Vouga sont validées.<br>Une slide supplémentaire doit expliquer l’intérêt d’une nouvelle solution de surveillance du travail, dépassant les outils actuels et intégrant mieux le contexte obstétrical.<br>Le message clé est qu’un outil complémentaire produisant un score clinico-biologique est nécessaire face aux limites actuelles et à l’évolution des comorbidités obstétricales. | Ajouter la slide de contexte et d’ambition. |
| Questionnaire IA | Le questionnaire de familiarité avec l’IA est à articuler avec les sages-femmes recherche, le logiciel SPHINX et la procédure d’envoi.<br>Les questions doivent être envoyées à Nicolas avec copie à l’adresse sage-femme-recherche. | Envoyer les questions à Nicolas et à l’adresse sage-femme-recherche. |
| Données et issue défavorable | Les seuils biologiques et cliniques discutés le 12/01 sont repris.<br>NM indique qu’il faut identifier les variables pertinentes pour définir l’état du nouveau-né.<br>Les pires issues citées sont l’anoxo-ischémie, l’infection materno-foetale et la détresse respiratoire.<br>Les données de la base BIO doivent être utilisées pour pH et lactates, en supprimant les données de pH dans DIAMM. | Utiliser BIO pour pH/lactates et retirer les pH DIAMM. |
| Réunion DRCI/DPO | Pour le rendez-vous du 16/02 avec la DRCI et le DPO, il est proposé d’inviter M. Zerr (RSSI CHRUB). | Inviter M. Zerr. |

## PV du 09.02.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Suivi réunion | Le rendez-vous du 16/02 est déplacé. | Reprogrammer le rendez-vous. |

## PV du 23.02.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Point DSN et budget | Les contacts DSN à mettre dans la fiche de coût INTERREG sont Alexandra Monnot et Stéphane Tesolari.<br>Le budget d’un matériel pour l’exploitation locale et sa durée d’amortissement doivent être clarifiés avec l’UMLP.<br>Les questions portent aussi sur l’accès distant et le matériel informatique local. | Valider le budget matériel avec l’UMLP. |
| Convention CHU-UMLP | L’ajout de GG et SE à la convention CHU-UMLP est évoqué. | Vérifier l’ajout de GG et SE. |
| Architecture d’accès et calcul | Plusieurs options sont listées : accès distant sur la VM, apport de machine de calcul, mésocentre, machine UMLP, machine CHU ou machine via INTERREG.<br>L’accès distant CHU est validé. | Arbitrer l’architecture technique cible. |
| Consortium et INTERREG | NM doit refaire un mail à Manon Vouga pour valider le consortium.<br>Le CHUV doit contacter le canton de Vaud pour le cofinancement et Interreg CH pour avis sur le plan de financement actuel.<br>Une attention est portée au cadrage INTERREG : l’axe prioritaire porte sur la connaissance réciproque, les coopérations de formation, et l’écosystème interrégional d’innovation. | NM envoie le mail à Manon Vouga. |

## PV du 02.03.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Questionnaire sages-femmes | Justine prend en charge le questionnaire, avec un focus sur les médecins et sages-femmes de salle d’accouchement.<br>Les thèmes retenus sont le niveau de connaissance en IA, la compréhension du développement des outils, l’acceptabilité d’un outil d’aide, et les domaines d’aide attendus.<br>Le périmètre envisagé est BFC + Suisse. | Contacter la DRCI pour vérifier le processus applicable. |
| Hébergement de données | Un devis HDS externe doit être préparé. | Préparer le devis HDS externe. |
| INTERREG | La signature CHUV puis UMLP est attendue.<br>Une première réponse Interreg est annoncée sous dix jours.<br>Le travail sur le dossier complet se poursuit, notamment la partie financière suisse.<br>Une prise de contact CHUV avec l’EPFL est envisagée. | Poursuivre le dossier complet et préciser la réunion DRCI/DRVI. |
| Étude CARMENTA | La définition de la sortie nouveau-né de salle de travail doit prendre en compte le seuil supérieur ou égal à 37 SA.<br>Pour le document de Justine, les personnes à citer sont Dr Vouga et Noura Dridi ou Amir Hajjam selon les conditions d’appartenance au laboratoire.<br>Une prospection avec l’EPFL doit être indiquée en commentaire. | Intégrer la mention de prospection EPFL. |

## PV du 09.03.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Informations générales | Le document d’accès distant a été envoyé à R. Zerr. Une réponse est attendue, avec relance prévue le lendemain.<br>Les dernières réunions d’incubation ont lieu jeudi prochain, puis une semaine dédiée est prévue du 23 au 26 mars.<br>Les slides CARMENTA sont à relire. | Relancer R. Zerr si nécessaire. |
| Compte rendu du 19/03 | La question est posée de savoir si NM peut prendre en charge le compte rendu du 19/03.<br>NM demande s’il existe un horaire programmé, sinon la réunion se tiendra en visioconférence.<br>Les slides du montage du projet doivent être mises à jour. | Confirmer l’organisation du 19/03. |
| Questionnaire Justine | Le questionnaire vise les cliniciens et reste généraliste.<br>Les objectifs sont d’évaluer les connaissances sur l’IA en obstétrique, les sentiments favorables ou défavorables, l’intégration dans des conditions de travail complexes, la crainte d’être remplacé, et les paramètres souhaités dans une solution IA. | Finaliser les objectifs du questionnaire. |
| Stage Sadia | Le sujet de stage doit être préparé et envoyé à F. Auber. | Préparer et envoyer le sujet de stage. |

## PV du 16.03.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Slides et réunions | La relecture des slides CR est validée.<br>Pour l’échange CHU-UMLP et la reprise de contact avec la SATT, l’équipe attend le retour INTERREG.<br>Pour la réunion du jeudi, l’horaire de NM n’est pas encore précisé. OB contacte Soraya Martin. | Attendre le retour INTERREG avant CHU-UMLP et SATT. |
| Accès et signatures | La question de la signature liée à la fusion mésocentre des deux côtés est posée.<br>NM a relancé M. Zerr. | Suivre la réponse de M. Zerr. |
| Process Sadia | Le process proposé comprend : reprendre la présentation CARMENTA, produire le flowchart du tri clinique, intégrer BIO dans DIAMM, mettre à jour la présentation avec les données actualisées, puis préparer la publication.<br>OB prépare le cahier des charges statistique. | Formaliser le cahier des charges statistique. |
| Questionnaire Justine | La démarche doit être demandée à Ingrid. | Contacter Ingrid. |

## PV du 23.03.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Suivis en cours | M. Zerr doit être relancé.<br>La convention avec FC Innov est en cours ; les relances doivent être surveillées.<br>Le challenge DECA est en cours. | Relancer Zerr et suivre FC Innov. |
| INTERREG | Le dossier complet est reçu, avec accès à Synergie.<br>Jana complète le début du dossier.<br>La DRVI centralise pour le CHU et l’UMLP. | Poursuivre la saisie Synergie. |

## PV du 30.03.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Plateforme Synergie | La relecture de la saisie de Jana est à réaliser.<br>Les WP doivent être confirmés, puis les affectations par WP doivent être précisées.<br>Le retour de Manon Vouga concernant l’EPFL est attendu. | Relire Synergie et confirmer les WP. |
| RSSI et accès | Un retour de M. Zerr est attendu. Les accès doivent être envoyés aujourd’hui ou demain.<br>Le document complet doit être préparé puis renvoyé à M. Zerr. | Relancer si aucune nouvelle le lendemain après-midi. |
| Stage Sadia | La fiche d’accès Sadia doit être signée par NM.<br>La convention de stage est en cours de préparation chez Cécile. | Faire signer la fiche d’accès. |
| Livrables INTERREG | Les livrables actuels incluent : schéma de structuration des données documenté, référentiel de variables et métadonnées, note méthodologique sur réplicabilité et transposabilité, prototypes de recherche codéveloppés, recommandations bilatérales et feuille de route scientifique. |  |
| Travaux Selma | Selma travaille sur les données de synthèse : génération d’un dataset de 200 000 lignes et 441 variables, avec bornes et distributions du dictionnaire.<br>Après filtre >= 37 SA, 124 000 cas sont étudiés.<br>Une variable binaire de transfert en réanimation est créée pour préparer un modèle de prédiction, sans résultat concluant à ce stade.<br>Une génération à partir de 100 cas de données réelles est proposée.<br>NM signale des écarts de réalisme : 19 % de transfert incluant l’UK, variable sexe foetal à prendre après accouchement dans DIAMM, état ERCF à l’instant T du test d’admission, et répartition de prématurité non conforme. | Corriger la définition du transfert et les variables sources. |

## PV du 06.04.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Données ENP | La disponibilité des données ENP en CSV auprès de NM est à vérifier.<br>Si elles ne sont pas disponibles, l’équipe se demande si un site dynamique aiderait à produire l’analyse.<br>La question du niveau de détail attendu dans les tableaux est posée. | Vérifier la disponibilité des CSV ENP. |
| Sadia | La signature de l’habilitation Sadia est à suivre. | Faire signer l’habilitation. |

## PV du 20.04.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| HEIG-VD et gouvernance | La possibilité que HEIG-VD soit chef de file ou leader partenaire sur un WP est discutée.<br>Le processus de signature avec HEIG-VD doit être clarifié.<br>La question d’une nouvelle signature de la FPP est posée. | Clarifier le processus de signature HEIG-VD. |
| Prochaines étapes Stephan | L’annexe 4 doit être traitée, avec plafonds de financement : Interreg 146 537,60 EUR et Canton 90 000 EUR.<br>L’annexe 2 sur l’autofinancement sera préparée après validation de l’annexe 4.<br>L’annexe 6 concernant les références bancaires est également à produire. | Finaliser l’annexe 4, puis préparer les annexes 2 et 6. |

## PV du 27.04.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Travaux Gregory | Gregory adapte le format de C à un traitement algorithmique, avec intégration dans un vecteur.<br>Les clés primaires et secondaires sont définies : numéro d’accouchement en clé primaire, numéro permanent + date en clé secondaire.<br>Les paramètres d’entrée et de sortie sont triés.<br>Un post-traitement ERCF est prévu pour intégrer ces données dans C.<br>Les variables inutiles sont supprimées : valeurs 100 % identiques, numéro d’admission, etc.<br>La base de traitement est créée avec uniquement les entrées et sorties intéressantes. Après filtre 37 SA, environ 14 000 cas sont disponibles. | Vérifier si la base pourra sortir du CHUB. |
| Contrôle qualité ERCF | Un contrôle qualité doit vérifier que la durée de l’ERCF est cohérente avec la durée du travail. | Mettre en place le contrôle de cohérence des durées. |
| Score clinico-biologique | Le transfert en réanimation est actuellement considéré comme le juge de paix pour l’état défavorable.<br>Les obstétriciens sont sensibles à l’adaptation néonatale lors de l’accouchement, évaluée par Apgar et gazométrie au cordon.<br>La prédiction du pH seul est jugée insuffisante, car un mauvais pH peut coexister avec une bonne adaptation clinique.<br>Le couplage des variables clinico-biologiques doit aider la décision du praticien.<br>Pour chaque enfant de C, l’objectif est d’obtenir une valeur de score, puis de relier ce score aux issues. | Définir la construction opérationnelle du score. |
| Données BIO et doublons | Si plusieurs valeurs existent dans BIO, la valeur la plus proche de l’accouchement est retenue.<br>Les doublons NIP dans DIAMM sont à investiguer ; BB1 et BB2 pourraient correspondre à des jumeaux. | Analyser les doublons NIP dans DIAMM. |

## PV du 04.05.2026 - INOVIA weekly

**Présents :** Non renseigné dans les notes sources.

**Excusés :** Non renseigné dans les notes sources.

| Sujets | Discussion - Décision | Suivi / Échéance |
| --- | --- | --- |
| Sadia | L’état d’avancement de Sadia et l’extraction de données depuis le CHU sont à vérifier.<br>Sadia repart des fichiers sources pour nettoyer et prétraiter CARMENTA.<br>Le pipeline comprend : filtrage > 37 SA et dates d’inclusion, suppression des doublons, traitement des valeurs manquantes, analyse des identifiants absents d’une base ou d’une autre, et listing des paramètres d’entrée/sortie candidats pour prédire les complications. | Suivre l’extraction CHU et le pipeline CARMENTA. |
| Salma | L’état d’avancement de Salma et l’accueil via le fonds de la bourse BFT Lab sont à vérifier.<br>OB indique que la convention d’accueil est en cours et devrait se clarifier dans la semaine. | Suivre la convention d’accueil. |
| Travail CTU UHB | Un travail avec CTU UHB est envisagé sur la prédiction avec UC et RC, en attendant l’accès aux données. |  |
| Travaux Gregory | Les fichiers CTS en TXT sont réduits de 14 Go à 370 Mo.<br>Les colonnes de mesures RCF 1 sont conservées ; l’acquisition de 5 secondes est abandonnée au profit d’une moyenne des valeurs non nulles.<br>Le format reste compatible avec la mise en relation avec le partogramme, sans perte majeure attendue par rapport à 250 ms selon les travaux précédents.<br>La difficulté actuelle porte sur la mise en relation des données de partogramme avec l’enregistrement, du fait du volume de données.<br>NM précise que l’objectif n’est pas de donner la méthode du praticien, mais d’analyser ce qui ressort du travail de Gregory. | Organiser un échange praticien sur la mise en relation partogramme/enregistrement. |
| Prédiction et réduction de base | Les données pré-partum disponibles avant l’entrée en salle peuvent estimer un risque d’issue néonatale.<br>La base doit être mise dans un tableau 2D, puis les paramètres pertinents doivent être mis en relation avec les issues recherchées.<br>Si un paramètre n’a d’influence sur aucun paramètre de sortie, il pourra être supprimé afin de réduire la base.<br>Après modélisation des scores Apgar et biologiques, un score clinico-biologique avec valeurs seuils sera créé. | Définir les étapes d’analyse après réorganisation de la base. |
