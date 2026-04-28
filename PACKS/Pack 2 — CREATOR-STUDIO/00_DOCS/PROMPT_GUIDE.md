# Prompt Guide — Creator

Guide de construction de prompts pour des projets reproductibles.  
Niveau Creator : vous maîtrisez les bases. Ce guide traite des situations plus complexes.

---

## 1. Repartir d'une référence sans la copier

### Le problème
Copier un style directement ("comme Bonobo") produit des résultats plats et souvent hors-cible.

### La méthode en 3 étapes

**Étape 1 — Décomposer la référence**  
Identifiez ce qui vous attire dans la référence : est-ce le BPM, la texture, l'espace, le mood, l'harmonie ?

**Étape 2 — Traduire en paramètres**

| Élément référence | Traduction prompt |
|------------------|------------------|
| Groove triphop lent de Bonobo | `slow groove, 82 BPM, off-beat percussion` |
| Pads atmosphériques de Jon Hopkins | `evolving pads, subtle modulation, wide stereo` |
| Basse chaleureuse de Khruangbin | `warm bass, reverb-drenched, melodic hook` |

**Étape 3 — Ajouter votre identité**  
Remplacez au moins 2 éléments par quelque chose qui n'est *pas* dans la référence. C'est là que votre son émerge.

---

## 2. Documenter une itération utile

### Ce qui doit être noté (minimum)

```
v[X] — [Date]
Changement : [ce que j'ai modifié]
Résultat : [ce qui s'est passé]
Décision : ✅ gardé / ❌ rejeté / 🔄 à retester
```

### Ce qui rend une itération utile vs inutile

| Itération utile | Itération inutile |
|----------------|------------------|
| Change un seul paramètre | Change tout d'un coup |
| Note ce qui a changé | "Essai 2" sans explication |
| Évalue selon le brief | "C'est mieux je crois" |
| Décision documentée | Fichier abandonné |

### Règle Creator : une hypothèse par génération

Avant de générer : "Je change X pour obtenir Y."  
Après : noter si Y s'est produit. Sinon, comprendre pourquoi.

Voir `01_PROJECT_TEMPLATE/06_ITERATIONS.md` pour le template.

---

## 3. Quand simplifier plutôt qu'ajouter

### Le signal d'alarme

Si votre résultat est **générique ou incohérent**, le problème n'est généralement pas un manque de détails — c'est un excès.

### Diagnostique rapide

| Symptôme | Action |
|---------|--------|
| Résultat générique | Retirer les styles généraux, garder un seul sous-genre précis |
| Genre shift à mi-morceau | Supprimer les mots-clés qui tirent vers un autre genre |
| Mood contradictoire | Garder 1 mot de mood max, retirer les adjectifs de qualité |
| Résultat "propre mais vide" | Ajouter UN seul élément foreground (mélodie, groove, voix) |

### Règle des 5

Un prompt Creator efficace tient en **5 éléments** :
1. Sous-genre précis
2. Texture dominante
3. Mood
4. BPM ou tempo feel
5. Note vocale

Tout le reste est optionnel. Ajoutez un élément à la fois si le résultat manque de quelque chose.

---

## 4. Gérer les projets multi-tracks

Chaque track générée isolément peut sonner bien mais l'ensemble d'un EP est incohérent.

**Solution : le prompt anchor**  
Définissez 1 prompt de référence pour tout le projet dans `01_PROJECT_TEMPLATE/05_PROMPTS.md`.  
Chaque nouvelle track part de ce prompt anchor avec **une seule variable modifiée** (BPM, mood, texture) pour créer de la variation sans perdre l'identité.

---

## 5. Checklist rapide avant chaque génération

- [ ] Brief du projet relu (voir `01_BRIEF.md`)
- [ ] Différence avec l'itération précédente clairement définie
- [ ] Un seul changement planifié
- [ ] Résultat noté dans `06_ITERATIONS.md` après génération

Voir aussi : `PROMPT_CHECKLIST.md` pour la version complète.