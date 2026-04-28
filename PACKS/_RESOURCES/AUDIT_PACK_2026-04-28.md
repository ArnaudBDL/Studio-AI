# Audit PACKS — 28 avril 2026

**Cadrage complet** : État, gaps, plan d'exécution et priorités.

---

## Vue d'ensemble

| Pack | État | Statut | Actions critiques |
|------|------|--------|------------------|
| **Pack 0 — FREE** | ✅ Complet | Production | — |
| **Pack 1 — STARTER** | ✅ Complet | Production | Vérifier liens externes |
| **Pack 2 — CREATOR-STUDIO** | ⚠️ 60% | En développement | **Mini-cases (6) + Library (30-60 blocs)** |
| **Pack 3 — PRO-PREMIUM** | ⚠️ 40% | Squelette | **Template pro + Deep cases (2) + Taxonomie** |

---

## P0 — Crédibilité & Cohérence (URGENT)

### 1. Liens internes cassés

**Problème** : Ancres markdown `[Pack X](#pack-x--...)` ne fonctionnent pas entre fichiers.

**Fichiers affectés** :
- `PACKS/Pack 0 — FREE/README.md:L29` → lien vers Pack 1
- `PACKS/Pack 1 — STARTER/README.md:L35` → lien vers Pack 2  
- `PACKS/Pack 2 — CREATOR-STUDIO/README.md:L22` → lien vers Pack 3

**Solution** : Remplacer par liens relatifs directs
```markdown
# Avant
[Pack 1 — STARTER](#pack-1--starter)

# Après
[Pack 1 — STARTER](../../Pack%201%20—%20STARTER/README.md)
```

---

### 2. Références de docs non disponibles

**Problème** : Pack 2 README cite `DEBUG_PLAYBOOK` et `NAMING_VERSIONING_STANDARD` qui n'existent que en Pack 3.

**Fichiers affectés** :
- `PACKS/Pack 2 — CREATOR-STUDIO/README.md:L43-44`

**Solution** : Retirer ces références OU ajouter un disclaimer
```markdown
Note: Ces éléments sont disponibles dans Pack 3 (PRO-PREMIUM).
```

---

### 3. Pricing — Source de vérité unique

**Problème** : Deux sources de vérité tarifaire.

**Actuellement** :
- `PACKS/_RESOURCES/ROADMAP/PLAN.md` : pricing 9/19-49/79-149 (hypothétique)
- README clients : pricing 39/99/249 (réel)

**Solution** : Décider source unique + mettre à jour ROADMAP
```markdown
# À définir
PACKS/_RESOURCES/BUSINESS_MODEL.md dit $39 / $99 / $249
→ Utiliser cette source pour ROADMAP aussi
```

---

## P1 — Contenu manquant (PRODUCTION)

### Pack 2 — CREATOR-STUDIO

#### 1.1 Mini-cases (6 docs)

**Emplacement** : `PACKS/Pack 2 — CREATOR-STUDIO/03_EXAMPLES_MINI_CASES/`

**État** : Placeholders (`[to fill]`)

**Format à produire** :
```markdown
# Case NN — [Nom du genre/style]

## Brief
[Description courte de l'objectif]

## Prompt v1
[Prompt initial]

## Problème observé
[Symptôme : trop plat / trop agressif / pas assez structure / etc.]

## Prompt v2 (correction)
[Prompt révisé]

## Résultat attendu
[Validation du correctif]
```

**Quota** : 6 cas × 1 page ≈ 6-8 pages total
**Genres recommandés** : ambient, synthwave, alt-rock, cinematic, lofi, house

---

#### 1.2 Prompt Library (30-60 blocs)

**Emplacement** : `PACKS/Pack 2 — CREATOR-STUDIO/02_PROMPT_LIBRARY/`

**État** : README d'intention seulement

