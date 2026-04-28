# Naming and Versioning Standard

Standard canonique du Pack 3 PRO-PREMIUM pour nommer les fichiers de prompt et les versions audio.  
Les checklists et templates de ce pack s'appuient sur ce standard.

---

## Format de nommage de fichier

```txt
[PROJECT]_[STYLE]_v[XY]_[description]
```

**Exemple :**
```txt
DeepPulse_DarkTechno_v01_base.wav
DeepPulse_DarkTechno_v02_darker.wav
DeepPulse_DarkTechno_v03_drydrum.wav
DeepPulse_DarkTechno_RC1.wav
DeepPulse_DarkTechno_FINAL.wav
```

**Règles :**

- `[XY]` = numéro à deux chiffres zéro-padded : `v01`, `v02`, `v10`
- `[description]` = suffixe court qui explique **ce qui a changé** (pas "essai2")
- Pas de date dans le nom de fichier (la date va dans l'ITERATION_LOG)
- Ne jamais écraser une version validée — toujours incrémenter
- `RC1`, `RC2` pour les release candidates
- `FINAL` réservé à la version exportée sélectionnée

---

## Format de version dans les logs (ITERATION_LOG.md)

Dans les tableaux de suivi, utiliser le format sémantique :

```
v0.1 → v0.2 → ... → v0.9 → v1.0 (release)
```

- `v0.x` = itérations en cours
- `v1.0` = première release candidate validée
- `v1.1`, `v1.2` = corrections post-release

---

## Correspondance fichier ↔ log

| Version log | Nom de fichier               |
|-------------|------------------------------|
| v0.1        | Project_Style_v01_base       |
| v0.2        | Project_Style_v02_darker     |
| v1.0        | Project_Style_RC1 ou FINAL   |
