# Deep Case 01 - Full Pipeline

## Contexte

Ce deep case montre un pipeline complet Pack 3: on part d'un brief flou, on formalise les references, on arbitre, on itere en plusieurs versions, puis on sort un prompt final pret pour production.

---

## 1) Brief Initial

### Objectif business
- Sortir un single electro club diffusable en DJ set et exploitable en distribution streaming.
- Positionnement: "energie nocturne premium" (pas festival agressif, pas pop radio).

### Objectif artistique
- Track hypnotique, dark, elegante, orientee dancefloor.
- Signature: groove stable, tension progressive, drop controle, sound design net.

### Contraintes
- Duree cible: 3:20 a 3:50.
- BPM cible: 124-126.
- Structure: intro DJ, build, peak, break, reprise, outro DJ.
- Pas de topline vocale dominante.
- Pas de virage big room/festival.

### KPI qualite
- Impact en 15 secondes (intro reconnaissable).
- Lisibilite basse/kick en systeme club + ecouteurs.
- 2 moments memorables minimum (hook texture ou motif).

---

## 2) References Analysees

### Reference A - House hypnotique minimal
- Ce qu'on veut garder: groove repetitif, sensation de transe, sobriete des elements.
- Ce qu'on evite: monotonie lineaire sans evolution macro.

### Reference B - Electro dark moderne
- Ce qu'on veut garder: design de basse agressif mais propre, tension harmonique.
- Ce qu'on evite: saturation permanente et durete fatiguante.

### Reference C - Club premium
- Ce qu'on veut garder: mix clair, transitoires nettes, spatialisation controlee.
- Ce qu'on evite: reverb trop large qui dilue l'impact.

### Traduction de references en directives
- Energie: 7/10 en moyenne, 9/10 au peak, jamais 10/10 en continu.
- Texture: dark, metallic-soft, analog warmth, no harsh highs.
- Rythme: 4-on-the-floor stable, micro-variations percussives.

---

## 3) Arbitrages

### Arbitrage 1 - Hypnotique vs Narratif
- Decision: priorite au cote hypnotique.
- Mise en oeuvre: moins de changements melodiques, plus de variations de texture.

### Arbitrage 2 - Dark vs Accessible
- Decision: dark controle, avec points de respiration.
- Mise en oeuvre: breaks plus aeres, haut medium adouci.

### Arbitrage 3 - Impact club vs Compatibilite streaming
- Decision: conserver l'impact kick/bass mais limiter l'agressivite globale.
- Mise en oeuvre: densite selective, dynamique plus ouverte sur les sections calmes.

### Arbitrage 4 - Originalite vs Stabilite de genre
- Decision: rester dans un cadre house/electro lisible.
- Mise en oeuvre: un motif signature, pas d'empilement d'idees experimentales.

---

## 4) Iterations Prompt (v1 -> v4)

## Prompt v1 (exploration)
"Dark hypnotic club track, 125 BPM, steady four-on-the-floor groove, deep bassline, minimal melodic content, progressive tension, clean modern mix, cinematic atmosphere, no vocals"

### Resultat observe
- Points forts: groove stable, intention dark bien presente.
- Defauts: trop generique, manque de signature, break faible.

### Decision
- Ajouter un motif identitaire et des indications plus strictes sur la dynamique des sections.

## Prompt v2 (structuration)
"Dark hypnotic electro-house at 125 BPM, club-oriented, with a distinctive repeating synth motif, intro for DJ mixing, gradual build, controlled peak, breathing breakdown, and a focused re-entry. Keep bass warm and punchy, avoid harsh highs, no big-room festival drops, no dominant vocals."

### Resultat observe
- Points forts: meilleure structure, intro/outro plus utiles.
- Defauts: peak encore trop proche d'un drop EDM, hats trop brillants.

### Decision
- Renforcer les exclusions explicites (EDM/festival/brightness), ajouter directives de texture.

## Prompt v3 (debug precis)
"Hypnotic dark electro-house, 125 BPM, elegant and premium club mood. Four-on-the-floor kick, warm sub-controlled bass, restrained percussion, and one memorable synth motif. Build tension with filtering and layering, not with aggressive risers. Breakdown must breathe with reduced density. Return with groove focus, not festival impact. No trap hats, no supersaw drop, no bright pop chorus, no over-compressed master."

### Resultat observe
- Points forts: beaucoup plus coherent, energie mieux calibree.
- Defauts: fin de track un peu longue, resolution melodique trop tardive.

### Decision
- Ajuster la duree cible et imposer une sortie plus concise.

## Prompt v4 (pre-final)
"Produce a dark, hypnotic electro-house track at 125 BPM (target length 3:30-3:45). Keep an elegant, premium club identity: tight kick, warm controlled bass, restrained percussive motion, and a signature repeating synth motif. Structure: DJ intro (16 bars), progressive build, controlled peak, airy breakdown, focused re-entry, concise DJ outro. Avoid festival EDM energy, bright piercing highs, trap hat rolls, and over-compression. Prioritize groove, clarity, and tension arcs over loudness."

### Resultat observe
- Points forts: version exploitable en set + streaming, coherence globale.
- Defauts residuels: leger surplus de densite sur la reprise finale.

### Action finale
- Micro-constraint ajoutee au prompt final sur l'espacement des couches en fin de morceau.

---

## 5) Post-Mortem

### Ce qui a fonctionne
- Les exclusions explicites ont corrige rapidement les derive EDM/festival.
- Le cadrage structurel (barres + sections) a fortement stabilise la sortie.
- Un seul motif signature a donne une meilleure memorisation.

### Ce qui a coute du temps
- V1 trop large: perte de temps sur une direction trop generique.
- Precision insuffisante sur la texture des hats et du haut du spectre.

### Lecons reproductibles
- Toujours fixer d'emblee: BPM, duree cible, architecture, exclusions.
- Pour les tracks club: decrire la trajectoire d'energie, pas seulement le style.
- Verrouiller les "no-go" avant la phase de polishing.

---

## 6) Prompt Final (production-ready)

"Create a premium dark hypnotic electro-house track at 125 BPM, target duration 3:30-3:45. The track must feel club-ready yet controlled: punchy four-on-the-floor kick, warm and tight bass, restrained percussive movement, and one distinctive repeating synth motif that anchors identity. Structure it for DJ usability: 16-bar intro, progressive layered build, controlled peak (no festival explosion), airy low-density breakdown, focused re-entry with groove priority, and concise 16-bar outro. Keep highs smooth (no piercing brightness), avoid trap hat rolls, avoid supersaw/big-room drops, avoid pop chorus writing, avoid over-compressed loudness. Preserve dynamic contrast between sections and maintain clarity in kick-bass relationship throughout. In the final third, reduce layer stacking slightly to keep groove readable and avoid density fatigue." 

---

## 7) Checklist Release

- [ ] Intro et outro DJ mixables (16 barres min chacune).
- [ ] Kick/bass lisibles en mono et sur petits systemes.
- [ ] Aucun element interdit present (trap hats, supersaw drop, pop chorus).
- [ ] 2 moments memorables identifies (motif + section peak).
- [ ] Duree finale dans la cible 3:30-3:45.
- [ ] Niveau d'energie coherent: progression sans saturation continue.
- [ ] Break avec vraie respiration (densite reduite).
- [ ] Version nommee selon standard: `DEEP01_DARK-HYPNO_125BPM_v01` puis increment.
- [ ] Export WAV/MP3 + metadonnees minimales completees.
- [ ] Validation ecoute croisee: casque, enceintes, voiture/smartphone.