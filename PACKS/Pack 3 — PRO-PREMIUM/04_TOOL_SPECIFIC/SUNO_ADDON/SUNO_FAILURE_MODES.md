# Suno — Failure Modes & Corrections

Table de référence : symptôme observé → cause probable → correction de prompt.  
Basé sur des tests répétés avec Suno v3 / v3.5 / v4.

---

## Table des modes d'échec fréquents

| Symptôme | Cause probable | Correction |
|----------|---------------|------------|
| Vocal inattendu sur un track instrumental | "no vocals" absent ou mal placé | Ajouter `no vocals` en fin de prompt, ou préfixe `[Instrumental]` |
| Genre shift à mi-morceau (ex. techno → pop) | Mots-clés contradictoires dans le prompt | Supprimer les mots ambigus (ex. "catchy", "radio-friendly") |
| BPM instable / groove flottant | Pas de référence tempo explicite | Ajouter `[BPM: 128]` ou "steady 128 BPM groove" |
| Outro qui s'arrête brusquement | Structure non spécifiée | Ajouter "fade out over 8 bars" ou `[outro: slow fade]` |
| Résultat trop générique / "stock music" | Prompt trop court ou trop vague | Ajouter au moins 3 descripteurs texturaux spécifiques |
| Overcompression / saturation numérique | Empilement excessif de mots-clés énergétiques | Réduire à 5–7 mots-clés max, retirer "massive", "huge", "epic" si non voulu |
| Voix hors-sujet (mauvaise langue / accent) | Langue non spécifiée | Ajouter `French vocals` ou `English lyrics only` |
| Répétition de boucle (loop apparent) | Structure trop courte ou pas de variation indiquée | Ajouter `with build` ou spécifier `verse / chorus / bridge` |
| Drop inexistant sur un track club | "drop" absent du prompt ou outil en mode ambient par défaut | Ajouter `hard drop at 1:00`, `[drop: heavy bass]` |
| Morceau trop court (< 1 min) | Suno tronque parfois sur certains styles | Ajouter `full track 3 minutes` ou relancer avec `[extend]` |
| Artefacts vocaux (glitch, déformation) | Conflit style + vocal dans le même prompt | Séparer en deux générations : instru d'abord, vocal adapté ensuite |
| Résultat trop "Suno-sounding" | Absence de références stylistiques précises | Ajouter des sub-genres précis : "nu-disco", "acid house", "gqom", "afrobeats agbadza" |

---

## Cas avancés

### Cas 1 — Le prompt fonctionne une fois mais pas la suivante

**Symptôme** : Même prompt, résultats très différents à chaque relance.  
**Cause** : Suno a une forte variance stochastique par design.  
**Approche pro** :
- Fixer un `seed` si l'interface le permet (Suno v4+)
- Générer 4–6 variantes, sélectionner la meilleure
- Documenter le prompt *exact* + résultat retenu dans `ITERATION_LOG.md`

---

### Cas 2 — Résultat correct mais inutilisable en sync

**Symptôme** : Bonne énergie, mais artefacts qui bloquent la licence sync.  
**Cause** : Suno génère des "fantômes" vocaux ou des samples reconnaissables.  
**Approche pro** :
- Vérifier avec un outil de détection de sample (ex. Shazam, ACRCloud)
- Regenerate avec prompt "original composition only, no sampled elements"
- Ou traiter en post (pitchshift, EQ) pour effacer les artefacts

---

## Mots à éviter (déclencheurs d'échec fréquents)

| Mot | Problème |
|-----|---------|
| `epic` | Déclenche orchestral non voulu |
| `perfect` | Aucun effet, Suno l'ignore |
| `trap beats` | Trop large → résultat générique |
| `viral` | Biais vers pop commerciale |
| `chill` seul | Sans contexte = lo-fi basique par défaut |
| `fast` | Interprété différemment selon le genre |

---

## Voir aussi

- [SUNO_STYLE_KEYWORDS.md](SUNO_STYLE_KEYWORDS.md) — Mots-clés qui fonctionnent
- [SUNO_PROMPTING_NOTES.md](SUNO_PROMPTING_NOTES.md) — Comportements spécifiques
- [SUNO_PROMPT_TEMPLATES.md](SUNO_PROMPT_TEMPLATES.md) — Templates testés par genre
