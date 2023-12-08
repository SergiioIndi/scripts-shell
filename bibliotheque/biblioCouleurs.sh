#!/bin/bash

#-08/12/2023--------------------------------- appel de(s) bibliothèque(s) nécessaire(s) à ce script
source biblioParametresModifiables.sh

#_08/12/2023_________________________________________________________ fonction definir_les_couleurs
# Définir l'utilisation des couleurs ou non.
# Paramètre(s) attendu(s) en entrée :
#   - ${1} : activerCouleurs : active les couleurs si égal à "OUI".
# Valeur(s) renvoyée(s) en sortie :
#   - 0 : la fonction s'est correctement exécutée.
# Paramètre(s) global(aux) nécessaire(s) :
#   - biblioParametresModifiables.DEBUG
# Fonction(s) nécessaire(s) :
#   - néant
#--------------------------------------------------------------------------------------------------
# SYNOPSYS
#   definir_les_couleurs activerCouleurs
# EXEMPLE(S)
#   definir_les_couleurs "OUI"
#   definir_les_couleurs "non"
#--------------------------------------------------------------------------------------------------
definir_les_couleurs ()
{
    [[ ${DEBUG} -ge 1 ]] && echo -e "fonction : \e[0;43;30m definir_les_couleurs \e[0m"
    #.................................................................. paramètre(s) de la fonction
    local activerCouleurs=${1}
    [[ ${DEBUG} -ge 3 ]] && echo -e "  activerCouleurs : \e[0;33m${activerCouleurs}\e[0m"

    #.................................... initialisation de variable(s) nécessaire(s) à la fonction
    # néant

    #...................................................................... écriture noire et grise
    [[ ${activerCouleurs^^} != "OUI" ]] && normal=""           || normal="\e[0m"
    [[ ${activerCouleurs^^} != "OUI" ]] && noir=""             || noir="\e[0;30m"
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_rouge=""       || noir_rouge="\e[0;41;30m"     # écriture noire sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_vert=""        || noir_vert="\e[0;42;30m"      # écriture noire sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_jaune=""       || noir_jaune="\e[0;43;30m"     # écriture noire sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_bleu=""        || noir_bleu="\e[0;44;30m"      # écriture noire sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_magenta=""     || noir_magenta="\e[0;45;30m"   # écriture noire sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_cyan=""        || noir_cyan="\e[0;46;30m"      # écriture noire sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && noir_blanc=""       || noir_blanc="\e[0;47;30m"     # écriture noire sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_rouge=""       || gris_rouge="\e[1;41;30m"     # écriture grise sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_vert=""        || gris_vert="\e[1;42;30m"      # écriture grise sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_jaune=""       || gris_jaune="\e[1;43;30m"     # écriture grise sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_bleu=""        || gris_bleu="\e[1;44;30m"      # écriture grise sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_magenta=""     || gris_magenta="\e[1;45;30m"   # écriture grise sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_cyan=""        || gris_cyan="\e[1;46;30m"      # écriture grise sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && gris_blanc=""       || gris_blanc="\e[1;47;30m"     # écriture grise sur fond blanc
    #............................................................................... écriture rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge=""            || rouge="\e[0;31m"             # écriture rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_souligne=""   || rouge_souligne="\e[4;31m"    # écriture rouge soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_vert=""       || rouge_vert="\e[0;42;31m"     # écriture rouge sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_jaune=""      || rouge_jaune="\e[0;43;31m"    # écriture rouge sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_bleu=""       || rouge_bleu="\e[0;44;31m"     # écriture rouge sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_magenta=""    || rouge_magenta="\e[0;45;31m"  # écriture rouge sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_cyan=""       || rouge_cyan="\e[0;46;31m"     # écriture rouge sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && rouge_blanc=""      || rouge_blanc="\e[0;47;31m"    # écriture rouge sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE=""            || ROUGE="\e[1;31m"             # écriture rouge en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE_vert=""       || ROUGE_vert="\e[1;42;31m"     # écriture rouge en gras sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE_jaune=""      || ROUGE_jaune="\e[1;43;31m"    # écriture rouge en gras sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE_bleu=""       || ROUGE_bleu="\e[1;44;31m"     # écriture rouge en gras sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE_magenta=""    || ROUGE_magenta="\e[1;45;31m"  # écriture rouge en gras sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE_cyan=""       || ROUGE_cyan="\e[1;46;31m"     # écriture rouge en gras sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && ROUGE_blanc=""      || ROUGE_blanc="\e[1;47;31m"    # écriture rouge en gras sur fond blanc
    #............................................................................... écriture verte
    [[ ${activerCouleurs^^} != "OUI" ]] && vert=""             || vert="\e[0;32m"              # écriture verte
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_souligne=""    || vert_souligne="\e[4;32m"     # écriture verte soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_rouge=""       || vert_rouge="\e[0;41;32m"     # écriture verte sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_jaune=""       || vert_jaune="\e[0;43;32m"     # écriture verte sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_bleu=""        || vert_bleu="\e[0;44;32m"      # écriture verte sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_magenta=""     || vert_magenta="\e[0;45;32m"   # écriture verte sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_cyan=""        || vert_cyan="\e[0;46;32m"      # écriture verte sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && vert_blanc=""       || vert_blanc="\e[0;47;32m"     # écriture verte sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT=""             || VERT="\e[1;32m"              # écriture verte en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT_rouge=""       || VERT_rouge="\e[1;41;32m"     # écriture verte en gras sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT_jaune=""       || VERT_jaune="\e[1;43;32m"     # écriture verte en gras sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT_bleu=""        || VERT_bleu="\e[1;44;32m"      # écriture verte en gras sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT_magenta=""     || VERT_magenta="\e[1;45;32m"   # écriture verte en gras sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT_cyan=""        || VERT_cyan="\e[1;46;32m"      # écriture verte en gras sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && VERT_blanc=""       || VERT_blanc="\e[1;47;32m"     # écriture verte en gras sur fond blanc
    #............................................................................... écriture jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune=""            || jaune="\e[0;33m"             # écriture jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_souligne=""   || jaune_souligne="\e[4;33m"    # écriture jaune soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_rouge=""      || jaune_rouge="\e[0;41;33m"    # écriture jaune sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_vert=""       || jaune_vert="\e[0;42;33m"     # écriture jaune sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_bleu=""       || jaune_bleu="\e[0;44;33m"     # écriture jaune sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_magenta=""    || jaune_magenta="\e[0;45;33m"  # écriture jaune sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_cyan=""       || jaune_cyan="\e[0;46;33m"     # écriture jaune sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && jaune_blanc=""      || jaune_blanc="\e[0;47;33m"    # écriture jaune sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE=""            || JAUNE="\e[1;33m"             # écriture jaune en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE_rouge=""      || JAUNE_rouge="\e[1;41;33m"    # écriture jaune en gras sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE_vert=""       || JAUNE_vert="\e[1;42;33m"     # écriture jaune en gras sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE_bleu=""       || JAUNE_bleu="\e[1;44;33m"     # écriture jaune en gras sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE_magenta=""    || JAUNE_magenta="\e[1;45;33m"  # écriture jaune en gras sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE_cyan=""       || JAUNE_cyan="\e[1;46;33m"     # écriture jaune en gras sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && JAUNE_blanc=""      || JAUNE_blanc="\e[1;47;33m"    # écriture jaune en gras sur fond blanc
    #............................................................................... écriture bleue
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu=""             || bleu="\e[0;34m"              # écriture bleue
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_souligne=""    || bleu_souligne="\e[4;34m"     # écriture bleue soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_rouge=""       || bleu_rouge="\e[0;41;34m"     # écriture bleue sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_vert=""        || bleu_vert="\e[0;42;34m"      # écriture bleue sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_jaune=""       || bleu_jaune="\e[0;43;34m"     # écriture bleue sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_magenta=""     || bleu_magenta="\e[0;45;34m"   # écriture bleue sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_cyan=""        || bleu_cyan="\e[0;46;34m"      # écriture bleue sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && bleu_blanc=""       || bleu_blanc="\e[0;47;34m"     # écriture bleue sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU=""             || BLEU="\e[1;34m"              # écriture bleue en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU_rouge=""       || BLEU_rouge="\e[1;41;34m"     # écriture bleue en gras sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU_vert=""        || BLEU_vert="\e[1;42;34m"      # écriture bleue en gras sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU_jaune=""       || BLEU_jaune="\e[1;43;34m"     # écriture bleue en gras sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU_magenta=""     || BLEU_magenta="\e[1;45;34m"   # écriture bleue en gras sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU_cyan=""        || BLEU_cyan="\e[1;46;34m"      # écriture bleue en gras sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && BLEU_blanc=""       || BLEU_blanc="\e[1;47;34m"     # écriture bleue en gras sur fond blanc
    #............................................................................. écriture magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta=""          || magenta="\e[0;35m"           # écriture magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_souligne="" || magenta_souligne="\e[4;35m"  # écriture magenta soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_rouge=""    || magenta_rouge="\e[0;41;35m"  # écriture magenta sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_vert=""     || magenta_vert="\e[0;42;35m"   # écriture magenta sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_jaune=""    || magenta_jaune="\e[0;43;35m"  # écriture magenta sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_bleu=""     || magenta_bleu="\e[0;44;35m"   # écriture magenta sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_cyan=""     || magenta_cyan="\e[0;46;35m"   # écriture magenta sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && magenta_blanc=""    || magenta_blanc="\e[0;47;35m"  # écriture magenta sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA=""          || MAGENTA="\e[1;35m"           # écriture magenta en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA_rouge=""    || MAGENTA_rouge="\e[1;41;35m"  # écriture magenta en gras sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA_vert=""     || MAGENTA_vert="\e[1;42;35m"   # écriture magenta en gras sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA_jaune=""    || MAGENTA_jaune="\e[1;43;35m"  # écriture magenta en gras sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA_bleu=""     || MAGENTA_bleu="\e[1;44;35m"   # écriture magenta en gras sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA_cyan=""     || MAGENTA_cyan="\e[1;46;35m"   # écriture magenta en gras sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && MAGENTA_blanc=""    || MAGENTA_blanc="\e[1;47;35m"  # écriture magenta en gras sur fond blanc
    #................................................................................ écriture cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan=""             || cyan="\e[0;36m"              # écriture cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_souligne=""    || cyan_souligne="\e[4;36m"     # écriture cyan soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_rouge=""       || cyan_rouge="\e[0;41;36m"     # écriture cyan sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_vert=""        || cyan_vert="\e[0;42;36m"      # écriture cyan sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_jaune=""       || cyan_jaune="\e[0;43;36m"     # écriture cyan sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_bleu=""        || cyan_bleu="\e[0;44;36m"      # écriture cyan sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_magenta=""     || cyan_magenta="\e[0;45;36m"   # écriture cyan sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && cyan_blanc=""       || cyan_blanc="\e[0;47;36m"     # écriture cyan sur fond blanc
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN=""             || CYAN="\e[1;36m"              # écriture cyan en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN_rouge=""       || CYAN_rouge="\e[1;41;36m"     # écriture cyan en gras sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN_vert=""        || CYAN_vert="\e[1;42;36m"      # écriture cyan en gras sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN_jaune=""       || CYAN_jaune="\e[1;43;36m"     # écriture cyan en gras sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN_bleu=""        || CYAN_bleu="\e[1;44;36m"      # écriture cyan en gras sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN_magenta=""     || CYAN_magenta="\e[1;45;36m"   # écriture cyan en gras sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && CYAN_blanc=""       || CYAN_blanc="\e[1;47;36m"     # écriture cyan en gras sur fond blanc
    #............................................................................. écriture blanche
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc=""            || blanc="\e[0;37m"             # écriture blanche
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_souligne=""   || blanc_souligne="\e[4;37m"    # écriture blanche soulignée
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_rouge=""      || blanc_rouge="\e[0;41;37m"    # écriture blanche sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_vert=""       || blanc_vert="\e[0;42;37m"     # écriture blanche sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_jaune=""      || blanc_jaune="\e[0;43;37m"    # écriture blanche sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_bleu=""       || blanc_bleu="\e[0;44;37m"     # écriture blanche sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_magenta=""    || blanc_magenta="\e[0;45;37m"  # écriture blanche sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && blanc_cyan=""       || blanc_cyan="\e[0;46;37m"     # écriture blanche sur fond cyan
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC=""            || BLANC="\e[1;37m"             # écriture blanche en gras
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC_rouge=""      || BLANC_rouge="\e[1;41;37m"    # écriture blanche en gras sur fond rouge
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC_vert=""       || BLANC_vert="\e[1;42;37m"     # écriture blanche en gras sur fond vert
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC_jaune=""      || BLANC_jaune="\e[1;43;37m"    # écriture blanche en gras sur fond jaune
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC_bleu=""       || BLANC_bleu="\e[1;44;37m"     # écriture blanche en gras sur fond bleu
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC_magenta=""    || BLANC_magenta="\e[1;45;37m"  # écriture blanche en gras sur fond magenta
    [[ ${activerCouleurs^^} != "OUI" ]] && BLANC_cyan=""       || BLANC_cyan="\e[1;46;37m"     # écriture blanche en gras sur fond cyan

    #............................... libération mémoire de variable(s) utilisée(s) dans la fonction
    unset nomFonction activerCouleurs

    #..............................................................................................
    return 0
}
#________________________________________________________________ fin fonction definir_les_couleurs

