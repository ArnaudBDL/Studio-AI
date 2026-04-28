# Prompt Checklist — Creator

Checklist complète à valider avant chaque génération et avant chaque livraison de projet.  
Version Creator : au-dessus du Starter, conçue pour des workflows de projet structurés.

---

## ✅ Pré-génération — Brief & contexte

- [ ] Le brief du projet est rédigé dans `01_BRIEF.md`
- [ ] Le genre cible est défini avec au moins 1 référence (artiste ou track)
- [ ] L'usage final est clair : playlist, EP, sync, démo, social
- [ ] Le BPM ou le tempo feel est indiqué

---

## ✅ Construction du prompt

- [ ] Style cluster défini (sous-genre précis, pas juste "électronique")
- [ ] Mood défini (1–2 mots émotionnels)
- [ ] Texture sonore indiquée (au moins 1 élément : reverb, saturation, grain…)
- [ ] Note vocale présente : "no vocals", "female vocal", "instrumental"
- [ ] Prompt ≤ 7 éléments (règle des 5 + 2 optionnels max)

---

## ✅ Cohérence avec le projet en cours

- [ ] Le prompt est cohérent avec le brief de `01_BRIEF.md`
- [ ] Le prompt est distinct des itérations précédentes (voir `06_ITERATIONS.md`)
- [ ] Si multi-tracks : cohérence avec le prompt anchor défini dans `05_PROMPTS.md`
- [ ] Aucun mot-clé contradictoire (ex. "dark" + "euphoric" = confusion)

---

## ✅ Mesurabilité de l'itération

- [ ] Le changement prévu est clairement identifié ("je change X")
- [ ] L'effet attendu est formulé ("pour obtenir Y")
- [ ] Un seul paramètre changé par rapport à l'itération précédente
- [ ] Hypothèse notée dans `06_ITERATIONS.md` avant de générer

---

## ✅ Post-génération — Évaluation

- [ ] Écoute complète effectuée
- [ ] Résultat noté dans `06_ITERATIONS.md` (✅ / ❌ / 🔄)
- [ ] Points de divergence par rapport au brief notés
- [ ] Si ❌ : hypothèse de correction formulée avant la prochaine tentative

---

## ✅ Livraison / export

- [ ] Version finale nommée correctement : `[PROJET]_[STYLE]_v[X]_[DATE]`
- [ ] Métadonnées complètes : BPM, key, genre, durée
- [ ] Fichier noté dans `07_EXPORT.md` avec destination
- [ ] Arbitrages documentés dans `03_ARBITRAGES.md`

---

## ⚡ Version express (2 min)

Pour les itérations rapides :
1. Brief relu ✅
2. Un seul changement identifié ✅
3. Résultat noté après génération ✅