# Prompt Checklist — PRO

Checklist complète à valider avant chaque génération et avant chaque release.  
Pensée pour des workflows multi-projets avec cohérence stylistique garantie.

---

## ✅ Pré-génération — Brief & contexte

- [ ] Le brief projet est rédigé dans `01_PROJECT_TEMPLATE_PRO/README.md`
- [ ] Le genre cible est défini avec au moins 2 références (artiste ou track)
- [ ] Le BPM cible est fixé (ou une plage : ex. 118–122)
- [ ] L'usage final est clair : sync, playlist, EP, social, démo
- [ ] Longueur du prompt adaptée à l'outil : 60–90 car. (Suno v3), jusqu'à 200 car. (Suno v4/Udio) — voir `SUNO_PROMPTING_NOTES.md`

---

## ✅ Construction du prompt

- [ ] Style cluster défini (3–5 mots-clés genre/sous-genre)
- [ ] Mood cluster défini (2–3 mots émotionnels stables)
- [ ] Atmospheric layer présent (reverb, space, texture)
- [ ] Structure indiquée si l'outil la supporte (intro / verse / drop / outro)
- [ ] Vocal note ajoutée si nécessaire : "no vocals", "female vocal", "spoken word only"
- [ ] Contraintes négatives notées si pertinentes : "no guitar", "avoid tropical house clichés"

---

## ✅ Cohérence catalogue / projet en cours

- [ ] Ce prompt est compatible stylistiquement avec les autres tracks du projet
- [ ] Les mots-clés sont cohérents avec le `STYLE_TAXONOMY_ADVANCED.md` du projet
- [ ] Aucune contradiction avec une direction artistique définie précédemment
- [ ] Si nouvelle direction → créer une branche projet séparée, ne pas écraser

---

## ✅ Convention de versioning

- [ ] Nommage conforme : `[PROJECT]_[STYLE]_v[XY]_[description]` (voir `NAMING_VERSIONING_STANDARD.md`)
- [ ] Numéro de version incrémenté correctement (pas de doublons)
- [ ] Entrée créée dans `ITERATION_LOG.md` avant de générer
- [ ] Fichier audio exporté avec nom identique au prompt versionnisé

---

## ✅ Post-génération — Évaluation

- [ ] Écoute complète effectuée (pas seulement les 10 premières secondes)
- [ ] Résultat documenté dans `ITERATION_LOG.md` (✅ / ❌ / 🔄)
- [ ] Points de divergence stylistique notés
- [ ] Si ❌ : hypothèse de correction documentée avant prochaine génération

---

## ✅ Gate release — Avant export définitif

- [ ] Version validée notée `v1.0` dans le log
- [ ] Brief initial relu : le résultat y répond
- [ ] Métadonnées complètes : BPM, key, genre, mood tags, durée
- [ ] Destination release documentée : plateforme(s) cible(s), date prévue
- [ ] Fichier archivé dans `01_PROJECT_TEMPLATE_PRO/` avec structure complète
- [ ] Si release publique → consulter `RELEASE_WORKFLOW.md`

---

## ⚡ Version express (5 min)

Pour les itérations rapides, valider a minima :

1. Style cluster + mood définis ✅
2. Vocal note présente ✅
3. Versioning noté dans le log ✅
4. Résultat évalué et documenté ✅
