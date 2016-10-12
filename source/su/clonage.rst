.. _deplcmt-multipl:

Déplacement multiple/clonage
=============================

La touche [**CTRL**] associée à un outil de modification (déplacement [**M**], rotation [**Q**] ) permet de "cloner" des objets.

L'équivalent AutoCAD est la commande *Réseau* 

Principe & usage
-----------------

Ces objets peuvent être nimporte-quelle entité de dessin : ligne, surface, volume, composant, etc.

le clonage est soit :
   * effectué avec une distance fixe (petite) et un nombre de copies (par *multiplication*)
   * effectué avec la distance totale et un nombre de copie (par *division*)

Déplacement M + CTRL
--------------------

Réseau "linéaire" : copie le long d'un axe (x ou y ou z)

Exemple 1 :
   * vous dessinez les chevrons (section 6X8) d'une charpente, disposés selon un entraxe de 60 cm.
   * sélectionnez le chevron
   * activez l'outil déplacement : **M**
   * appuyez sur la touche **CTRL** (l'icône de l'outil possède un "plus" dans le coin droit supérieur)
   * sélectionnez l'arête du chevron
   * indiquez comme valeur de déplacement (60 -1/2 ep. chevron = 60-3 = ) ``57 cm`` dans la ZCV. Attention : restez "collé" sur un axe
   * vous avez à "chevronner" sur une distance de 12 m de façade? indiquez (12/0.6 = ) ``x20`` ou ``20x`` dans la ZCV. Remarquer le "x"

Example 2 :
   * vous dessinez les poteaux d'une pergola. Cette pergola couvre une terrasse faisant 14,45 m de longueur (c'est une terrasse du Sud de la France ...)
   * sélectionnez le poteau que vous avez dessiné à une extrémité de la pergola
   * activez l'outil déplacement : **M**
   * appuyez sur la touche **CTRL** (l'icône de l'outil possède un "plus" dans le coin droit supérieur)
   * cliquez sur l'arête du poteau
   * indiquez comme valeur de déplacement ``14,45`` (|su| a été configuré pour le dessin en mètres, 14,45=14,45m). Attention à utiliser la ``,`` et non le ``.``
   * vous voulez 4 poteaux entre les poteaux d'extémité? Indiquez ``4/`` ou ``/4``. Enjoy


Rotation Q + CTRL
---------------------

Réseau "polaire" : copie autour d'un axe (x ou y ou z)

La combinaison de ces touches permet d'effectuer des copies "circulaires".

Example 3 :
   * vous (tenter de ...) dessiner les marches d'un escalier balancé
   * sélectionnez la marche
   * activez l'outil rotation : **Q**
   * appuyez sur la touche **CTRL** (l'icône de l'outil possède un "plus" dans le coin droit supérieur)
   * cliquez sur le coin intérieur supérieur (axe de référence)
   * cliquez sur l'extrémité extérieure (on vient de définir la ligne de référence)
   * indiquez comme valeur de déplacement (giron = ) ``22cm`` (on doit spécifier l'unité pour toute dimension différente de l'unité par défaut)
   * indiquez le nombre ``4x`` ou ``x4``
   * il ne vous reste plus qu'a déplacer chaque marche verticalement.
   * vous pouvez aussi choisir un déplacement faisant tourner *&* monter les marches ...



.. |su| replace:: Sketchup