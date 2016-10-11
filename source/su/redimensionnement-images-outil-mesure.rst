.. _redimensionnement-images-outil-mesure:

Redimensionnement d'une image
------------------------------

Sketchup propose un outil spécifique "Mettre à l'échelle" (raccourci : **S**) pour redimensionner les objets. On peut donc l'utiliser pour redimensionner une image.

Problème  : inadéquation de l'outil "Échelle"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cet outil peut redimensionner de façon *uniforme* (homothétie) [Maj]+[S], à partir du *centre* [Ctrl]+[S], avec un *facteur d'échelle* : ZCV = nombre et avec une *longueur déterminée* : ZCV = nombre avec unités.

Cette dernière possibilité est intéressante, mais difficilement applicable à une image, car l'outil échelle ne s'applique que sur les bords de l'objet "image". Si les points de référence sont *à l'intérieur* de l'image, à moins d'un découpage à ces limites, l'outil échelle est inapproprié.

Solution : Utilisation de l'outil "Mesure"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Cet outil (raccourci : **T**) est utilisé fréquemment dans Sketchup pour établir des lignes de "construction" (repères).

Ici, on va détourner son usage en appliquant une méthode de redimensionnement par indication d'une nouvelle distance (comme dans les logiciels de DAO "industrie").

Si vous venez de lire :ref:`import-ssqu` vous avez une belle image du plan de Rez de Chaussée du modèle .

Pour la dimensionner, il nous faut connaître les dimensions "hors-tout" de cette maison, en se basant sur la `notice <http://www.fixhaus.at/Berchtold%20Typ2.pdf>`_ du modèle "Berchtold Type 2" . On y découvre en page 2, que la forme est un *rectangle de 12,63 m sur 6,63 m*

1. **T** activez l'outil mesure (icône : mètre à ruban)
#. premier point : cliquez sur le coin supérieur gauche (extérieur du mur). (Au besoin, faites un grossissement d'affichage (zoom "molette"))
#. deuxième point : cliquez sur le coin supérieur droit (extérieur du mur). (Au besoin, déplacez l'image sans rotation (=pan) : [Maj]+[Molette] et Zoomez)
#. placez le curseur dans la ZCV [Tab], et rentrez la dimension voulue ``12,63`` (attention à la virgule : c'est celle du clavier "texte")
#. acceptez le redimensionnement de l'image

.. note::

    Le redimensionnement d'une image en sous-qu n'est jamais "exact", car même si l'on donne une dimension correcte, on n'indique jamais le point de départ de la ligne de "redimensionnement" avec précision : on clique un peu au hasard sur ce que l'on croit être le milieu d'un ligne, cela est dû à l'imprécision du fort grossissement d'une image.

    Ce fond de plan sert surtout à donner un idée générale de ce qu'il faut redessiner avec Sketchup.


Redimensionner avec l'outil mesure permet d'utiliser n'importe quelle image possédant une longueur connue.

Le seul désavantage : c'est une opération homothétique. Si l'on désire "déformer" une image différemment selon les axes X et Y, ou même en s'accrochant sur plusieurs points "d'appariement", il faut se tourner vers :
   * une autre méthode : voir :ref:`image-com-txtur`
   * des logiciels plus spécialisés, comme `AutoCAD Raster Design <http://www.autodesk.fr/adsk/servlet/index?siteID=458335&id=12615796>`_

Nous sommes prêts à dessiner : suivons le guide :ref:`su1`

Redimensionnement : liste des solutions possibles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Nous venons de voir qu'il existe plusieurs façons de redimensionner un image, chacune ayant des avantages et des inconvénients :

.. list-table::
   :widths: 20 40 40

   * - **Méthode/Outil**
     - **Avantage**
     - **Inconvénient**
   * - **Échelle [S]**
     - pratique, précis, redimensionnement de plusieurs images possible
     - s'accroche au bord de l'image, ne permet pas d'utiliser d'autres points de référence
   * - **Mesure [T]**
     - permet de redimensionner à partir de n'importe quelle référence
     - ne permet pas de redimensionner plusieurs images
   * - **Texture**
     - redimensionne aisément une image importée en tant que texture
     - impose d'avoir une géométrie au préalable, méthode un peu laborieuse (punaises)


.. |su| replace:: Sketchup
