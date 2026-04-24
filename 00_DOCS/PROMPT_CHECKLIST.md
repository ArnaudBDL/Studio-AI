# Prompt Checklist – AI Music Studio

This checklist must be reviewed before each AI music generation.
It ensures clarity, consistency, and controlled creativity.

Use it as a go/no-go validation tool.



## ✅ 1. Intention & Brief

*   [ ] Ai-je une **intention claire en une phrase** ?
*   [ ] Le morceau a-t-il un **usage identifié** (album, background, expérimental…) ?
*   [ ] Le niveau d’abstraction est-il volontaire (pas flou par accident) ?
*   [ ] Suis-je aligné avec le `01_BRIEF.md` du projet ?



## ✅ 2. Style & Genre

*   [ ] Le style est-il exprimé par **clusters de genres** (pas un seul mot isolé) ?
*   [ ] Ai-je évité les **sous-genres trop obscurs** ?
*   [ ] Ai-je limité la liste à **5–7 termes max** ?
*   [ ] Le style est-il cohérent avec l’intention ?

Exemple valide :

```txt
ambient, cinematic, space-inspired, experimental
```



## ✅ 3. Mood vs Atmosphere (ne pas confondre)

*   [ ] Le **mood (émotion)** est explicitement défini ?
*   [ ] L’**atmosphere (environnement sonore)** est clairement décrite ?
*   [ ] Y a-t-il une **contradiction non intentionnelle** ?

Exemple :

```txt
Mood: melancholic, introspective
Atmosphere: vast, ethereal, lonely
```



## ✅ 4. Structure & Évolution

*   [ ] Ai-je décrit **l’évolution dans le temps** ?
*   [ ] La structure est-elle compréhensible sans théorie musicale ?
*   [ ] Ai-je évité les termes trop techniques inutiles pour l’IA ?

Bon exemples :

```txt
slow build with evolving textures
linear progression without chorus
multi-movement with abrupt transitions
```



## ✅ 5. Instrumentation & Texture

*   [ ] Ai-je décrit des **rôles sonores**, pas une liste exhaustive ?
*   [ ] Les textures sont-elles qualifiées (dense, minimal, wide…) ?
*   [ ] L’instrumentation soutient-elle le mood ?

Exemple :

```txt
warm synth pads, distant drones, minimal percussion
```



## ✅ 6. Vocals & Lyrics

*   [ ] La **présence vocale** est-elle explicitée ?
    *   none / sparse / dominant
*   [ ] Le **style lyrique** est-il décrit ?
*   [ ] Ai-je précisé *instrumental only* si nécessaire ?

Exemple :

```txt
Sparse whispered vocals, abstract fragmented lyrics, internal monologue
```



## ✅ 7. Contraintes & Exclusions

*   [ ] Ai-je listé les **éléments à éviter** ?
*   [ ] Les exclusions sont-elles **simples et peu nombreuses** ?
*   [ ] Ai-je évité les contraintes contradictoires ?

Exemple :

```txt
avoid upbeat rhythm
no pop chorus
no bright or cheerful tones
```

***

## ✅ 8. Charge & Équilibre du Prompt

*   [ ] Le prompt fait-il **moins de 120–150 mots** ?
*   [ ] Les informations cruciales sont-elles **en début** ?
*   [ ] Ai-je évité la sur-spécification ?

Règle :

> Trop détaillé = incohérent  
> Trop vague = générique

***

## ✅ 9. Vérification Sémantique (Glossary)

*   [ ] Les termes utilisés sont-ils **compatibles avec GLOSSARY.md** ?
*   [ ] Aucun mot n’a un sens ambigu non documenté ?
*   [ ] Mood ≠ Atmosphere respecté ?

***

## ✅ 10. Versioning & Documentation

*   [ ] Une **nouvelle iteration** est-elle justifiée ?
*   [ ] Le changement est-il consigné dans `06_ITERATIONS.md` ?
*   [ ] Le prompt final sera-t-il sauvegardé dans `05_PROMPTS.md` ?

Convention :

```txt
Prompt_v1_base
Prompt_v2_darker
Prompt_v3_no_vocals
```

***

## ✅ 11. Sanity Check final (Go / No-Go)

*   [ ] Puis-je expliquer le prompt **à l’oral en 20 secondes** ?
*   [ ] Le prompt exprime-t-il **un seul axe créatif principal** ?
*   [ ] Suis-je prêt à accepter **de la variation** ?

✅ **GO** → génération  
❌ **NO-GO** → simplifier / clarifier

***

## TL;DR

```md
One prompt = one intention
Less instructions = more coherence
Evolution > description
Documentation beats memory
```

***

## Related Documents

*   `GLOSSARY.md`
*   `PROMPT_GUIDE.md`
*   `PROMPT_LIBRARY/`
*   `02_PROJECTS/*/05_PROMPTS.md`

```

---

Si tu veux, prochaine brique logique :
- `PROMPT_MATRIX.md` (mood × structure × style)
- `ITERATION_LOG.md` ultra-compact
- ou un **script mental “debug de prompt”** après génération ratée
```
