Détourage d'objets, personnages, etc.
=======================================

Vous pouvez créer votre propre bibliothèque d'objets et de personnages à insérer dans vous perspectives, etc.

* commencez par prendre des photos (ou faites des scans) de personnes ou d'objets que vous voulez inclure dans vos compositions.
* une fois ce travail réalisé, vous devez extraire les objets du premier plan du fond de l'image pour les utiliser en tant qu'entourage.


Extraire des personnes d'une photo : il faut s'arranger pour prendre des photos de personnes en face d'un mur, ou d'un fond net qui permet d'identifier facilement ce qui ressort du personnage ou du fond.

Utilisation de l'outil "extraction"
------------------------------------

Commençons par séparer grossièrement le personnage et le sol en utilisant l'outil *extraire*

Ouvrez l'image, que vous pouvez télécharger directement :download:`ici <./img/femme-en-marche03.jpg>` , montrant le sujet (une femme en mouvement) et le fond (l'artère d'une grande ville).

Pour commencer le processus d'extraction, choisissez :menuselection:`filtre --> extraire` ou pressez :kbd:`Alt+Ctrl+X`.

Vous aller séparer le premier plan de l'arrière plan en utilisant les outils dans cette boîte de dialogue. Familiarisez-vous avec ces outils.

Vous aller commencer par tracer un contour autour de la personne en utilisant le `Sélecteur de contour`.

Une fois que la détection de bord forme un contour fermé, vous utiliserez l'outil `Remplissage` pour désigner l'objet de premier plan.

* Sélectionnez l'outil zoom ou pressez sur :kbd:`Z`, et cliquez quelques fois pour grossir la zone correspondant à la femme en plaçant la loupe sur la zone désirée : nous commencerons par les pieds et les jambes.

* Vous pouvez déplacer l'image obtenue avec l'outil main, en pressant :kbd:`H` ou :kbd:`barre espace`

* Cliquez sur l'outil `Sélecteur de contour` ou pressez :kbd:`B` pour le sélectionner.

* Cochez *Sélection optimisée* dans les options d'outils sur la droite. Utilisez *Sélection optimisée* pour permettre à Photoshop de sélectionner une taille de brosse appropriée quand vous tracez au-dessus de *bords biens définis*.

Image

* Tracez précautionneusement les bords des pieds et des jambes de la femme. Une surbrillance en vert apparaîtra sur l'écran lorsque vous tracerez. La propriété d'ajustement automatique de la taille de brosse permet une bonne couverture du bord. Idéalement, vous devriez obtenir une couverture de la moitié du fond et de la moitié de l'avant-plan sur les bords que vous tracez.

Image

* Occasionnellement, dans les zones de fort contraste, ou lorsque les bords sont flous, la *Sélection optimisée* suit le mauvais chemin. Si vous faite une erreur, utiliser l'outil gomme ("eraser" en anglais) pour corriger le tracé : Pressez :kbd:`E` et enlevez tout segment inadéquat.

* Pressez :kbd:`B` et continuez de révéler les bords bien définis de la jambe et de la chaussure.

* Continuez jusqu'à ce que tous les contours soit réalisés dans cette zone. Déplacez l'image en pressant sur :kbd:`H` ou sur :kbd:`barre espace`, puis recommencer le travail de sélection de contour en pressant :kbd:`B`

* Si la zone à sélectionner comporte des trous, zoomez en pressant :kbd:`Z` et cliquez, éventuellement, diminuez la taille de la brosse, puis pressez :kbd:`B` pour faire un contour fin.

* Pour revenir au zoom précédant, (zoom négatif) pressez sur :kbd:`Z`, et appuyer sur la touche `Alt` avant de cliquer sur la zone (c'est l'équivalent de la combinaison :kbd:`Alt+Z`).

* Déplacez l'image en appuyant sur la barre d'espace et continuez à sélectionner le contour. Lorsque celui-ci est flou, dé-cochez l'option Sélection optimisée.

* Lorsque vous arrivez sur les cheveux, décochez la sélection optimisée de la brosse et tracez le contour de la tête en faisant bien attention de couvrir la moitié des cheveux et la moitié du fond. Lorsque vous avez fini avec cette zone à bord flous, re-sélectionnez *sélection optimisée*

Image

