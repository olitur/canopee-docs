.. _image-com-txtur:

Importation d'une image en tant que texture
============================================

Il existe plusieurs façons d'importer une image dans |su|

.. list-table::
   :widths: 20 80

   * - **Image**
     - **Type importation**
   * - ``image``
     - l'image est importée en tant qu'image. Elle peut être redimensionnée, etc.
   * - ``texture``
     - l'image est importée en tant que texture. C'est pour la redimensionner selon une géométrie existante
   * - ``photo-match``
     - l'image est importée en tant que modèle. C'est la géométrie qui va pouvoir être redimensionnée selon cette image.


Concept
-------
Ici, nous traitons du deuxième type d'import.

C'est une fonctionnalité très pratique, notamment pour (re)créer des monuments à partir d'images : il suffit de créer une géométrie (coque vide), et d'y plaquer une texture à partir des images. L'illusion fonctionne bien, c'est d'ailleurs ce qui a motivé ``Google`` pour l'achat du logiciel |su| détenu alors par la société ``@last`` .

Étapes
-------
#. importez une image, sélectionnez "en tant que texture" (bouton radio en bas à droite)

#. collez cette image sur la géométrie servant de référence

#. clic-droit > texture > position : l'image apparaît démultipliée, avec des "punaises" de couleur différentes aux 4 coins (bords extérieurs)

#. décochez (si ce n'est pas déjà fait) : "punaises bloquées"

#. déplacement des punaises vers les points de référence de l'image :
	* clic (une fois, puis relâchez) sur une punaise : elle change de forme, ainsi que le pointeur (qui hélas! la recouvre)
	* déplacement de l'ensemble pointeur/punaise vers la référence
	* clic sur le point de référence choisi dans l'image (un angle de bâtiment, ou autre point caractéristique, ...)
	* répéter l'opération pour chaque punaise

#. redimensionnement de l'image selon la géométrie sous-jacente
	* cliquez-glisser (clic, puis maintient de la touche gauche de la souris enfoncée et glissement vers le point ...) sur chaque punaise : l'image se déforme nettement
	* relâchez sur le point choisi (angle de la géométrie, etc.)
	* répétez l'opération pour chaque punaise

#. vous pouvez répéter les étapes précédentes pour chaque face ...


Autres méthodes de redimensionnement
--------------------------------------
Selon les besoins, il peut être bon de faire un tour sur ce document : :ref:`redimensionnement-images-outil-mesure`

























.. |su| replace:: Sketchup

