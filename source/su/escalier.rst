.. _escalier-su:

Escaliers
==========

Il existe au moins 3 méthodes pour faire un escalier, nous les détaillerons plus bas.

Plusieurs plugins permettent de réaliser des escalier droits à 1 ou 2 volée, des escaliers hélicoïdaux, mais aucun ne proposent une solution correcte à la problématique des escaliers balancés.

Si l'on regarde du coté des logiciels "Architecture" (je pense à Archicad, que les autres me renseignent sur les possiblités et limitations de Allplan, Vectorworks, Revit) on trouve aussi des limites aux solutions qu'ils proposent, notamment dès que l'on se retrouve dans des géométries de "guingois" comme en rénovation. Je crois que même 3DS sèche un peu dans ce domaine (escaliers balancés à construire dans des cages d'escalier "tordues"). de toute façon, même si un logiciel arrive à le dessiner correctement, il faudra trouver l'artisan que sache le bâtir ... (recherche artisan sanchant faire un escalier sur voûte sarrasine désespéremment ...)


Nous allons donc explorer les méthodes "basiques" pour "monter" un escalier.

Rectangle & sous-divisions
----------------------------

Cette méthode emploie la sous-division d'un rectangle en autant de "marches", puis l'extrusion de ceux-ci. Elle est intuitive, mais laborieuse.

* **R** faire un rectangle représentant l'emprise de l'escalier au sol
* groupez-le : :menuselection:`double-clic --> clic-droit --> créer groupe` : vous pourrez construire votre escalier "à l'extérieur" et déplacer aisémment au sein de votre construction une fois fini.
* **SPC** double-cliquez dessu pour activer l'édition de ce nouveau groupe
* sélectionnez un bord (long coté) et divisez-le (:menuselection:`sélection --> clic-droit --> diviser`), en un nombre de segments égal au nombre de marches (longueur/giron = )
* **L** dessiner des lignes partant des extrémités de ces segment, en direction de l'autre bord (accroche perpendiculaire svp. : i.e le long d'un axe!) : votre rectangle est divisé en autant de marches.

.. note::
   |su| vous indique des points particuliers lorsque vous faites parcourir le pointeur le long d'un segment : extrémité (point vert), milieu (point cyan). En plus de ce code couleur, vous avez des "info-bulles" répétant la nature de ces points. Lisez-les!

* **L** sur une extrémité, dessinez une droite verticale (selon axe bleu) repésentant la hauteur totale à franchir
* divisez cette droite en autant de nombre de hauteurs de marche (hauteur totale/hauteur marche = )
* **P** extrudez chaque sous-rectangle, en commançant par la marche la plus haute. Souvenez-vous qu'il doit rester une hauteur à franchir : pour la hauteur d'extrusion, accrochez-vous sur l'avant-dernier point, avant le sommet de la droite.
* recommencez pour chaque marche, en allant chercher (avec l'outil "push-pull" activé) chaque extémité
* **E** effacez avec l'outil "gomme" chaque ligne verticale provenant de l'extrusion des marches

Profil copié
-------------

Cette méthode utilise en core l'outil "push-pull", mais en une seule fois, en se servant d'un profil représentant les marches. Elle est plus "élégante".

* **R** faites un rectangle représentant l'emprise de l'escalier au sol
* groupez-le
* **SPC** double-cliquez dessu pour activer l'édition de ce nouveau groupe
* **P** extrudez-le à la hauteur d'étage à franchir
* **L** sur l'un des (long) coté, dessinez le profil (en "escalier"!) représentant la face supérieure d'une seule contre-marche + marche
* **M + CTRL** faites une copie multiple de ces deux segements : sélectionnez le pobas comme point de départ, et le point haut comme fin pour déterminer la longueur et l'orientation du vecteur de déplacement. Indiquez le nombre de copies (= nombre de marches), par exemple ``14x`` (la technique de la copie multiple est dévleoppée ici :ref:`deplcmt-multipl`)
* **P** extrudez le volume situé au-dessus du profil. Enjoy

Composants
--------------

Cette méthode implique la création d'une marche, la transformation en composant, et la copie de celui-ci. C'est la technique la plus évoluée ... donc la moins évidente.

* faites une marche unique (rectangle --> groupe --> extrusion) ayant comme dimension la hauteur et le giron souhaité
* transfomez-là en composant : :menuselection:`clic-droit sur le groupe --> créer un composant`
* si vous ouvrez la fenêtre "composant", profitez-en pour le renommer en "marche"
* **M + CTRL** faites une copie multiple de ce composant, de l'angle bas vers l'angle haut (= vecteur déplacement), incrémenté du nombre de marche nécéssaires ``12x`` par exemple.
* **SPC** éditez n'importe quelle marche, vous verrez que les transformations s'opèrent aussi sur les autres ... c'est la magie des composant.
* si vous voulez rendre une marche différente des autres composants : :menuselection:`clic-droit sur le composant --> rendre unique`


.. |su| replace:: Sketchup

