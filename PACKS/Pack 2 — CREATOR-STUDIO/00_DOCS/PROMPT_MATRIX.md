# Prompt Matrix — Creator

Matrice de décision pour construire ou ajuster un prompt selon les objectifs du projet.  
Utiliser en complément du `PROMPT_GUIDE.md` pour les choix complexes.

---

## Matrice Genre × Mood × Texture

| Genre | Mood recommandé | Texture clé | BPM indicatif |
|-------|----------------|-------------|--------------|
| Lo-fi hip-hop | nostalgique, relaxed | vinyl crackle, dusty sample | 80–90 |
| Deep house | sensuel, hypnotique | warm bass, chord stabs | 120–125 |
| Ambient | introspectif, vaste | slow pads, sparse melody | 60–80 |
| Synthwave | nostalgique, cinématique | analog synth, gated drums | 96–105 |
| Techno | tendu, hypnotique | kick drive, industrial texture | 128–135 |
| Trip-hop | mélancolique, sombre | heavy beat, minor key | 85–95 |
| Afro house | terreux, spirituel | tribal percussion, organic | 122–126 |
| Orchestral | épique, tendu | strings, brass, silence | 60–110 |

---

## Axe : Densité de hook

La densité de hook définit à quel point une mélodie ou un élément "reste en tête".

| Densité | Usage | Mots-clés prompt |
|---------|-------|-----------------|
| Faible | Ambient, background music, sync | `atmospheric`, `no clear melody`, `textural` |
| Moyenne | Playlist, EP indé, démo | `melodic motif`, `subtle hook`, `recurring theme` |
| Forte | Single commercial, social media | `catchy hook`, `memorable melody`, `earworm` |

**Attention** : "catchy" + genre dark = résultat hybride incohérent. Cohérence densité/genre obligatoire.

---

## Axe : Contraste entre sections

| Niveau contraste | Description | Prompt hint |
|-----------------|-------------|-------------|
| Minimal | Pas de drop ou break marqué | `continuous groove`, `no break` |
| Modéré | Variation texture ou densité entre verse/chorus | `build and release`, `subtle drop` |
| Fort | Drop ou break très marqué | `hard drop`, `full break at 1:00`, `energy shift` |

---

## Axe : Foreground element

Un foreground element est l'élément qui capte l'attention en premier. Un seul par track.

| Type | Exemples | Mots-clés prompt |
|------|---------|-----------------|
| Rythmique | Groove, percussion groove | `driving rhythm`, `syncopated beat`, `polyrhythmic` |
| Mélodique | Mélodie lead, motif récurrent | `melodic lead`, `recurring motif`, `piano hook` |
| Textural | Pad, nappe, son ambiant | `evolving pad`, `texture lead`, `granular sweep` |
| Vocal | Voix lead, sample vocal | `female vocal hook`, `spoken word`, `vocal chop` |
| Basse | Bassline lead | `melodic bassline`, `bass hook`, `sub melody` |

---

## Axe : Niveau de polish

| Niveau | Usage | Approche prompt |
|--------|-------|----------------|
| Raw / lo-fi | Démo, expérimentation | `raw texture`, `unpolished`, `lo-fi aesthetic` |
| Semi-pro | EP indé, playlist mid-tier | Prompt neutre — éviter "raw" et "polished" |
| Release-ready | Sync, single, plateforme pro | `clean mix`, `professional production`, `mastered feel` |

---

## Matrice de décision rapide

**Situation → Axe à ajuster en priorité**

| Situation | Axe prioritaire | Action |
|-----------|----------------|--------|
| Résultat trop générique | Genre | Préciser le sous-genre |
| Résultat sans identité | Foreground element | Ajouter UN élément foreground |
| Résultat incohérent | Mood + Texture | Réduire à 1 mood + 1 texture |
| Résultat trop pop | Densité de hook | Passer à densité faible/moyenne |
| Pas d'impact au drop | Contraste | Augmenter le contraste sections |
| Résultat trop "produit" | Polish | Ajouter `raw texture` ou `lo-fi aesthetic` |