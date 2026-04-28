# Suno — Prompting Notes

Notes de comportement observés sur Suno (v3 / v3.5 / v4).  
Ce document complète les templates — il documente le *pourquoi*, pas seulement le *quoi*.

---

## 1. Vocabulaire qui répond bien

Suno réagit mieux aux descripteurs **texturaux et émotionnels** qu'aux labels de genre seuls.

| Catégorie | Exemples efficaces |
|-----------|------------------|
| Texture sonore | `dry kick`, `wet reverb`, `analog warmth`, `granular texture`, `metallic sheen` |
| Dynamique | `punchy transients`, `wide stereo`, `compressed groove`, `breathing dynamics` |
| Espace | `cavernous reverb`, `intimate dry room`, `open soundstage`, `claustrophobic` |
| Mouvement | `syncopated rhythm`, `rolling bassline`, `stutter cut`, `polyrhythmic` |
| Émotion stable | `melancholic`, `tense`, `euphoric`, `introspective`, `restless` |

**Éviter** : adjectifs de qualité (`beautiful`, `perfect`, `amazing`) → Suno les ignore.

---

## 2. Structure du prompt Suno

### Ordre recommandé (v3.5+)

```
[genre/sous-genre] + [texture] + [BPM] + [mood] + [vocal note] + [structure hint]
```

**Exemple :**
```
deep techno, industrial texture, 132 BPM, cold and tense, no vocals, hard drop at 1:00
```

### Longueur optimale

- **Suno v3** : 60–90 caractères → résultats les plus stables
- **Suno v4** : jusqu'à 200 caractères acceptables, mais attention à la surcharge
- Au-delà de 200 car. : Suno commence à ignorer les derniers termes

---

## 3. Surcharge à éviter

Suno a une limite de traitement sémantique. Trop de termes = mots ignorés en fin de prompt.

### Symptômes de surcharge :
- Genre shift inattendu
- Éléments contradictoires dans le résultat
- Résultat "générique" malgré un prompt long

### Règle des 7 clusters max :
1. Genre primaire
2. Sous-genre ou référence
3. Texture sonore principale
4. BPM ou tempo feel
5. Mood dominant
6. Note vocale
7. Contrainte structure (facultatif)

---

## 4. Formuler des contraintes négatives

Suno comprend les contraintes négatives **si elles sont explicites et simples**.

| Contrainte | Formulation efficace | Formulation à éviter |
|-----------|---------------------|----------------------|
| Pas de voix | `no vocals` | "keep it instrumental please" |
| Pas de guitare | `no guitar` | "sans guitare" (langue mixte) |
| Pas de drop | `no drop, continuous groove` | "more subtle" |
| Pas de cordes | `no strings, synth only` | "electronic instruments" seul |

**Règle** : placer les contraintes négatives **en fin de prompt**, pas au milieu.

---

## 5. Comportements spécifiques notés

### Style drift progressif
Si vous utilisez `extend` ou `continue` dans Suno, le style dérive souvent après 2–3 extensions.  
→ **Solution** : relancer avec prompt complet plutôt qu'étendre à l'infini.

### Sensibilité aux majuscules
`Lo-Fi` ≠ `lo-fi` ≠ `lofi` dans certaines versions.  
→ **Recommandation** : utiliser la forme minuscule + tiret : `lo-fi`, `nu-disco`, `afro-house`.

### Biais "Suno sound"
Sans sous-genre précis, Suno produit un son reconnaissable ("suno-sounding").  
→ **Solution** : toujours inclure au moins un sub-genre rare ou une référence régionale.

### Génération vocale et langue
Par défaut, Suno génère des lyrics en anglais.  
Pour d'autres langues : `French vocals`, `Spanish vocals`, `Japanese lyrics`.  
Pour éviter tout vocal : `no vocals` ou `[Instrumental]` en début de prompt.

---

## 6. Paramètres avancés (v4+)

| Paramètre | Usage |
|-----------|-------|
| `Custom Mode` | Permet d'injecter des lyrics ou des balises de structure `[verse]`, `[chorus]`, `[bridge]` |
| `Style of Music` field | Réservé aux mots-clés genre/texture uniquement (pas de phrases) |
| `Lyrics` field | Texte chanté ou balises de structure — ne pas mélanger avec les mots-clés |
| `Seed` (v4) | Reproduire un résultat similaire — noter le seed dans `ITERATION_LOG.md` |

---

## Voir aussi

- [SUNO_FAILURE_MODES.md](SUNO_FAILURE_MODES.md) — Symptômes et corrections
- [SUNO_STYLE_KEYWORDS.md](SUNO_STYLE_KEYWORDS.md) — Mots-clés validés
- [SUNO_PROMPT_TEMPLATES.md](SUNO_PROMPT_TEMPLATES.md) — Templates prêts à l'emploi
