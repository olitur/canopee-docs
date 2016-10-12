Organisation des documents
---------------------------

Principe
~~~~~~~~~~

Il faut **organiser** les fichiers au sein de plusieurs dossiers, en appliquant une stratégie prévoyant l'évolution nécessaire du projet. C'est une habitude à prendre dès le début d'un nouveau projet, pour en faciliter la gestion. Typiquement, on doit retrouver, au sein d'un unique répertoire **Projets** : 

# **Projet 1** (nom du : projet, client+projet, date+projet, etc.)
	* *dessins*
		* dwg (tous les dessins au format ``\*.dwg``  d'AutoCAD) *édition*
		* img (tous les fichiers "images" : ``\*.jpg``, ``\*.png``, ``\*.bmp``, ``\*.pdf``, etc.)
		* pdf (tous les fichiers ``\*.pdf`` issus d'un logiciel de dessin (AutoCAD, Sketchup, Archicad, Vectorworks, etc.) *visualisation*
		* skp (tous les dessins au format ``\*.skp`` de Sketchup)
		* pln (tous les dessins au format ``\*.pln`` d'Archicad)
		* *toute autre appelation indiquant clairement le type de fichier ...*
	* *écrits*
		* corresp (toutes les lettres, fax, etc. Si abondante, il vaut mieux prévoir un dossier par destinataire ...)
		* dqe (devis quantitatif estimatif)
		* plannings
		* etc.
# **Projet 1** (projet de plus faible importance)
	* *dessins*
		* dwg
		* pdf
	* *ecrits*
		* corresp

.. note:: 
	L'organisation est une notion personnelle. L'expérience, la nature du projet ou plus simplement la structure dans laquelle vous travaill(er)ez vous indiquera la marche à suivre ...


Organisation des fichiers pour ce tutoriel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Voici une liste prévoyant les principales étapes :

# Il faut télécharger des \*.pdf d'Internet, les transformer dans un format d'image utilisable dans Sketchup
# Faire un dessin dans Sketchup
# Exporter chaque vue (plans, coupes, façades, toiture) en \*.dwg
# Créer un fichier AutoCAD regroupant les "exports"
# imprimer ce dessin en \.pdf
# prévoir des modifications, envois par mail

Le modèle employé, originaire d'Autriche, porte une appellation "barbare" : changeons-la en une appelation plus facile à retenir, qui reprend aussi les notions d'espoir lié à ce type de construction (vers un monde meilleur ...). On applelera le projet **Porkeno**, allez savoir pourquoi ...

Nous aurons donc :

.. image:: img/view-dir-porkeno.png
	:width: 600
	:alt: Vue de l'ensemble de l'arborescence complète du projet
	:align: center


.. note:: 
	On notera l'existance d'un sous-répertoire dessins>dwg>*xref* . Ce répertoire regroupe les exports 2D Sketchup --> dwg. Il est important de ne pas le déplacer par la suite. C'est vrai pour les autres de façon générale (si on insère un fichier ayant un "chemin" (arborescence complète depuis la racine du lecteur) particulier, que se passe-t-il si on modifie le chemin de ce fichier inseré ?)
	
	