# equipes-bts
Programme de constitution des équipes en BTS (intégration et projet inter-BTS)
------------------------------------------------------------------------------

C'EST UNE VERSION BETA TRES PROVISOIRE !!

Il faut d'abord créer la BDD "icof_bts".
Le script de création des tables est dans le dossier "bdd".

L'application permet d'affecter les équipes aux étudiants (bouton "créer") selon 2 modes :
- si on laisse 0 dans le nombre d'équipes, on crée autant d'équipes qu'il y a d'étudiants dans la classe la moins peuplée
- sinon on indique le nombre d'équipes à créer.

Les champs textes banalisés sont pour l'instant inutiles ; on pourra ajouter des critères de répartition des équipes (par ex le sexe).

L'application permet aussi d'afficher les équipes.

La BDD contient une table "équipes" pour l'instant inutile ; à voir s'il faut la conserver ou pas.


