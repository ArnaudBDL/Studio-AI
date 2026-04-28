# Prompt Guide - Pro

Guide operationnel pour produire des prompts robustes, reproductibles et alignes sur un standard studio.

## 1) Objectif du guide

- Obtenir une qualite constante sur plusieurs projets.
- Limiter les iterations inutiles grace a un cadrage plus strict.
- Conserver une identite sonore sans copier de reference.

## 2) Structure de prompt recommandee

Utiliser cet ordre, sans sauter d'etape:

1. Contexte et intention (style, mood, usage final)
2. Contraintes techniques (BPM, duree, structure)
3. Signature artistique (motif, texture, dynamique)
4. Exclusions (ce qu'il faut eviter explicitement)
5. Critere de succes (ce qui valide la sortie)

Modele court:

"Create a [genre/style] track with [mood/atmosphere], target [BPM] and [duration]. Structure: [sections]. Signature: [motif + texture]. Avoid: [x, y, z]. Success criteria: [impact, clarity, memorability]."

## 3) Standard qualite Pro

Un prompt Pro doit contenir:

- Un cap energetique (ex: moyenne 7/10, peak 9/10)
- Une architecture temporelle (intro/build/peak/break/outro)
- Une politique d'exclusions claire
- Une condition de lisibilite mix (kick/bass, highs)
- Une cible d'usage (streaming, DJ set, sync, etc.)

## 4) Iteration protocol (v1 -> vN)

Regle de base: 1 iteration = 1 hypothese.

Pour chaque version, documenter:

- Prompt utilise
- Resultat observe (forces/faiblesses)
- Cause probable du defaut
- Correction precise a injecter

Eviter les corrections vagues comme "make it better".

## 5) Anti-patterns a eviter

- Prompt trop large sans contraintes
- Empilement de references contradictoires
- Exclusions absentes ou ambiguës
- Sur-precision sterile qui bloque la creativite
- Changer plusieurs variables a la fois en debug

## 6) Controle avant export

- Le prompt final est lisible en moins de 30 secondes
- Les contraintes majeures sont testables a l'ecoute
- Les exclusions couvrent les derives connues
- Le nommage version est conforme au standard projet

## 7) Definition of done (Prompt)

Le prompt est "done" quand:

- Il produit 2 sorties consecutives acceptables
- Les defauts restants sont mineurs et predictibles
- La trajectoire d'energie est coherente
- La signature artistique est reconnaissable