**Sous-dossiers** :
- `style/` — blocs de style (synthwave, ambient, orchestral, etc.)
- `structure/` — blocs d'évolution (build, drop, minimal, etc.)
- `mood_atmos/` — blocs mood/atmos (melancholic, energetic, etc.)
- `lyrics/` — blocs tone/POV lyrics (conversational, poetic, etc.)
- `constraints/` — blocs contraintes (no synth, instrumental only, etc.)

**Format par bloc** :
```markdown
# Style: Ambient

**Description** : Atmosphère spacieuse, texture cristalline, tension minimale.

**Mots-clés stables** :
- ethereal, vast, minimal, transcendent

**Erreurs à éviter** :
- Trop de batterie → devient ambient-house
- Pad trop brillant → perd la chaleur

**Exemple de bloc** :
"vast and ethereal soundscape, minimal rhythm, crystalline texture"
```

**Quota** : 30-60 blocs (6-12 par famille)

---

### Pack 3 — PRO-PREMIUM

#### 2.1 Project Template Pro

**Emplacement** : `PACKS/Pack 3 — PRO-PREMIUM/01_PROJECT_TEMPLATE_PRO/`

**État** : Placeholder (1 ligne "à compléter")

**À produire** : 7 fichiers model + README d'usage

```
01_PROJECT_TEMPLATE_PRO/
├─ README.md (mode d'emploi)
├─ 01_BRIEF.md (template brief complet)
├─ 02_REFERENCES.md (template analyse refs)
├─ 03_ARBITRAGES.md (template décisions)
├─ 04_LYRICS.md (template lyrics + variations)
├─ 05_PROMPTS.md (template prompts + variantes)
├─ 06_ITERATIONS.md (template iteration log pro)
└─ 07_EXPORT.md (template export + metadata + tagging)
```

**Chaque template** : sections annotées + exemples d'usage

---

#### 2.2 Deep Case Studies (2 à 3 cas complets)

**Emplacement** : `PACKS/Pack 3 — PRO-PREMIUM/03_DEEP_CASE_STUDIES/`

**État** : 3 dossiers vides avec README "à inclure"

**Format par deep case** :

```
deep_case_NN_full_pipeline/
├─ README.md (introduction)
├─ 01_BRIEF.md (brief initial complet)
├─ 02_REFERENCES.md (morceaux ref analysés)
├─ 03_ARBITRAGES.md (décisions créatives)
├─ 04_PROMPTS_v1_v2_v3.md (évolution prompts)
├─ 05_POST_MORTEM.md (analyse rétrospective)
├─ 06_FINAL_PROMPT.md (prompt sélectionné final)
└─ 07_RELEASE_CHECKLIST.md (validation pre-export)
```

**Chaque case** : 15-20 pages, A→Z, décisions documentées

**Quota** : Minimum 2 cas complets

---

#### 2.3 Style Taxonomy Advanced

**Emplacement** : `PACKS/Pack 3 — PRO-PREMIUM/00_DOCS/STYLE_TAXONOMY_ADVANCED.md`

**État** : Template vide (5 lignes)

**À produire** : 4 genres complets min (ambient, synthwave, cinematic, alt-rock)

**Format par genre** :

```markdown
## AMBIENT

### Stable descriptors (faible risque)
- ethereal, vast, minimal, transcendent, spacious

### Risky descriptors (surveillance requise)
- "relaxing" (peut → ambient-pur, plat)
- "chill" seul (peut → lo-fi, dérive)

### Typical structure
intro → slow evolution → sustained hold → fade

### Typical instrumentation
- Pads longs (strings, keys)
- Minimal percussion
- Texture/texture (rain, wind, nature)

### Common mistakes & fixes
| Erreur | Cause | Correction |
|--------|-------|-----------|
| Trop plat | Pas d'arche | Ajouter lente montée |
| Trop bruyant | Pad trop brillant | Ajouter "warm", "lo-fi" |
```

**Quota** : 4 genres × 1 page = ~4-5 pages

---

#### 2.4 Release Workflow

