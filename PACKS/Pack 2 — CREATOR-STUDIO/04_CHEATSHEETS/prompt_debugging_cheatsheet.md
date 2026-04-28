# Prompt Debugging Cheatsheet

Référence rapide pour diagnostiquer et corriger un prompt qui ne donne pas le résultat attendu.  
Format : Symptôme → Cause probable → Action corrective.

---

## Diagnostic rapide

| Symptôme | Cause probable | Action corrective |
|----------|---------------|------------------|
| Résultat trop générique | Style trop large, pas de sous-genre | Remplacer le genre principal par un sous-genre précis |
| Résultat trop chargé / confus | Trop de mots-clés conflictuels | Retirer 2 styles et 1 contrainte ; garder ≤ 5 éléments |
| Résultat trop pop / commercial | Hook language activé sans le vouloir | Supprimer "catchy", "radio-friendly", "viral" ; ajouter exclusions |
| Pas assez mémorable | Absence d'élément foreground | Ajouter UN élément foreground : mélodie, bassline, groove spécifique |
| Mauvaise émotion | Instrumentation avant mood | Revoir le mood word EN PREMIER, puis ajuster l'instrumentation |
| Genre shift à mi-morceau | Mots-clés contradictoires | Identifier le mot qui "tire" vers l'autre genre et le supprimer |
| Vocal inattendu | "no vocals" absent | Ajouter `no vocals` ou `[Instrumental]` explicitement |
| BPM instable / groove flottant | Pas de référence tempo | Ajouter BPM explicite ou "steady 120 BPM groove" |
| Résultat "propre mais vide" | Manque de texture | Ajouter 1 élément textura : `vinyl crackle`, `dry kick`, `reverb tail` |
| Résultat trop sombre / trop bright | Termes d'espace mal calibrés | Ajuster : `dry room` vs `cavernous reverb` ; `intimate` vs `vast` |
| Outro qui s'arrête net | Structure non indiquée | Ajouter `fade out over 8 bars` ou `[outro: slow fade]` |
| Résultat répétitif / en boucle | Pas de hint de variation | Ajouter `with build`, `variation at 1:30`, `bridge section` |

---

## Protocole de débogage en 3 étapes

**Étape 1 — Identifier LE problème principal**  
Ne corrigez qu'une chose à la fois. Quel est le défaut *le plus important* ?

**Étape 2 — Formuler une hypothèse**  
"Si je change X, le résultat sera Y."  
Notez-la dans `06_ITERATIONS.md` avant de générer.

**Étape 3 — Évaluer honnêtement**  
L'hypothèse s'est-elle vérifiée ? Si non, comprendre pourquoi avant la prochaine tentative.

---

## Mots à risque (déclencheurs de biais fréquents)

| Mot | Biais déclenché | Alternative |
|-----|----------------|-------------|
| `epic` | Orchestre non voulu | `powerful`, `intense` |
| `catchy` | Pop commerciale | `memorable motif`, `recurring theme` |
| `chill` seul | Lo-fi générique | `chill + sous-genre précis` |
| `perfect` | Ignoré | Supprimer |
| `fast` | Interprété différemment selon genre | Donner le BPM exact |
| `modern` | Son "stock music" | Donner une référence temporelle précise |
| `unique` | Ignoré | Décrire ce qui est unique concrètement |

---

## Check express avant relance (30 secondes)

1. Mon prompt a ≤ 7 éléments ? ✅ / ❌
2. Un seul changement par rapport à la version précédente ? ✅ / ❌
3. Hypothèse notée dans le log d'itérations ? ✅ / ❌

Si ❌ sur l'une des 3 : corriger avant de générer.