#_08/12/2023_________________________________________________________ fonction liberer_les_couleurs
# Libère la mémoire utilisée par les variables des couleurs.
# Paramètre(s) attendu(s) en entrée :
#   - néant
# Valeur(s) renvoyée(s) en sortie :
#   - 0 : la fonction s'est correctement exécutée.
# Paramètre(s) global(aux) nécessaire(s) :
#   - biblioParametresModifiables.DEBUG
# Fonction(s) nécessaire(s) :
#   - néant
#--------------------------------------------------------------------------------------------------
# SYNOPSYS
#   liberer_les_couleurs
# EXEMPLE(S)
#   liberer_les_couleurs
#--------------------------------------------------------------------------------------------------
liberer_les_couleurs ()
{
    local nomFonction="liberer_les_couleurs"
    test -z ${noir_jaune} && nomFonction="\e[0;43;30m${nomFonction}\e[0m" || nomFonction="${noir_jaune}${nomFonction}${normal}"
    [[ ${DEBUG} -ge 1 ]] && echo -e "fonction : ${nomFonction}" >&2
    #.................................................................. paramètre(s) de la fonction
    # néant

    #.................................... initialisation de variable(s) nécessaire(s) à la fonction
    # néant

    #........................................................................ variable(s) locale(s)
    unset nomFonction
    #...................................................................... écriture noire et grise
    unset normal noir noir_rouge noir_vert noir_jaune noir_bleu noir_magenta noir_cyan noir_blanc
    unset gris_rouge gris_vert gris_jaune gris_bleu gris_magenta gris_cyan gris_blanc
    #............................................................................... écriture rouge
    unset rouge rouge_souligne rouge_souligne rouge_vert rouge_jaune rouge_bleu rouge_magenta rouge_cyan rouge_blanc
    unset ROUGE ROUGE_vert ROUGE_jaune ROUGE_bleu ROUGE_magenta ROUGE_cyan ROUGE_blanc
    #............................................................................... écriture verte
    unset vert vert_souligne vert_rouge vert_jaune vert_bleu vert_magenta vert_cyan vert_blanc
    unset VERT VERT_rouge VERT_jaune VERT_bleu VERT_magenta VERT_cyan VERT_blanc
    #............................................................................... écriture jaune
    unset jaune jaune_souligne jaune_rouge jaune_vert jaune_bleu jaune_magenta jaune_cyan jaune_blanc
    unset JAUNE JAUNE_rouge JAUNE_vert JAUNE_bleu JAUNE_magenta JAUNE_cyan JAUNE_blanc
    #............................................................................... écriture bleue
    unset bleu bleu_souligne bleu_rouge bleu_vert bleu_jaune bleu_magenta bleu_cyan bleu_blanc
    unset BLEU BLEU_rouge BLEU_vert BLEU_jaune BLEU_magenta BLEU_cyan BLEU_blanc
    #............................................................................. écriture magenta
    unset magenta magenta_souligne magenta_rouge magenta_vert magenta_jaune magenta_bleu magenta_cyan magenta_blanc
    unset MAGENTA MAGENTA_rouge MAGENTA_vert MAGENTA_jaune MAGENTA_bleu MAGENTA_cyan MAGENTA_blanc
    #................................................................................ écriture cyan
    unset cyan cyan_souligne cyan_rouge cyan_vert cyan_jaune cyan_bleu cyan_magenta cyan_blanc
    unset CYAN CYAN_rouge CYAN_vert CYAN_jaune CYAN_bleu CYAN_magenta CYAN_blanc
    #............................................................................. écriture blanche
    unset blanc blanc_souligne blanc_rouge blanc_vert blanc_jaune blanc_bleu blanc_magenta blanc_cyan
    unset BLANC BLANC_rouge BLANC_vert BLANC_jaune BLANC_bleu BLANC_magenta BLANC_cyan

    #............................................................................. la(es) fonctions
    unset -f definir_les_couleurs

    #..............................................................................................
    return 0
}
#________________________________________________________________ fin fonction definir_les_couleurs