**Emplacement** : `PACKS/Pack 3 — PRO-PREMIUM/00_DOCS/RELEASE_WORKFLOW.md`

**État** : 6 lignes seulement

**À produire** : Workflow complet avec checklist

```markdown
## Release Workflow Pro

### 1. Selection & Validation
- [ ] Version finale identifiée (RC1 → FINAL)
- [ ] Brief vs generation : cohérence OK
- [ ] Critères d'acceptation validés

### 2. Export Setup
- [ ] Naming convention appliquée
- [ ] Metadata (ISRC, tags, credits) complétée
- [ ] Export format/qualité (WAV 24-bit, MP3 320kbps)

### 3. Archivage Prompts
- [ ] Dossier projet archivé (structure + tous prompts)
- [ ] Notation final version (v01, v02, RC1, FINAL)
- [ ] Tag: studio, date, tool, status

### 4. Distribution Metadata
- [ ] Titre, artiste, album
- [ ] Genre, mood, tags Spotify
- [ ] Release date
- [ ] Credits complets (producteur, feat, IA tool utilisé)

### 5. Post-Release KPI
- [ ] Tracking en place (Spotify Analytics, etc.)
- [ ] Feedback curateurs/radio attendu
- [ ] Next release planifié
```

**Quota** : 15-20 points structurés

---

## P2 — Différenciation & Harmonisation (POST-P1)

### AI_STUDIO_GUIDES — Segmentation par niveau

**Actuellement** : Structure identique dans tous les packs (5 studios top + 26 complets)

**À faire** : Garder structure, ajouter contexte différent

| Pack | Section "Par où commencer" | Ajout contexte |
|------|---------------------------|---|
| **Pack 0** | 5 studios top | "Choisis vite — vitesse priorité" |
| **Pack 1** | 5 studios top | "Comprendre coûts/bénéfices" |
| **Pack 2** | 5 studios top | "Workflow per studio (Suno vs Udio patterns)" |
| **Pack 3** | 5 studios top | "Arbitrage coût/qualité/risque en pipeline pro" |

**Action** : Modifier INDEX.md per pack (80-100 mots addition per contexte)

---

### Standards éditoriaux

- [ ] Langue : décider FR strict ou FR+EN bilingual
- [ ] Voice : cohérent vs variables per pack level
- [ ] Checklist avant publication

---

## Chronologie d'exécution recommandée

### **Sprint 1 (rapide — 1-2 jours)** → P0
1. Fixer liens README cassés (3 fichiers)
2. Clarifier références Pack 2 (1 fichier)
3. Décider pricing unique + mettre à jour ROADMAP (2 fichiers)
→ **Sortie** : PACKS fiables en terme de crédibilité

### **Sprint 2 (contenu Pack 2 — 2 semaines)** → P1 première moitié
1. Produire 6 mini-cases (format standardisé)
2. Produire 30-60 blocs library (5 familles)
→ **Sortie** : Pack 2 complet = valeur ajoutée palpable

### **Sprint 3 (contenu Pack 3 — 4 semaines)** → P1 seconde moitié
1. Produire template pro (7 fichiers + README)
2. Produire 2 deep cases (A→Z)
3. Produire taxonomie avancée (4 genres)
4. Détailler release workflow
→ **Sortie** : Pack 3 = justification du premium pricing

### **Sprint 4+ (P2 — optionnel)** → Différenciation fine
1. Segmenter AI_STUDIO_GUIDES per pack
2. Harmoniser standards éditoriaux

---

## Prochaines étapes

- [ ] **Valider** ce plan avec l'équipe
- [ ] **Classer** : P0 urgent (crédibilité) vs P1 production (valeur) vs P2 polish
- [ ] **Sequencer** : Sprint 1 → Sprint 2 → Sprint 3
- [ ] **Tracker** : Marquer progression à chaque tour

---

**Date du cadrage** : 28 avril 2026  
**Statut** : Plan validé, prêt exécution
