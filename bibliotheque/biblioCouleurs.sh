#!/bin/bash

#-08/12/2023--------------------------------- appel de(s) bibliothèque(s) nécessaire(s) à ce script
source biblioParametresModifiables.sh
definir_les_parametres_modifiables

#_20/12/2023_________________________________________________________ fonction definir_les_couleurs
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
#   definir_les_couleurs ["O"|"OUI"|"Y"|"YES"]
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
    local -i couleursActivees=0
    case ${activerCouleurs^^} in
        "O"|"OUI" ) couleursActivees=1 ;;
        "Y"|"YES" ) couleursActivees=1 ;;
        * ) couleursActivees=0
    esac
    [[ ${DEBUG} -ge 3 ]] && echo -e "  couleursActivees : \e[0;33m${couleursActivees}\e[0m"

    #...................................................................... écriture noire et grise
    [[ ${couleursActivees} -eq 0 ]] && normal=""           || normal="\e[0m"
    [[ ${couleursActivees} -eq 0 ]] && noir=""             || noir="\e[0;30m"
    [[ ${couleursActivees} -eq 0 ]] && noir_rouge=""       || noir_rouge="\e[0;41;30m"     # écriture noire sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && noir_vert=""        || noir_vert="\e[0;42;30m"      # écriture noire sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && noir_jaune=""       || noir_jaune="\e[0;43;30m"     # écriture noire sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && noir_bleu=""        || noir_bleu="\e[0;44;30m"      # écriture noire sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && noir_magenta=""     || noir_magenta="\e[0;45;30m"   # écriture noire sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && noir_cyan=""        || noir_cyan="\e[0;46;30m"      # écriture noire sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && noir_blanc=""       || noir_blanc="\e[0;47;30m"     # écriture noire sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && gris_rouge=""       || gris_rouge="\e[1;41;30m"     # écriture grise sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && gris_vert=""        || gris_vert="\e[1;42;30m"      # écriture grise sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && gris_jaune=""       || gris_jaune="\e[1;43;30m"     # écriture grise sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && gris_bleu=""        || gris_bleu="\e[1;44;30m"      # écriture grise sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && gris_magenta=""     || gris_magenta="\e[1;45;30m"   # écriture grise sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && gris_cyan=""        || gris_cyan="\e[1;46;30m"      # écriture grise sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && gris_blanc=""       || gris_blanc="\e[1;47;30m"     # écriture grise sur fond blanc
    #............................................................................... écriture rouge
    [[ ${couleursActivees} -eq 0 ]] && rouge=""            || rouge="\e[0;31m"             # écriture rouge
    [[ ${couleursActivees} -eq 0 ]] && rouge_souligne=""   || rouge_souligne="\e[4;31m"    # écriture rouge soulignée
    [[ ${couleursActivees} -eq 0 ]] && rouge_vert=""       || rouge_vert="\e[0;42;31m"     # écriture rouge sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && rouge_jaune=""      || rouge_jaune="\e[0;43;31m"    # écriture rouge sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && rouge_bleu=""       || rouge_bleu="\e[0;44;31m"     # écriture rouge sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && rouge_magenta=""    || rouge_magenta="\e[0;45;31m"  # écriture rouge sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && rouge_cyan=""       || rouge_cyan="\e[0;46;31m"     # écriture rouge sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && rouge_blanc=""      || rouge_blanc="\e[0;47;31m"    # écriture rouge sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && ROUGE=""            || ROUGE="\e[1;31m"             # écriture rouge en gras
    [[ ${couleursActivees} -eq 0 ]] && ROUGE_vert=""       || ROUGE_vert="\e[1;42;31m"     # écriture rouge en gras sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && ROUGE_jaune=""      || ROUGE_jaune="\e[1;43;31m"    # écriture rouge en gras sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && ROUGE_bleu=""       || ROUGE_bleu="\e[1;44;31m"     # écriture rouge en gras sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && ROUGE_magenta=""    || ROUGE_magenta="\e[1;45;31m"  # écriture rouge en gras sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && ROUGE_cyan=""       || ROUGE_cyan="\e[1;46;31m"     # écriture rouge en gras sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && ROUGE_blanc=""      || ROUGE_blanc="\e[1;47;31m"    # écriture rouge en gras sur fond blanc
    #............................................................................... écriture verte
    [[ ${couleursActivees} -eq 0 ]] && vert=""             || vert="\e[0;32m"              # écriture verte
    [[ ${couleursActivees} -eq 0 ]] && vert_souligne=""    || vert_souligne="\e[4;32m"     # écriture verte soulignée
    [[ ${couleursActivees} -eq 0 ]] && vert_rouge=""       || vert_rouge="\e[0;41;32m"     # écriture verte sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && vert_jaune=""       || vert_jaune="\e[0;43;32m"     # écriture verte sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && vert_bleu=""        || vert_bleu="\e[0;44;32m"      # écriture verte sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && vert_magenta=""     || vert_magenta="\e[0;45;32m"   # écriture verte sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && vert_cyan=""        || vert_cyan="\e[0;46;32m"      # écriture verte sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && vert_blanc=""       || vert_blanc="\e[0;47;32m"     # écriture verte sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && VERT=""             || VERT="\e[1;32m"              # écriture verte en gras
    [[ ${couleursActivees} -eq 0 ]] && VERT_rouge=""       || VERT_rouge="\e[1;41;32m"     # écriture verte en gras sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && VERT_jaune=""       || VERT_jaune="\e[1;43;32m"     # écriture verte en gras sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && VERT_bleu=""        || VERT_bleu="\e[1;44;32m"      # écriture verte en gras sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && VERT_magenta=""     || VERT_magenta="\e[1;45;32m"   # écriture verte en gras sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && VERT_cyan=""        || VERT_cyan="\e[1;46;32m"      # écriture verte en gras sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && VERT_blanc=""       || VERT_blanc="\e[1;47;32m"     # écriture verte en gras sur fond blanc
    #............................................................................... écriture jaune
    [[ ${couleursActivees} -eq 0 ]] && jaune=""            || jaune="\e[0;33m"             # écriture jaune
    [[ ${couleursActivees} -eq 0 ]] && jaune_souligne=""   || jaune_souligne="\e[4;33m"    # écriture jaune soulignée
    [[ ${couleursActivees} -eq 0 ]] && jaune_rouge=""      || jaune_rouge="\e[0;41;33m"    # écriture jaune sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && jaune_vert=""       || jaune_vert="\e[0;42;33m"     # écriture jaune sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && jaune_bleu=""       || jaune_bleu="\e[0;44;33m"     # écriture jaune sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && jaune_magenta=""    || jaune_magenta="\e[0;45;33m"  # écriture jaune sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && jaune_cyan=""       || jaune_cyan="\e[0;46;33m"     # écriture jaune sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && jaune_blanc=""      || jaune_blanc="\e[0;47;33m"    # écriture jaune sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && JAUNE=""            || JAUNE="\e[1;33m"             # écriture jaune en gras
    [[ ${couleursActivees} -eq 0 ]] && JAUNE_rouge=""      || JAUNE_rouge="\e[1;41;33m"    # écriture jaune en gras sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && JAUNE_vert=""       || JAUNE_vert="\e[1;42;33m"     # écriture jaune en gras sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && JAUNE_bleu=""       || JAUNE_bleu="\e[1;44;33m"     # écriture jaune en gras sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && JAUNE_magenta=""    || JAUNE_magenta="\e[1;45;33m"  # écriture jaune en gras sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && JAUNE_cyan=""       || JAUNE_cyan="\e[1;46;33m"     # écriture jaune en gras sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && JAUNE_blanc=""      || JAUNE_blanc="\e[1;47;33m"    # écriture jaune en gras sur fond blanc
    #............................................................................... écriture bleue
    [[ ${couleursActivees} -eq 0 ]] && bleu=""             || bleu="\e[0;34m"              # écriture bleue
    [[ ${couleursActivees} -eq 0 ]] && bleu_souligne=""    || bleu_souligne="\e[4;34m"     # écriture bleue soulignée
    [[ ${couleursActivees} -eq 0 ]] && bleu_rouge=""       || bleu_rouge="\e[0;41;34m"     # écriture bleue sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && bleu_vert=""        || bleu_vert="\e[0;42;34m"      # écriture bleue sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && bleu_jaune=""       || bleu_jaune="\e[0;43;34m"     # écriture bleue sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && bleu_magenta=""     || bleu_magenta="\e[0;45;34m"   # écriture bleue sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && bleu_cyan=""        || bleu_cyan="\e[0;46;34m"      # écriture bleue sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && bleu_blanc=""       || bleu_blanc="\e[0;47;34m"     # écriture bleue sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && BLEU=""             || BLEU="\e[1;34m"              # écriture bleue en gras
    [[ ${couleursActivees} -eq 0 ]] && BLEU_rouge=""       || BLEU_rouge="\e[1;41;34m"     # écriture bleue en gras sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && BLEU_vert=""        || BLEU_vert="\e[1;42;34m"      # écriture bleue en gras sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && BLEU_jaune=""       || BLEU_jaune="\e[1;43;34m"     # écriture bleue en gras sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && BLEU_magenta=""     || BLEU_magenta="\e[1;45;34m"   # écriture bleue en gras sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && BLEU_cyan=""        || BLEU_cyan="\e[1;46;34m"      # écriture bleue en gras sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && BLEU_blanc=""       || BLEU_blanc="\e[1;47;34m"     # écriture bleue en gras sur fond blanc
    #............................................................................. écriture magenta
    [[ ${couleursActivees} -eq 0 ]] && magenta=""          || magenta="\e[0;35m"           # écriture magenta
    [[ ${couleursActivees} -eq 0 ]] && magenta_souligne="" || magenta_souligne="\e[4;35m"  # écriture magenta soulignée
    [[ ${couleursActivees} -eq 0 ]] && magenta_rouge=""    || magenta_rouge="\e[0;41;35m"  # écriture magenta sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && magenta_vert=""     || magenta_vert="\e[0;42;35m"   # écriture magenta sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && magenta_jaune=""    || magenta_jaune="\e[0;43;35m"  # écriture magenta sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && magenta_bleu=""     || magenta_bleu="\e[0;44;35m"   # écriture magenta sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && magenta_cyan=""     || magenta_cyan="\e[0;46;35m"   # écriture magenta sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && magenta_blanc=""    || magenta_blanc="\e[0;47;35m"  # écriture magenta sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA=""          || MAGENTA="\e[1;35m"           # écriture magenta en gras
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA_rouge=""    || MAGENTA_rouge="\e[1;41;35m"  # écriture magenta en gras sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA_vert=""     || MAGENTA_vert="\e[1;42;35m"   # écriture magenta en gras sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA_jaune=""    || MAGENTA_jaune="\e[1;43;35m"  # écriture magenta en gras sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA_bleu=""     || MAGENTA_bleu="\e[1;44;35m"   # écriture magenta en gras sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA_cyan=""     || MAGENTA_cyan="\e[1;46;35m"   # écriture magenta en gras sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && MAGENTA_blanc=""    || MAGENTA_blanc="\e[1;47;35m"  # écriture magenta en gras sur fond blanc
    #................................................................................ écriture cyan
    [[ ${couleursActivees} -eq 0 ]] && cyan=""             || cyan="\e[0;36m"              # écriture cyan
    [[ ${couleursActivees} -eq 0 ]] && cyan_souligne=""    || cyan_souligne="\e[4;36m"     # écriture cyan soulignée
    [[ ${couleursActivees} -eq 0 ]] && cyan_rouge=""       || cyan_rouge="\e[0;41;36m"     # écriture cyan sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && cyan_vert=""        || cyan_vert="\e[0;42;36m"      # écriture cyan sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && cyan_jaune=""       || cyan_jaune="\e[0;43;36m"     # écriture cyan sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && cyan_bleu=""        || cyan_bleu="\e[0;44;36m"      # écriture cyan sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && cyan_magenta=""     || cyan_magenta="\e[0;45;36m"   # écriture cyan sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && cyan_blanc=""       || cyan_blanc="\e[0;47;36m"     # écriture cyan sur fond blanc
    [[ ${couleursActivees} -eq 0 ]] && CYAN=""             || CYAN="\e[1;36m"              # écriture cyan en gras
    [[ ${couleursActivees} -eq 0 ]] && CYAN_rouge=""       || CYAN_rouge="\e[1;41;36m"     # écriture cyan en gras sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && CYAN_vert=""        || CYAN_vert="\e[1;42;36m"      # écriture cyan en gras sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && CYAN_jaune=""       || CYAN_jaune="\e[1;43;36m"     # écriture cyan en gras sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && CYAN_bleu=""        || CYAN_bleu="\e[1;44;36m"      # écriture cyan en gras sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && CYAN_magenta=""     || CYAN_magenta="\e[1;45;36m"   # écriture cyan en gras sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && CYAN_blanc=""       || CYAN_blanc="\e[1;47;36m"     # écriture cyan en gras sur fond blanc
    #............................................................................. écriture blanche
    [[ ${couleursActivees} -eq 0 ]] && blanc=""            || blanc="\e[0;37m"             # écriture blanche
    [[ ${couleursActivees} -eq 0 ]] && blanc_souligne=""   || blanc_souligne="\e[4;37m"    # écriture blanche soulignée
    [[ ${couleursActivees} -eq 0 ]] && blanc_rouge=""      || blanc_rouge="\e[0;41;37m"    # écriture blanche sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && blanc_vert=""       || blanc_vert="\e[0;42;37m"     # écriture blanche sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && blanc_jaune=""      || blanc_jaune="\e[0;43;37m"    # écriture blanche sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && blanc_bleu=""       || blanc_bleu="\e[0;44;37m"     # écriture blanche sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && blanc_magenta=""    || blanc_magenta="\e[0;45;37m"  # écriture blanche sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && blanc_cyan=""       || blanc_cyan="\e[0;46;37m"     # écriture blanche sur fond cyan
    [[ ${couleursActivees} -eq 0 ]] && BLANC=""            || BLANC="\e[1;37m"             # écriture blanche en gras
    [[ ${couleursActivees} -eq 0 ]] && BLANC_rouge=""      || BLANC_rouge="\e[1;41;37m"    # écriture blanche en gras sur fond rouge
    [[ ${couleursActivees} -eq 0 ]] && BLANC_vert=""       || BLANC_vert="\e[1;42;37m"     # écriture blanche en gras sur fond vert
    [[ ${couleursActivees} -eq 0 ]] && BLANC_jaune=""      || BLANC_jaune="\e[1;43;37m"    # écriture blanche en gras sur fond jaune
    [[ ${couleursActivees} -eq 0 ]] && BLANC_bleu=""       || BLANC_bleu="\e[1;44;37m"     # écriture blanche en gras sur fond bleu
    [[ ${couleursActivees} -eq 0 ]] && BLANC_magenta=""    || BLANC_magenta="\e[1;45;37m"  # écriture blanche en gras sur fond magenta
    [[ ${couleursActivees} -eq 0 ]] && BLANC_cyan=""       || BLANC_cyan="\e[1;46;37m"     # écriture blanche en gras sur fond cyan

    #............................... libération mémoire de variable(s) utilisée(s) dans la fonction
    unset nomFonction activerCouleurs couleursActivees

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
#________________________________________________________________ fin fonction liberer_les_couleurs
