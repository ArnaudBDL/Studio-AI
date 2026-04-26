#!/usr/bin/env bash
set -euo pipefail

cd "/Users/arnaud/Music/Studio AI"
RESOURCE="PACKS/_RESOURCES/ARBITRAGE/MUSIC_AI_STUDIO_LIST.md"

trim() {
  local s="$1"
  s="${s#${s%%[![:space:]]*}}"
  s="${s%${s##*[![:space:]]}}"
  printf '%s' "$s"
}

slugify() {
  case "$1" in
    "Suno") echo "suno" ;;
    "Udio") echo "udio" ;;
    "Tunee") echo "tunee" ;;
    "Flow Music (ex Producer)") echo "flow-music" ;;
    "Stable Audio") echo "stable-audio" ;;
    "Soundful") echo "soundful" ;;
    "Mubert") echo "mubert" ;;
    "MixAudio") echo "mixaudio" ;;
    "Soundraw") echo "soundraw" ;;
    "Beatoven") echo "beatoven" ;;
    "Ecrett") echo "ecrett" ;;
    "Boomy") echo "boomy" ;;
    "AIVA") echo "aiva" ;;
    "BandLab SongStarter") echo "bandlab-songstarter" ;;
    "Musicfy") echo "musicfy" ;;
    "Uberduck") echo "uberduck" ;;
    "SongR") echo "songr" ;;
    "Donna AI") echo "donna-ai" ;;
    "Loudly") echo "loudly" ;;
    "TopMediai AI Music") echo "topmediai-ai-music" ;;
    "Splash Pro") echo "splash-pro" ;;
    "MusicFX (Google)") echo "musicfx" ;;
    "Riffusion") echo "riffusion" ;;
    "Fadr") echo "fadr" ;;
    "HarmonAI") echo "harmonai" ;;
    "TemPolor") echo "tempolor" ;;
    *) return 1 ;;
  esac
}

display_name() {
  case "$1" in
    "Flow Music (ex Producer)") echo "Flow Music" ;;
    "MusicFX (Google)") echo "MusicFX" ;;
    *) echo "$1" ;;
  esac
}

level_block() {
  case "$1" in
    FREE)
      printf '%s\n' '## Mini guide FREE' '' '- Vise la clarte avant la precision.' '- Garde une seule intention musicale.' '- Teste vite, corrige peu.'
      ;;
    STARTER)
      printf '%s\n' '## Workflow STARTER' '' '1. Valider l idee en mode simple.' '2. Corriger precision ou structure en mode avance.' '3. Conserver les corrections utiles pour la prochaine session.'
      ;;
    CREATOR)
      printf '%s\n' '## Pipeline CREATOR' '' '1. Prompt master versionne (v01).' '2. Variante A/B sur une hypothese unique.' '3. Log symptome, hypothese, correction.' '4. Garder la variante gagnante.'
      ;;
    PRO)
      printf '%s\n' '## Sequence PRO' '' '1. Prompt master (v01_base).' '2. Variante controlee (v02_variant).' '3. Debug systematique documente.' '4. Validation RC1 puis gel FINAL.'
      ;;
  esac
}

level_intro() {
  case "$1" in
    FREE) echo "Version simple pour t aider a choisir vite un bon studio." ;;
    STARTER) echo "Version pratique pour comprendre rapidement quel studio utiliser." ;;
    CREATOR) echo "Version workflow pour integrer les studios dans une methode de travail." ;;
    PRO) echo "Version avancee pour choisir les bons studios dans un pipeline stable." ;;
  esac
}

mode_usage() {
  local name="$1"
  case "$name" in
    "Suno") echo "Tres simple pour commencer, avec un mode plus complet si tu veux aller plus loin." ;;
    "Udio") echo "Bon choix si tu veux un peu plus de finesse dans le resultat." ;;
    "Stable Audio") echo "Utile surtout pour travailler les sons, les ambiances et les textures." ;;
    "Boomy") echo "Pense pour aller tres vite et sortir une idee sans complication." ;;
    "AIVA") echo "Pratique pour composer avec une approche plus musicale qu orientee chanson pop." ;;
    "Tunee") echo "Utile si tu veux organiser plusieurs outils dans un meme workflow." ;;
    "Flow Music") echo "Pratique si tu veux produire pour plusieurs usages ou formats." ;;
    "Soundful") echo "Simple a prendre en main pour de la musique d ambiance." ;;
    "Mubert") echo "A l aise pour les ambiances continues et les variations instrumentales." ;;
    "MixAudio") echo "Utile pour adapter, remixer ou decliner une base existante." ;;
    "Soundraw") echo "Bon choix pour fabriquer rapidement des musiques de fond." ;;
    "Beatoven") echo "Pense pour habiller une video, une scene ou une narration." ;;
    "Ecrett") echo "Tres accessible pour creer une ambiance musicale simple." ;;
    "BandLab SongStarter") echo "Utile pour debloquer une idee de depart." ;;
    "Musicfy") echo "A privilegier si la voix et le chant sont centraux." ;;
    "Uberduck") echo "A utiliser surtout pour tester des voix et des variations vocales." ;;
    "SongR") echo "Fait pour aller vite sur une idee tres simple." ;;
    "Donna AI") echo "Pense pour une utilisation mobile et rapide." ;;
    "Loudly") echo "Plus interessant si tu penses aussi en logique de catalogue." ;;
    "TopMediai AI Music") echo "Polyvalent pour generer vite sans trop de complexite." ;;
    "Splash Pro") echo "A regarder surtout pour des usages sociaux ou gaming." ;;
    "MusicFX") echo "Plutot oriente test, exploration et experimentation." ;;
    "Riffusion") echo "Utile pour tester rapidement des pistes et directions." ;;
    "Fadr") echo "A utiliser surtout pour retravailler un morceau existant." ;;
    "HarmonAI") echo "Plus experimental et technique que vraiment grand public." ;;
    "TemPolor") echo "Interesse surtout si tu veux relier plusieurs outils entre eux." ;;
    *) echo "Usage a verifier selon le produit et son evolution." ;;
  esac
}

