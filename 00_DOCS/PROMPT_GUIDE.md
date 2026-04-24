# Prompt Guide – AI Music Studio

This document defines how prompts are designed, structured, evaluated,
and versioned within this music studio.
It serves as a single source of truth for AI-assisted music creation
(e.g. Suno).

All prompts should follow these principles unless explicitly documented otherwise.



## 1. Philosophy of Prompting

- A prompt is a **creative constraint**, not a full specification.
- Ambiguity is intentional but controlled.
- Prompt clarity beats prompt length.
- The goal is **repeatability with variation**, not exact reproduction.

Principes clés :

*   ❌ décrire *tout*
*   ✅ décrire *l’intention dominante*
*   ✅ laisser l’IA résoudre les détails secondaires



## 2. Prompt Anatomy (structure standard)

A complete prompt is composed of optional but ordered layers:

1. Core Intent
2. Style & Genre
3. Mood & Atmosphere
4. Structure & Dynamics
5. Instrumentation / Texture
6. Vocals & Lyrics (if any)
7. Constraints / Exclusions

👉 **Ordre important** : les premières informations ont plus de poids.



## 3. Core Intent

```md
### Core Intent

Defines the primary purpose of the track.

Examples:
- background ambient exploration
- cinematic emotional arc
- experimental multi-part song
```

✅ 1 phrase  
✅ jamais technique  
❌ pas de références trop précises



## 4. Style & Genre

```md
### Style & Genre

Describes musical category and high-level influences.

Rules:
- Prefer genre clusters over single labels
- Avoid artist names when possible
```

Exemple :

```txt
ambient, cinematic, space-inspired, experimental
```

✅ mots simples  
✅ maximum 5–7 termes  
❌ sous-genres obscurs non compris par l’IA



## 5. Mood & Atmosphere

```md
### Mood & Atmosphere

Mood = emotional intent  
Atmosphere = sonic environment
```

Toujours les distinguer.

Exemple :

```txt
Mood: melancholic, introspective
Atmosphere: vast, ethereal, lonely
```

✅ adjectifs émotionnels  
✅ cohérence globale  
❌ émotions contradictoires sans intention claire



## 6. Structure & Dynamics

```md
### Structure & Dynamics

Describes how the track evolves over time.
This does NOT require formal music theory.
```

Exemples acceptés :

```txt
slow build with evolving textures
multi-movement with abrupt transitions
linear progression without chorus
```

✅ langage descriptif  
❌ "ABA form", "ii–V–I" (inutile pour Suno)



## 7. Instrumentation & Texture

```md
### Instrumentation & Texture

Focus on sound roles, not exhaustive lists.
```

Exemples :

```txt
warm synth pads, distant drones, minimal percussion
```

✅ fonctions sonores  
✅ adjectifs sensoriels  
❌ listes trop longues



## 8. Vocals & Lyrics

```md
### Vocals & Lyrics

Always specify:
- vocal presence (none / sparse / dominant)
- lyrical style
```

Exemples :

```txt
Sparse whispered vocals
Abstract, fragmented lyrics
Internal monologue
```

⚠️ Si non précisé → l’IA improvise



## 9. Constraints & Exclusions

```md
### Constraints & Exclusions

Used to prevent undesired outcomes.
```

Exemples :

```txt
no upbeat rhythm
no pop chorus
avoid bright or cheerful tones
```

✅ négations simples  
❌ trop de contraintes simultanées



## 10. Prompt Assembly Example

```md
## Example – Full Prompt

A dark ambient space track with a slow evolving structure,
cinematic and atmospheric,
melancholic and introspective mood,
minimal percussion, wide reverbs, deep textures,
sparse whispered vocals with abstract lyrics,
avoid rhythmic grooves and pop structures.



## 11. Prompt Versioning

```md
## Prompt Versioning

Each significant prompt change must create a new iteration.
```

Convention recommandée :

```txt
Prompt_v1_base
Prompt_v2_darker
Prompt_v3_no_vocals
```

✅ une modification = une version  
✅ notes dans `06_ITERATIONS.md`



## 12. Common Failures & Fixes

```md
## Common Failures

Prompt too generic
→ Add mood OR structure

Prompt too chaotic
→ Reduce genre count

Too similar generations
→ Modify structure or constraints

Unwanted vocals
→ Explicitly state "instrumental only"



## 13. Interaction With Other Documents

```md
## Related Documents

- Refer to GLOSSARY.md for term definitions
- Use PROMPT_LIBRARY/ as building blocks
- Final validated prompts belong in each project folder



## 14. Golden Rules (TL;DR)

```md
## Golden Rules

- One prompt = one intention
- Fewer words, higher signal
- Describe evolution, not mechanics
- Document all final prompts