.. _install-plugin-su:

Installation de plugins
========================


Sketchup est, à la base, un programme simple, voir simpliste diront certains (les pauvres...).

Néanmoins cette simplicité n'est qu'apparente, car le logiciel offre la possibilité (à quelques initiés) de créer de nouveaux outils, de mettre en place de nouvelles fonctions.

Un certains nombre de "geeks" et de chercheurs farfelus passent donc leurs journées (et sans doute une partie de leurs nuits...) à coder pour le bien de l'humanité, et il en ressort ce que l'on appelle des *scripts Ruby*. Ces petits bouts de programme, en langage ruby, ne pesant quasiment rien (quelques Ko tout au plus) s'ajoutent dans le dossier plugin de Sketchup et donnent accès à de nouvelles fonctions au sein du programme.

La grande majorité de ceux ci, ainsi que beaucoup d'autres peuvent également être téléchargés sur le site qui leur est dédié par laboratoire du CRAI, Nancy (merci  a eux !), ou sur sketchucation, dans le forum prévu a cet effet.

Tous ces scripts se retrouvent globalement sous
* l'onglet **Plugin** de Sketchup,
* mais certains ont des barres d'outils attitrées (Affichage --> Barres d'outils -->...),
* d'autres une place dans le menu contextuel du clic droit,
* d'autres encore sont ailleurs (dans ...Outils ou dans ...Dessin par exemple).