* Finissez le contour complètement, et zoomez pour voir le personnage en entier ; pressez :kbd:`Z`, puis :kbd:`Alt` et cliquer sur la femme, plusieurs fois si nécessaire, en gardant en tête que le point de clic est le centre du "zoomage".

Image

* Utilisez l'outil :kbd:`Remplir` ou pressez :kbd:`G` : le personnage doit être recouvert de bleu. Attention : si l'image entière est bleue, c'est que le contour n'est pas fermé!

Image

* Cliquez sur :kbd:`aperçu` pour accéder aux outils de correction du contour. On voit de nombreux défauts, plus ou moins importants, en fonction de la qualité du tracé.

Image

* Faites un zoom sur le pied droit : pressez :kbd:`Z` et tracez une fenêtre autour de ce pied.

* Cliquez sur outil de nettoyage ou pressez :kbd:`C` : cet outil enlève l'opacité (ou efface!) du premier plan, mais si on appuie sur :kbd:`Alt`, il en rajoute (la touche Alt appelle l'opposé d'une commande), c.a.d qu'il rajoute des portions de l'image sur celle qui vient d'être détourée.

Image

* Alternativement, et ceci sur tout le contour, vous allez *rajouter du fond* (pressez :kbd:`C`, puis :kbd:`Alt` et :kbd:`cliquez`) et effacer plus finement celui-ci (vous avez déjà pressé sur C, il ne vous reste plus qu'a cliquer) : veillez à effectuer le bon niveau de zoom et adapter la taille de la brosse en conséquence (fort grossissement => petite brosse)


* Si vous remarquez des bords flous, activez l'outil :kbd:`Correction de bord` ou pressez :kbd:`T`, et tracez le long des bords à rendre plus net. Attention, n'utilisez pas cet outil sur des contours naturellement flous, comme les cheveux!

* Lorsque vous êtes satisfait du résultat, cliquez sur :kbd:`OK`. La boîte de dialogue d'extraction se ferme, en laissant apparaître uniquement le personnage sélectionné.

Correction des défauts
------------------------

Vous avez terminé la première étape d'extraction. L'image obtenue a besoin d'être finement nettoyée pour prétendre au fait d'être réutilisée comme personnage à insérer dans vos compositions.

L'unique calque, contenant l'image détourée grossièrement, a été automatiquement converti en calque de fond.

* Double-cliquez sur l'icône dans la fenêtre des calques et renommez celui-ci en `femme qui marche`.
* Créez un nouveau calque en cliquant sur le bouton situé en bas et renommez le `fond`.
* Faites glisser ce calque `en-dessous` du calque `femme qui marche`.

* Pressez :kbd:`D` pour mettre les couleurs par défaut (noir au premier plan, blanc en arrière-plan)
* Cliquez sur l'icône du calque fond et pressez su :kbd:`Alt+Retour arrière` pour remplir le calque courant avec la couleur de premier plan. Le fond devient noir, et on aperçoit des `défauts`.

Image

* Cliquez sur le calque `femme qui marche`, et sélectionnez l'outil :guilabel:`Gomme` en cliquant sur son icône à gauche, ou en pressant :kbd:`E`.

(im 26 27).

Choisissez une brosse douce de diamètre adapté en fonction du zoom, et effacez les points couleurs qui apparaissent sur le fond noir, avec précaution!

Si vous avez été trop loin, vous pouvez afficher le panneau d'historique, et supprimer les dernières opérations.

Pour annuler la dernière opération seulement, pressez :kbd:`Ctrl+Z`.

Vous pouvez aussi utiliser la brosse d'historique, et peindre sur les zones effacées involontairement.

* Vérifions le travail de nettoyage sur un fond blanc :
   
   * Cliquez sur le calque :kbd:`fond`.
   * Pressez :kbd:`D` pour établir les couleurs par défaut.
   * Cliquez sur :kbd:`Ctrl+Retour arrière` pour remplir le calque avec la couleur d'arrière-plan.
   * Pressez :kbd:`E` pour sélectionner la gomme, cliquez sur le calque *femme qui marche* et effacez soigneusement les bords mal finis.

* Une fois le travail de nettoyage manuel fini, nous allons encore améliorer la qualité de l'image en utilisant les filtres de Photoshop :
   
   * Sélectionnez le menu :menuselection:`Filtres --> Renforcement --> Netteté optimisée`.
   * Faites glisser la règle à 100%, choisissez un rayon de 2 pixels.
   * Cliquez sur :kbd:`OK`.

Sauvegarde de l'extraction dans un canal alpha
------------------------------------------------

Les images peuvent posséder un quatrième canal, le canal *alpha*, en plus des trois canaux Rouge, Vert et Bleu.

Ce canal ne modifie pas les couleurs de l'image et sert dans la plupart des cas à gérer la transparence de l'image par exemple pour permettre de voir ce qu'il y a derrière l'image.

Les formats :file:`*.gif`, :file:`*.png`, :file:`*.tiff`, :file:`*.tga`, peuvent supporter un canal alpha. Dans les applications 3D, l'emploi du canal alpha sur les textures permet par exemple de modifier leur réflection ou leur transparence. Les canaux sont dénommés *couches* dans Photoshop.

Nous avons extrait l'image et renforcé ses contours. Il nous reste à créer une couche alpha, qui est une couche de ton gris montrant ou l'image est opaque, translucide et ou transparente. On utilise l'outil opérations pour convertir la transparence en une couche alpha.

* Sélectionnez le menu :menuselection:`Image --> opérations` et réglez le comme sur la capture d'écran :
   
   * dans le groupe Source1, sélectionnez le calque :kbd:`femme qui marche` et juste en dessous, choisissez la couche :kbd:`transparence`
   * dans le groupe Source2, sélectionnez le même calque, et laisser le rouge comme couche.
   * Sélectionnez un mode fusion :kbd:`Normal`
   * cliquez sur :kbd:`OK`.

* Dans la palette des couches (sélectionnez l'onglet à coté de l'onglet des calques) de la , il y a une nouvelle couche dénommée :kbd:`Alpha 1`. cliquez sur la couche RVB pour faire réapparaître l'image normale.



* Aplatissez l'image : faites apparaître le panneau des calques. Faites un clic droit dessus et cliquez sur :kbd:`aplatir l'image` (im 32). N'oubliez pas de remplir le calque de fond avec une couleur blanche! (clic sur le calque :kbd:`fond`, :kbd:`D` pour les couleurs par défaut, puis :kbd:`Ctrl+Retour arrière` pour remplir le calque avec la couleur d'arrière-plan)



Pour rogner automatiquement les pixels autour de la bordure de l'image :
   
* sélectionnez le menu :menuselection:`Image --> Rognage`.
* Cliquez sur le bouton :kbd:`pixel supérieur gauche` laissez le reste inchangé et cliquez sur :kbd:`OK`.

* La dernière étape consiste à enregistrer l'image dans un format de fichier qui intègre la couche alpha. Choisissez le format :file:`*.tiff` et vérifiez que couche alpha est cochée dans les options. Dans les options, choisissez LZW dans le mode de compression.
* Vous pouvez choisir un format alternatif comme le :file:`*.png`, si vous désirez "alléger" cette image


Réutilisez votre travail
---------------------------

Ce que vous venez de réaliser représente une somme considérable de travail ... pour un seul personnage! Imaginez la quantité de travail nécéssaire pour une foule!

Il est bon de se créer une *bibliothèque* de ces personnages/objets détourés *avec canal alpha* et de l'organiser calirement pour une réutilisation aisée : idéalement, placez ce travail dans un dossier réseau, avec des droit de lecture pour tous et d'écriture/lecture pour l'administrateur. Il y aura donc une seule personne capable d'ajouter d'éditer la bibliothèque, c'est plus sûr!

Achetez celui des autres
---------------------------

Vous vous doutez bien que des petits malins y ont pensé avant vous!

Si votre patron est prêt à investir, n'hésitez pas à lui faire la comparaison entre coût d'achat produit externe / temps de travail interne en lui faisant visiter des sites web comme :

* Images libres de droits (gratuites?)
      - http://www.all-free-photos.com/fr/main-fr.php
      - http://pdphoto.org/
      - http://www.photo-libre.fr/index.html
      - http://gimp-savvy.com/PHOTO-ARCHIVE/
      - http://www.flickr.com/
      - http://browse.deviantart.com/collections/
      - http://www.sxc.hu/
      - http://www.freefoto.com/index.jsp
      - http://www.imagearc.com/imagearc.html
      - etc.

* payantes (couche alpha?)
      - http://fr.fotolia.com/
      - http://www.phovoir-images.com/
      - http://www.epictura.fr/
      - etc.

   