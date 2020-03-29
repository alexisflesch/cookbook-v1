# A simple cookbook in LaTeX

Below is a screeshot of what you can do with this style file:

![screenshot](/files/canneles.png)

## Introduction

You can find here a class file to write a recipe book in LaTeX. It's a little bit less fancy than [this one](https://github.com/alexisflesch/cookbook-v2). It's inspired from [Maurizio Loreti's class](https://ctan.org/tex-archive/macros/latex/contrib/recipe/).

The recipe.sty class has been put in the public domain by it's author, that's why this modification of his work is also copy-left.

## An example

The syntax should be self-explanatory. An example:

```latex
\begin{nouvellerecette}
\recette{Cannelés bordelais}
\temps{15 minutes + 24 heures}{1 heure}

\ingredients[(pour 40 mini cannelés) ]{
\item 1/2 litre de lait
\item 1 pincée de sel
\item 2 œufs entiers et 2 jaunes
\item 1/2 gousse de vanille
\item 4 cuillères à soupe de rhum
\item 100g de farine
\item 250 g de sucre en poudre
\item 50g de beurre
}

Faire bouillir le lait avec la vanille et le beurre.
Pendant ce temps, mélanger la farine, le sucre puis incorporer les œufs d'un seul coup, verser
ensuite le lait bouillant.
Mélanger doucement afin d'obtenir une pâte fluide comme une pâte à crêpes, laisser refroidir, puis
ajouter le rhum. Placer au réfrigérateur 24 heures.

Préchauffer le four à 270\degrees .
Verser la pâte bien refroidie dans les moules, en les remplissant jusqu'à 3mm du bord. Disposer les
cannelés sur la grille du four pendant 5 minutes, puis baisser le thermostat à 180\degrees et
continuer la cuisson pendant 1 heure : le cannelé doit avoir une croûte brune et un intérieur bien
moelleux.

\attention{Si les cannelés se colorent trop rapidement, baisser le four à 150\degrees .}

\end{nouvellerecette}
```

You can download an archive containing my recipe book without the recipes (for copyrights reasons) in the folder **files**, except the one presented in this page. There should be enough info in this archive to understand how to add your own recipes.