description_text() {
  local name="$1"
  case "$name" in
    "Suno") echo "Creer vite une chanson a partir d une idee." ;;
    "Udio") echo "Creer un morceau avec plus de controle sur le rendu." ;;
    "Stable Audio") echo "Creer des sons, ambiances et fonds audio." ;;
    "Boomy") echo "Creer tres vite des idees de morceaux." ;;
    "AIVA") echo "Composer des morceaux surtout instrumentaux." ;;
    "Tunee") echo "Piloter plusieurs outils de generation musicale." ;;
    "Flow Music") echo "Creer des morceaux pour plusieurs usages." ;;
    "Soundful") echo "Generer des musiques d ambiance simplement." ;;
    "Mubert") echo "Creer des ambiances musicales en continu." ;;
    "MixAudio") echo "Adapter ou decliner un morceau rapidement." ;;
    "Soundraw") echo "Produire des musiques de fond adaptables." ;;
    "Beatoven") echo "Creer une musique pour accompagner une video." ;;
    "Ecrett") echo "Creer facilement de la musique d ambiance." ;;
    "BandLab SongStarter") echo "Trouver vite un point de depart pour un morceau." ;;
    "Musicfy") echo "Tester des voix et du chant avec l IA." ;;
    "Uberduck") echo "Generer des voix et variations vocales." ;;
    "SongR") echo "Transformer vite une idee en chanson." ;;
    "Donna AI") echo "Creer une chanson depuis mobile." ;;
    "Loudly") echo "Creer des morceaux avec une logique catalogue." ;;
    "TopMediai AI Music") echo "Generer rapidement des morceaux en ligne." ;;
    "Splash Pro") echo "Creer pour des usages sociaux ou gaming." ;;
    "MusicFX") echo "Explorer des idees musicales a partir de texte." ;;
    "Riffusion") echo "Tester rapidement des directions musicales." ;;
    "Fadr") echo "Retravailler ou transformer un morceau existant." ;;
    "HarmonAI") echo "Experimenter autour de l audio avec l IA." ;;
    "TemPolor") echo "Entrer dans un workflow multi-outils." ;;
    *) echo "Creer ou retravailler un morceau avec l IA." ;;
  esac
}

specialisation_text() {
  local name="$1"
  case "$name" in
    "Suno") echo "Faire une chanson complete rapidement." ;;
    "Udio") echo "Mieux ajuster l ambiance et le rendu." ;;
    "Stable Audio") echo "Creer des sons et ambiances plus precis." ;;
    "Boomy") echo "Aller vite sans reglage complexe." ;;
    "AIVA") echo "Composer des morceaux instrumentaux." ;;
    "Tunee") echo "Organiser un workflow avec plusieurs outils." ;;
    "Flow Music") echo "Produire pour plusieurs formats." ;;
    "Soundful") echo "Faire de la musique d ambiance pour contenus." ;;
    "Mubert") echo "Generer des ambiances et variations instrumentales." ;;
    "MixAudio") echo "Remixer ou decliner un morceau." ;;
    "Soundraw") echo "Fabriquer des musiques de fond flexibles." ;;
    "Beatoven") echo "Habiller une video ou une scene." ;;
    "Ecrett") echo "Creer simplement une ambiance musicale." ;;
    "BandLab SongStarter") echo "Trouver une idee de depart." ;;
    "Musicfy") echo "Travailler la voix et le chant." ;;
    "Uberduck") echo "Generer des voix ou du chant IA." ;;
    "SongR") echo "Passer d une idee simple a une chanson." ;;
    "Donna AI") echo "Creer vite depuis smartphone." ;;
    "Loudly") echo "Creer avec une logique de catalogue." ;;
    "TopMediai AI Music") echo "Generer vite pour plusieurs besoins." ;;
    "Splash Pro") echo "Creer pour social et gaming." ;;
    "MusicFX") echo "Explorer des idees de maniere libre." ;;
    "Riffusion") echo "Prototyper vite une direction musicale." ;;
    "Fadr") echo "Separer, remixer et retravailler un morceau." ;;
    "HarmonAI") echo "Tester des usages audio plus experimentaux." ;;
    "TemPolor") echo "Entrer dans un workflow multi-outils." ;;
    *) echo "Aider a creer ou retravailler un morceau." ;;
  esac
}

