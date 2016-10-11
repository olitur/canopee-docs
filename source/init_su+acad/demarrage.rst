.. _demarrage_init_su+acad:

Démarrage
===========


Récupérons les notices en \*.pdf sur le site Web pour nous servir de base de travail et à dessinons notre maison sur Sketchup (c'est là que les choses se compliquent!)


Récupération des fichiers du projet
------------------------------------

Il faut récupérer les \*.pdf du projet, et les dessiner sur sketchup.

Rendez-vous sur : http://www.canopee.org/fichiers/teb-d/aides/acad/init_su+acad/dessins/pdf/ et récupérez (:menuselection:`clic-droit --> enregistrer sous`) les plans et façades (nom commençant par `fixhaus_\*` ) ainsi que la notice générale du modèle "Berchtold Type 2" sur http://www.fixhaus.at/Berchtold%20Typ2.pdf



.. note::

  Vous êtes perdus ? Cliquez sur **Parent Directory** pour remonter dans l'arborescence des répertoires de cet espace de stockage


.. warning::

  L'emplacement des fichiers nécessaires à l'exécution de ce tutoriel est situé sur un serveur distant. Il vaut mieux les télécharger sur votre poste, en local, pour éviter les désagréments consécutifs à une coupure de réseau ...

Organisation préalable des documents
-------------------------------------

Vous aller créer plusieurs fichiers, certains feront appel à d'autres, etc. Il convient d'adopter une *arborescence type* (dossiers & fichiers), une *convention de nommage* (fichiers) et de ne plus la changer! Par la suite, vous pourrez appliquer une autre logique, mais suivez celle qui suit.

Principe
~~~~~~~~~~

Il faut **organiser** les fichiers au sein de plusieurs dossiers, en appliquant
une stratégie prévoyant l'évolution nécessaire du projet. C'est une habitude à
prendre dès le début d'un nouveau projet, pour en faciliter la gestion.
Typiquement, on doit retrouver, au sein d'un unique répertoire **Projets** :

#. **Projet 1** (nom du : projet, client+projet, date+projet, etc.)
	* *dessins*
		* dwg (tous les dessins au format ``\*.dwg``  d'AutoCAD) *édition*
		* img (tous les fichiers "images" : ``\*.jpg``, ``\*.png``, ``\*.bmp``, ``\*.pdf``, etc.)
		* pdf (tous les fichiers ``\*.pdf`` issus d'un logiciel de dessin (AutoCAD, Sketchup, Archicad, Vectorworks, etc.) *visualisation*
		* skp (tous les dessins au format ``\*.skp`` de Sketchup)
		* pln (tous les dessins au format ``\*.pln`` d'Archicad)
		* *toute autre appellation indiquant clairement le type de fichier ...*
	* *écrits*
		* corresp (toutes les lettres, fax, etc. Si abondante, il vaut mieux prévoir un dossier par destinataire ...)
		* dqe (devis quantitatif estimatif)
		* plannings
		* etc.
#. **Projet 2** (projet de plus faible importance)
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

1. Il faut télécharger des \*.pdf d'Internet, les transformer dans un format d'image utilisable dans Sketchup
2. Faire un dessin dans Sketchup
#. Exporter chaque vue (plans, coupes, façades, toiture) en \*.dwg
#. Créer un fichier AutoCAD regroupant les "exports"
#. imprimer ce dessin en \.pdf
#. prévoir des modifications, envois par mail

Le modèle employé, originaire d'Autriche, porte une appellation "barbare" :
changeons-la en une appellation plus facile à retenir, qui reprend aussi les
notions d'espoir lié à ce type de construction (vers un monde meilleur ...). On
appellera le projet **Porkeno**, allez savoir pourquoi ...



..  .. image:: img/porkeno_dir-view.png
.. 	:width: 600
.. 	:alt: Vue de l'ensemble de l'arborescence complète du projet
.. 	:align: center

.. _arborescence-projet:

Nous aurons donc ::

      |
      `-- porkeno_init_su+acad
         |-- 00_description.txt
         |-- dessins
         |   |-- dwg
         |   |   |-- porkeno_plan-coupe-facad_o.turlier_25mai09_12h00.dwg
         |   |   `-- xref
         |   |       |-- porkeno_plan_R+0_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_plan_R+1_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_plan_toiture_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_coupe_AA_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_coupe_BB_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_facad_Sud_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_facad_Ouest_export-2d-su_o.turlier_25mai.dwg
         |   |       |-- porkeno_facad_Est_export-2d-su_o.turlier_25mai.dwg
         |   |-- img
         |   |   |-- porkeno_fac_est.jpg
         |   |   |-- porkeno_fac_nord.jpg
         |   |   |-- porkeno_fac_ouest.jpg
         |   |   |-- fixhaus-berchtold2_fac_sud.jpg
         |   |   |-- fixhaus-berchtold2_perspective.pdf
         |   |   |-- fixhaus-berchtold2_plan_r+0.jpg
         |   |   `-- fixhaus-berchtold2_plan_r+1.jpg
         |   |-- pdf
         |   |   |-- fixhaus-berchtold2_fac_est.pdf
         |   |   |-- fixhaus-berchtold2_fac_nord.pdf
         |   |   |-- fixhaus-berchtold2_fac_ouest.pdf
         |   |   |-- fixhaus-berchtold2_fac_ouest_.pdf
         |   |   |-- fixhaus-berchtold2_fac_sud.pdf
         |   |   |-- fixhaus-berchtold2_plan_r+0.pdf
         |   |   |-- fixhaus-berchtold2_plan_r+1.pdf
         |   |   |-- porkeno_plan_r+0_A3H_1-50e_o.turlier_14mai09_12h00.pdf
         |   |   `-- porkeno_plan_r+0_A4H_1-100e_o.turlier_14mai09_12h00.pdf
         |   `-- skp
         |       |-- porkeno_o.turlier_25mai09_11h00.skp
         `-- ecrits
            |-- porkeno_dqe_o.turlier_19mai09.ods
            `-- porkeno_lettre-accompagnement-envoi-plans-a3_o.t_19mai09.odt



.. note::
	On notera l'existence d'un sous-répertoire dessins>dwg>xref .

        Ce répertoire regroupe les exports 2D Sketchup --> dwg. Il est important de ne pas le déplacer par la suite.

        Vous pouvez renommer tous les fichiers de ``fixhaus-berchtold2_..`` à ``porkeno_...`` pour une meilleure "consistance" de votre projet.

        N'oubliez pas d'inclure les auteurs originaux dans le fichier ``00_description.txt``



Sketchup
---------

Ce logiciel constitue un excellent point d'entrée dans le monde de la DAO.
    * Il est très *intuitif* : vous arriverez à produire un dessin en une après-midi.
    * c'est un logiciel *d'esquisse* (conception globale): cela correspond parfaitement au phasage du déroulement d'un projet de dessin architectural
    *  les possibilités d'export vers d'autres logiciels sont grandes (2D : formats d'image, de dessin(\*.dwg); 3D : \*.dwg, \*.dae (3d importable dans Photoshop notamment), etc.)
    * Ouverture :
        * développé dans un langage orienté "objet", facile à employer : `Ruby <http://sketchup.google.com/intl/fr/download/rubyscripts.html>`_,  avec un développement logiciel ouvert à tout le monde `API <http://code.google.com/intl/fr/apis/sketchup/docs/index.html>`_ depuis 2006 : Il y a plusieurs centaines de "plugins" (gratuits ou payants) qui améliorent grandement la version de base (ex: voir :ref:`config-su-02`).
        * prix très faible : ~ 600 € pour la version Pro (export vers le \*.dwg) et gratuit pour la version grand public.

Configuration initiale
~~~~~~~~~~~~~~~~~~~~~~~~~

Suive ce guide : :doc:`/su/config-su`



.. _init-su+acad_import-img-su:

Importation du "fond de plan"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Une fois les documents \*.pdf du projet sur votre disque dur, suivez : :doc:`/su/import-ssqu` pour avancer à l'étape suivante.

