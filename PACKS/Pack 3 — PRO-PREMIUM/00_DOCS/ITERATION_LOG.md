# Iteration Log — PRO

Suivi structuré de toutes les itérations par projet. Une ligne = une génération testée.  
Objectif : savoir exactement *pourquoi* une version a été gardée ou rejetée.

---

## Format standard

| Date | Version | Hypothèse testée | Résultat | Décision |
|------|---------|-----------------|----------|----------|
| AAAA-MM-JJ | v0.1 | Description du changement de prompt | ✅ Retenu / ❌ Rejeté / 🔄 À retester | Explication courte |

---

## Exemple rempli — Projet : Deep Pulse EP

| Date | Version | Hypothèse testée | Résultat | Décision |
|------|---------|-----------------|----------|----------|
| 2026-04-10 | v0.1 | Prompt minimal : "dark techno 130 BPM" | ❌ Rejeté | Trop générique, pas d'identité |
| 2026-04-11 | v0.2 | Ajout : "industrial texture, sub bass, cold reverb" | 🔄 À retester | Bon groove, drop trop mou |
| 2026-04-12 | v0.3 | Remplacé "cold reverb" par "dry metallic percussion" | ✅ Retenu | Impact percussif net, identité forte |
| 2026-04-14 | v0.4 | Test outro : "fade over 8 bars with filtered hi-hats" | ✅ Retenu | Transition propre pour mix |
| 2026-04-15 | v1.0 | Prompt final consolidé — validation release | ✅ Release candidate | Export + métadonnées complètes |

---

## Règles d'usage

1. **Une entrée par génération**, même si le résultat est mauvais.  
2. **Hypothèse** = ce que vous avez changé (pas juste "essai 2").  
3. **Résultat** = objectif (✅/❌/🔄), pas subjectif ("c'est mieux").  
4. **Décision** = une phrase max. Si plus long → ouvrir un `NOTES_vX.md` dédié.  
5. Archiver ce fichier avec le projet dans `01_PROJECT_TEMPLATE_PRO/`.

---

## Template vierge à copier

```markdown
## Projet : [NOM]

| Date | Version | Hypothèse testée | Résultat | Décision |
|------|---------|-----------------|----------|----------|
| | v0.1 | | | |
| | v0.2 | | | |
| | v0.3 | | | |
| | v1.0 | | | |
```

---

## Acceptance criteria — Release candidate

Un prompt atteint le statut `v1.0 release candidate` quand :

- [ ] Au moins 3 générations testées et documentées
- [ ] Le résultat v1.0 répond au brief initial (voir `README.md` projet)
- [ ] Aucune déviation stylistique non voulue (vocal inattendu, genre shift)
- [ ] Métadonnées export préparées (BPM, key, tags, version)
- [ ] Nommage fichier conforme à `NAMING_VERSIONING_STANDARD.md`