normalize_free_generation() {
  case "$1" in
    "Oui") echo "Oui" ;;
    "Non") echo "Non" ;;
    *) echo "A verifier" ;;
  esac
}

rows() {
  awk '
    /^\| IA studio / {capture=1; next}
    capture && /^\| ---/ {next}
    capture && /^\| / {print; found=1; next}
    capture && found && !/^\| / {exit}
  ' "$RESOURCE"
}

write_index() {
  local dir="$1"
  local title="$2"
  local level="$3"
  {
    echo "# Guides des studios IA - $title"
    echo
    level_intro "$level"
    echo
    echo "## Par ou commencer"
    echo
    echo "1. [Suno](suno.md)"
    echo "2. [Udio](udio.md)"
    echo "3. [Stable Audio](stable-audio.md)"
    echo "4. [Boomy](boomy.md)"
    echo "5. [AIVA](aiva.md)"
    echo
    echo "## Quel studio choisir ?"
    echo
    echo "| Studio | A choisir si... | A eviter si... |"
    echo "| --- | --- | --- |"
    echo "| Suno | tu veux un text-to-song rapide et tres accessible | tu veux un controle ultra fin de chaque detail audio |"
    echo "| Udio | tu veux mieux controler texture, style et rendu | tu veux un resultat instantane sans iteration |"
    echo "| Stable Audio | tu veux precision audio, sound design, textures | tu veux un workflow centre sur lyrics/chanson vocale |"
    echo "| Boomy | tu veux sortir tres vite des idees | tu veux des structures complexes tres specifiques |"
    echo "| AIVA | tu veux composer des instrumentaux/cinematic | tu veux prioriser une chanson pop/vocale moderne |"
    echo
    echo "## Tous les studios disponibles (26)"
    echo
    while IFS='|' read -r _ c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 _; do
      raw="$(trim "$c1")"
      [[ -z "$raw" ]] && continue
      disp="$(display_name "$raw")"
      slug="$(slugify "$raw")"
      echo "- [$disp]($slug.md)"
    done < <(rows)
    echo
    echo "## Source"
    echo
    echo "Base de reference: PACKS/_RESOURCES/ARBITRAGE/MUSIC_AI_STUDIO_LIST.md"
  } > "$dir/INDEX.md"
}

write_pack() {
  local pack="$1"
  local level="$2"
  local title="$3"
  local dir="PACKS/$pack/AI_STUDIO_GUIDES"
  mkdir -p "$dir"
  write_index "$dir" "$title" "$level"

  while IFS='|' read -r _ c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 _; do
    raw="$(trim "$c1")"
    [[ -z "$raw" ]] && continue
    name="$(display_name "$raw")"
    slug="$(slugify "$raw")"
    link="$(trim "$c3")"
    freeg="$(trim "$c9")"
    freeg="$(normalize_free_generation "$freeg")"

    {
      echo "# $name - Guide $level"
      echo
      echo "## Fiche plateforme"
      echo
      echo "- Lien officiel: $link"
      echo "- Description: $(description_text "$name")"
      echo "- Specialisation: $(specialisation_text "$name")"
      echo "- Generation gratuite: $freeg"
      echo
      echo "## Modes et usage"
      echo
      mode_usage "$name"
      echo
      echo "## Prompt / Lyrics / Style"
      echo
      echo "- Prompt: decrire objectif, mood, structure, instrumentation et contraintes eventuelles."
      echo "- Lyrics: utiliser des blocs courts et lisibles quand le studio gere bien la chanson vocale."
      echo "- Style: limiter a 2-5 descripteurs coherents (genre, energie, texture, epoque)."
      echo
      echo "## Bonnes pratiques"
      echo
      echo "1. Eviter les contradictions de genre, mood ou structure."
      echo "2. Changer une seule variable entre deux tests."
      echo "3. Garder une trace des versions utiles."
      echo
      level_block "$level"
    } > "$dir/$slug.md"
  done < <(rows)
}

write_pack "Pack 0 — FREE" "FREE" "Pack 0 FREE"
write_pack "Pack 1 — STARTER" "STARTER" "Pack 1 STARTER"
write_pack "Pack 2 — CREATOR-STUDIO" "CREATOR" "Pack 2 CREATOR-STUDIO"
write_pack "Pack 3 — PRO-PREMIUM" "PRO" "Pack 3 PRO-PREMIUM"

echo "done"
