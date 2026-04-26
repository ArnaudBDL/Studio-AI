# Lo-Fi Lounge — Fiche Prompt Pro
**Fichier** : `LOFI_LOUNGE_Prompt_v01_base`
**Date** : 2026-04-26
**Statut** : base / en iteration
**Destination release** : catalogue ambient/focus — possible sync (study, coffee, playlist editoriale)

---

## 1. Direction artistique

> Ambiance late-night café, lumière tamisée, légère mélancolie douce.
> Pas de drops, pas de tension narrative — une progression horizontale qui installe et maintient.
> Cible : écoute passive, concentration légère, travail créatif.

---

## 2. Style Taxonomy

| Axe | Valeur |
|-----|--------|
| Genre principal | Lo-fi hip-hop / lounge |
| Sous-genre | Jazzy lo-fi, café beats |
| Mood | Melancholic-warm, introspective |
| Énergie | Basse (2/5) |
| Dynamique | Plate, légères variations de texture seulement |
| Époque de référence | Années 90 jazz japonais, early 2000s chillhop |

**Descripteurs stables** (faible risque de dérive) :
- lo-fi, jazzy, warm, mellow, laid-back, nostalgic, soft

**Descripteurs risqués** (à surveiller — peuvent faire dériver vers hip-hop mainstream ou ambient pur) :
- "relaxing" → trop générique, souvent plat
- "chill" seul → peut générer trap ou EDM light
- "jazz" sans qualificatif → peut virer big band ou smooth jazz radio

---

## 3. Structure cible

```
[intro]       8-16 bars  — pose l'atmosphère, piano + vinyl crackle
[main loop A] 16-32 bars — groove établi, mélodie principale
[break]       8 bars     — retrait d'éléments, espace
[main loop B] 16-32 bars — retour avec variation légère (contremélodie ou pad)
[outro]       8-16 bars  — fade organique ou dissolution
```

> Pas de build, pas de drop. Transitions par soustraction/addition subtile, jamais par impact.

---

## 4. Instrumentation / Texture

| Couche | Description |
|--------|-------------|
| Rythme | Boom-bap léger, kick sourd, snare brushed, légèrement off-grid |
| Harmonie | Piano Rhodes ou upright piano — accord jazz (min7, maj9) |
| Mélodie | Guitare nylon ou vibraphone en lead, phrases courtes |
| Texture | Vinyl crackle, légère saturation tape, room ambiance |
| Basse | Contrebasse ou bass fretless, groove minimal |
| Pad (optionnel) | Strings très doux en arrière-plan, +8 dB en dessous du mix |

---

## 5. Prompt principal — format universel (Suno / Udio)

```
Lo-fi jazzy lounge beat, warm and melancholic, late-night café mood.
Soft boom-bap drums slightly off-grid, Rhodes piano with jazz voicings (minor 7th, major 9th),
nylon guitar melodic phrases, upright bass groove, vinyl crackle texture.
No build-up, no drop. Horizontal energy, subtle variations only.
Tempo: 75-85 BPM. Key: D minor or F major.
Mood: nostalgic, introspective, gentle.
Structure: intro — main loop — soft break — loop variation — fade outro.
```

### Variante Suno (balises style + lyrics off)
```
[style: lo-fi hip-hop, jazzy lounge, warm, melancholic, vintage]
[no lyrics]
[instruments: Rhodes piano, nylon guitar, upright bass, soft drums, vinyl crackle]
[mood: nostalgic, late-night, introspective]
[tempo: 78 BPM]
[structure: intro, main loop, break, variation, fade]
```

### Variante Udio (champ style + prompt libre)
```
Style: lo-fi, jazz, lounge, chillhop, vintage
Prompt: Warm late-night lo-fi jazz with Rhodes piano and nylon guitar. Soft brushed drums slightly
off-beat, upright bass, vinyl tape texture. Melancholic but gentle — no tension, no drop.
75-82 BPM, D minor.
```

---

## 6. Contraintes de génération

- [ ] Pas de voix / vocals (instrumental uniquement)
- [ ] Pas de basse synth moderne
- [ ] Pas de reverb excessive (risque ambient pur)
- [ ] Pas de hi-hat trap ou pattern 808
- [ ] Durée cible : 2:30 – 3:30

---

## 7. Iteration Log

### v01_base
- **Hypothèse testée** : le prompt standard produit une boucle lo-fi cohérente avec direction artistique
- **Critères d'acceptation** :
  - Tempo perçu dans la plage 75-85 BPM
  - Piano Rhodes reconnaissable
  - Pas d'élément trap ou EDM détecté
  - Vinyl texture audible
  - Pas de vocals
- **Candidature release** : non — iteration de base

### v02_darker *(à compléter après écoute v01)*
- **Hypothèse testée** : ajouter "minor, moody, dim atmosphere" renforce la mélancolie sans perdre le warmth
- **Critères d'acceptation** : -
- **Candidature release** : -

### RC1 *(à compléter si v02 valide)*
- **Critères RC** : instrumentation propre, durée > 2:00, aucun artefact majeur, export possible
- **Candidature release** : à évaluer

---

## 8. Debug Pré-mapping

| Symptôme observé | Cause probable | Correction prompt |
|-----------------|----------------|-------------------|
| Drums trop agressifs | "hip-hop" mal interprété | Ajouter "soft", "brushed", "gentle swing" |
| Piano trop brillant / moderne | Manque de contexte vintage | Ajouter "tape-saturated", "warm", "lo-fi recording" |
| Track trop ambient, sans groove | Trop peu de descripteurs rythmiques | Renforcer "boom-bap", "steady groove", "rhythmic" |
| Guitare absente, remplacée par synth | Conflit instrumentation | Préciser "acoustic nylon guitar", retirer pad si conflit |
| Vocals parasites | Outil a inféré chanson | Ajouter "[no lyrics]", "instrumental only", "no vocals" |
| Boucle trop courte (< 30s) | Structure pas lue | Utiliser balise `[structure]` explicite + reformuler |

---

## 9. Compatibilité catalogue

- **Genre cohérent avec** : ambient, cinematic, study beats, café playlists
- **Tags Spotify/editorial cibles** : lo-fi study, chill instrumentals, focus music, jazz café
- **Sync potentielle** : vidéo YouTube, podcasts, contenu éducatif, slow living content

---

## 10. Versioning

```
LOFI_LOUNGE_Prompt_v01_base      ← ce fichier
LOFI_LOUNGE_Prompt_v02_darker    ← après test v01
LOFI_LOUNGE_RC1                  ← version release candidate
LOFI_LOUNGE_FINAL                ← export sélectionné uniquement
```

> Règle Pro : ne jamais écraser une version validée. Suffixe = description du changement.