Enfin , il est parfois nécessaire de les activer via le menu ...Fenêtre --> ...Préferences --> ...Extensions (c'est le cas pour la Sandbox par exemple)


.. note::
   |su|, logiciel américain, est agrémenté par des plugins venant des 4 coins de la planète : le langage universel reste **l'anglais**, et la majorité des plugins ne sont pas traduits en français ... c'est la rançon de la gratuité ...



Installation
-------------

Méthode traditionnelle
~~~~~~~~~~~~~~~~~~~~~~

L'installation d'un script Ruby est est simple : il faut copier le fichier voulu (extension :file:`*.rb`) dans le fichier :file:`plugin` de |su| (logiquement situé dans :file:`C:\Program files\Google\Google Sketchup(6 ou 7)\Plugins\).

.. warning::
  Certains scripts ruby ont des **dépendances** , i.e : leur exécution nécéssite l'installation d'autres scripts "additionnels" : lisez bien les recomandations des auteurs quand à l'installations des plugins/scripts

  Version de |su| : certains scripts sont spécifiques à une version particulère de |su|

Certains plugins sont très complets, ils comportent même une barre d'outil dédiée. Leur format est souvent sous forme de :file:`*.zip`, il faut à ce moment là **décompresser** le contenu entier du zip à l'intérieur du dossier plugin. On y retrouve alors un script ruby et un dossier contenant d'autres scripts, ainsi que des images (icônes de barre d'outils)


Méthode "installateur"
~~~~~~~~~~~~~~~~~~~~~~~~

Certains plugins, en plus d'être accompagnés de barres d'outils, comportent des fenêtres de dialogue lors de leur exécution. Nous sommes en présence de minis logiciels venant se greffer sur l'interface de |su|. Pour en faciliter l'installation (qui requiert souvent d'effectuer plus d'opérations que celles précitées auparavant) les développeurs ont poussé le bouchanon jusquà proposer des installateurs "autonomes".

Le processus consiste
* à double-cliquer sur l'installateur,
* puis à  valider le chemin où se trouve |su|... c'est tout!

(Meta)Plugins livrés sous ce format : les barres d'outls SCF, 1001 tools, etc.



Liste des scripts
------------------

**NON** exhaustive ! voir plus bas quelques liens WWW

..  .. math::

..    {\displaystyle \chi^2(t_s)= \sum^{n=1}_{k=0}[r(t_{s+k}-(m\cdotp(t_k)+c)]}



* Symetrie de la sélection
   - Usage : Complète efficacement l'outil un peu étrange dont Sketchup est affublé à l'origine (« retourner le long de » ou « flip along »...).
   - Méthode : Sélectionner l'objet à « symétriser » ---> clic droit --> « symétrie de la sélection » --> définir le plan de symétrie en traçant deux lignes, librement, dans l'espace --> choisir de conserver ou non l'élément d'origine.
* Compo spray
   - Usage : Permet de poser extrêmement rapidement et efficacement des composants dans un modèle. Indispensable pour peupler une maquette d'arbres, de personnages ou de n'importe quoi d'autre. Comporte des fonctions de rotation et de changement d'échelles paramétriques qui donneront l'impression que chaque petit composant est différent de ses voisins, renforçant ainsi l'illusion d'un dur labeur accompli...
   - Méthode : barre d'outils (« Draw » --> « Compo spray ») --> dans la fenêtre de dialogue, choisir le composant, le type de projection voulue, les paramètres d'aléa et...enjoy ! (doc. très complète dans le fichier du plugin)
* Purger
   - Usage : Supprime les éléments inutilisés dans le model (textures, composants, styles...) qui ne manquent pas de se stocker stupidement un peu partout dès que vous les utilisez, ne serait ce qu'une fois, et ne disparaissent pas tout seuls par la suite (ça peut alourdir considérablement un fichier).
   - Méthode : Rien de plus simple,  « Plugins » --> « Purger »...
* Courbes de bezier
   - Usage : Ajoute plusieurs méthodes de dessins de courbes aux outils Sketchup. Permet de dépasser largement les limites évidentes de l'outil arc d'origine de Sketchup, et ainsi de s'épanouir dans le dessin spontané de formes courbes complexes.
   - Méthode : Sélectionner un des outils de dessin de courbe et improviser...
* Fenetreur
   - Usage:Vous en avez assez de toujours galérer pour créer un ensemble de fenêtres ou un mur rideau un peu régulier ? Pas de soucis, ce plugin est pour vous. A partir d'une surface, vous pouvez créer directement une (ou plusieurs) fenêtre, en paramétrant le nombre d'éléments, la taille ou les matériaux de ceux ci.
   - Méthode : sélectionner une ou plusieurs surfaces -> clic droit -> windowizer -> définir les paramètres des fenêtres.
* Grey scale
   - Usage : Fonctionne exactement comme un passage en noir et blanc dans Photoshop, mais applique à tout le model, ajoutant ainsi la petite note de style qui manquait à votre 3D...

   Le phénomène est de plus réversible à tout moment, en revenant simplement dans le plugin.
   - Méthode : Plugin --> Grey mode. Petit plus : toute couleur rajoutée après le passage en mode gris est affichée telle quelle, il est donc possible de mettre en évidence facilement des éléments particuliers du projet.
* Face de coupe
   - Usage : Non, ce n'est pas une vieille insulte des années 80, mais un outil qui crée une face à l'intersection du plan de coupe, « refermant » ainsi visuellement les murs et autres géométries, qui restent sinon désespérement creuses... Attention, cette face ne se déplace pas avec le plan de section... Si vous coupez ensuite ailleurs, il faudra refaire l'opération.
   - Méthode : Faire une coupe --> sélectionner le plan de coupe --> clic droit --> « add a section cut face » --> choisir sa couleur et son calque.
* Projection / extension
   - Usage : Permet (entre autres) d'extruder une ligne ou un ensemble de lignes. Fonctionne globalement comme l'outil pousser/tirer, mais en moins restrictif. Très utile pour récupérer des données d'Autocad sans perdre des heures à recréer toutes les faces nécessaires à l'extrusion d'un mur. Ce plugin offre également la possibilite d'extruder des faces (une ou  plusieurs en même temps) selon un axe quelconque (et pas systématiquement uniquement leur normale...)
   - Méthode : Barre d'outil --> sélectionner les lignes /faces à extruder --> définir la direction et la distance voulue.
* Supprimer les lignes coplanaires
   - Usage : Principalement utile si vous devez importer des données créées dans d'autres applications, via le format 3Ds par exemple. En effet, ces opérations d'import/export se traduisent souvent par des phénomènes de triangulation des faces, qui grèvent  sauvagement l'effet visuel, et la manipulation des éléments dans Sketchup.
   - Méthode : Sélectionner l'objet à « nettoyer » --> clic droit -->  « détruire segments coplanaires ».
* Sandbox :
      - Usage : Set d'outils multi-usage de création de terrains et de bien d'autres choses si on a de l'imagination... Ce n'est pas à proprement parler un script Ruby, puisqu'il est intégré de base dans Sketchup, mais il se comporte comme tel, car il n'est pas affiché d'origine. Il propose deux méthodes distinctes, l'une se basant sur la construction d'une grille déformable, l'autre sur l'exploitation de courbes de niveaux.
      - Méthode :
            - Grille : Tracer une grille aux dimensions voulues -->  sélectionner l'outil de déformation et lui donner une taille -> cliquer sur une zone et définir l'élévation.
            - Courbes de niveaux : Sélectionner l'ensemble des courbes --> sélectionner l'outil correspondant --> éventuellement, afficher les arrêtes cachées pour pouvoir supprimer la géométrie inutile.

etc.

.. seealso::

    http://www.crai.archi.fr/RubyLibraryDepot/Ruby/fr_RUBY_Library_Depot.html
      site Web maintenu par **Didier BUR** (enseignant/chercheur à l'école d'archi de Nancy). on peut y trouver les contributions des développeurs de scripts Ruby pour SketchUp depuis 2004. Il y a en tout **494** scripts téléchrgeables gratuitement. Le plugin *fr_SectionCutFace.rb* est installé sur :ref:`cette page <export-dwg-coupes>`
    http://www.scriptspot.com/
      des scripts
    http://www.plugins.ro/
      encore
    http://archsymb.com/ruby/
      d'autres
    http://www.formfonts.com/browse/browseScripts.php?function=category
      certains payants
    http://www.objectivenetworks.net/indexScripts.php
      d'autres aussi
    http://www.smustard.com/
      quoiqu'il puisse y avoir les 2
    http://www.pushpullbar.com/
      des scripts sur un forum ? ben oui, et franchement pas les moins mauvais, comme "joint push pull"
    http://members.cox.net/rick.wilson/
      windowizer, tu me bluffera toujours ....
    http://www.iesve.com/Software/Free-and-trial-software/
      par des pros : analyse de la consommation énergétique globale de votre projet
    http://www.pixdim.com/en/home.html
      besoin de mesure 3D d'après des photos : la photogrammétrie c'est possible aussi dans |su|
    http://www.tensile-structures.de/help.html
      architecture "tensile" (toile tendues) avec le plugin "soap & bubble skin"
    http://www.northernlightstimberframing.com/su/
      un ancien informaticien devenu charpentier : avec la famille de plugins "TF rubies" vous pourrez non seulement dessiner, mais aussi extraire les plans de débits de vos pièces de bois! plus besoin de Cadwork! de la folie!
    http://www.drawmetal.com/
      vous avez envie de dessiner du fer forgé?
    http://1oo1bit.com/default.html
      plein (trop?) en une seule barre
    http://www.special.eclipse.co.uk/sketchup_training.html (et cliquez sur Downloads)
      5 barres d'outils qui regroupent les meilleurs plugins, mais pas tous ....






.. |su| replace:: Sketchup
