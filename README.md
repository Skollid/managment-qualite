# Fiche Client

Ce projet comprend une page Web qui affiche les informations d'un client récupérées à partir d'une base de données SQL. Les technologies utilisées comprennent HTML, CSS, JavaScript et PHP. Le projet est hébergé sur GitHub et peut être trouvé à l'adresse suivante : [managment-qualite](https://github.com/IreneLefevre/managment-qualite/).

## Installation

1. Clonez le dépôt GitHub sur votre serveur local en utilisant la commande suivante :

git clone https://github.com/IreneLefevre/managment-qualite.git

2. Accédez au répertoire `managment-qualite`.

3. Modifiez le fichier `get_client_info.php` pour remplacer `"votre_serveur"`, `"votre_utilisateur"`, `"votre_mot_de_passe"` et `"votre_base_de_donnees"` par les informations réelles de votre base de données. Assurez-vous également que la requête SQL dans le fichier correspond à la structure de votre base de données.

4. Assurez-vous que votre serveur est configuré pour exécuter des scripts PHP.

## Usage

Ouvrez `index.html` dans votre navigateur. Le script JavaScript dans cette page appellera `get_client_info.php`, qui interrogera la base de données pour obtenir les informations du client, puis renverra ces informations au script JavaScript, qui les affichera sur la page.

Avant qu'un changement soit considéré comme terminé ("done"), il doit être revu par un pair et accepté par une troisième personne qui a testé la fonctionnalité.

## Processus de revue de code

1. **Revue par un pair** : Une fois que vous avez terminé vos modifications, créez une demande de tirage (pull request) sur GitHub. Un de vos pairs doit alors examiner votre code. Les critères d'évaluation doivent inclure la lisibilité du code, le respect des conventions de codage du projet, et l'absence de bugs ou d'erreurs évidentes.

2. **Test de la fonctionnalité** : Après la revue par un pair, une troisième personne doit tester la fonctionnalité. Cette étape doit vérifier que la fonctionnalité fonctionne comme prévu dans toutes les conditions prévues. Elle doit également s'assurer qu'elle n'introduit pas de nouveaux bugs dans d'autres parties de l'application.

3. **Acceptation** : Une fois ces deux étapes passées avec succès, la demande de tirage peut être fusionnée dans la branche principale. La fonctionnalité est alors considérée comme terminée.

Suivre ce processus aide à garantir que le code est de haute qualité, qu'il fonctionne comme prévu, et qu'il n'introduit pas de nouveaux problèmes dans l'application.

## Utilisation de SQL pour l'insertion de données

Ce projet utilise MySQL pour stocker les données des clients. Pour insérer des données dans la base de données, vous pouvez utiliser la commande `INSERT INTO`.
Il y a un fichier SQL/client.sql qui contient toutes les données.
Au premier lancement il suffit d'executer tout le fichier en ligne de commande. SI la table est déjàa crée il suffit de copier coller l'INSERT uniquement.
## Sécurité

Veillez à ne pas inclure d'informations sensibles, comme les mots de passe de la base de données, directement dans vos scripts. Assurez-vous que votre serveur est configuré de manière sécurisée.

## Support

Si vous rencontrez des problèmes avec ce projet, veuillez ouvrir une issue sur [GitHub](https://github.com/IreneLefevre/managment-qualite/issues).

## SoundCloud

1. Créer un compte sur SonarCloud
2. Connecter GitHub à SonarCloud
3. Analyze projects ("https://sonarcloud.io/projects/create")
4. Choisir son projet -> Set up
5. Une fois rediriger sur la page : https://sonarcloud.io/project/configuration?id=Le_nom_de_votre_projet
6. With GitHub Actions (les explications sont données pour poursuivre la config) 
7. Créer un GitHub Secret (Settings > Secrets > Actions)
8. Dans le projet créer un fichier ".github/workflows/build.yml" et son contenu
9. Dans le projet créer un fichier "sonar-project.properties" et son contenu
10. Vous pouvez push les modifications et attendre que Sonarcloud opère ;)

## Jenkins

Sous Mac :
1. brew install jenkins-lts
2. brew services start jenkins-lts
3. http://localhost:8080/
4. Rentrer les petites informations demandées
5. http://localhost:8080/manage/pluginManager/ puis ajouter "SonarQube Scanner"
6. Relancer Jenkins
7. http://localhost:8080/manage/configure
8. Dans la partie : "SonarQube servers" 
9. Le nom importe peu
10. L'url est "https://sonarcloud.io"
11. Valider les modifications
12. De retour sur l'accueil, créer un job
13. Le nom importe peu, choisissez "Pipeline"
14. Choisissez les options que vous voulez et sélectionner "Projet gitHub" pour renseigner l'url du repos.
15. Valider et lancer vos builds
