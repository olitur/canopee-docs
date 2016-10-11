.. _faq-acad:

FAQ AutoCAD
===========

.. sectionauthor:: olivier Turlier

C'est la liste de la "Foire aux questions" concernant les logiciels de dessin Sketchup et AutoCAD

Comment faire pour ...
----------------------

... imprimer à l'échelle?
	connaitre l'unité de dessin : on a "pensé" en mètre, centimètre : il suffit de coter un élément, soit il fait 2,48, soit 248
	appliquer un facteur d'échelle:
            dans le cas du mètre : 1000 (nombre de mm corrrespondant à 1 mètre) divisé par échelle souhaitée (exprimée en nombre entier)
            ex :  1000/50 pour obtenir un dessin au 1/50e (1000/50= 20 --> "facteur d'échelle")
            vous pouvez rentrer ces valeurs en ligne de commande :
               en espace-papier, double-clic sur la fenêtre : vous passez en espace objet.
               ligne de commande : z +  entrée, puis soit 1000/50xp, soit 20xp + entrée
            ou directement dans la barre d'outil "fenêtre"

