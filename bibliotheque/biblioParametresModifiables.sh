#!/bin/bash

#_08/12/2023___________________________________________ fonction definir_les_parametres_modifiables
# Définir les paramètres modifiables.
# Paramètre(s) attendu(s) en entrée :
#   - néant
# Valeur(s) renvoyée(s) en sortie :
#   - 0 : la fonction s'est correctement exécutée.
# Paramètre(s) global(aux) nécessaire(s) :
#   - néant
# Fonction(s) nécessaire(s) :
#   - néant
#--------------------------------------------------------------------------------------------------
# SYNOPSYS
#   definir_les_parametres_modifiables
# EXEMPLE(S)
#   definir_les_parametres_modifiables
#--------------------------------------------------------------------------------------------------
definir_les_parametres_modifiables ()
{
    #.................................................................. paramètre(s) de la fonction
    # néant

    #.................................... initialisation de variable(s) nécessaire(s) à la fonction
    # néant

    #........................................................................ variables modifiables
    DEBUG=0 # DEBUG = 0 : mode débuggage désactivé ;
            # DEBUG = 1 : mode débuggage titre des fonctions uniquement ;
            # DEBUG = 2 : mode débuggage détaillé, sauf des fonctions "definir_*", "gaucher", "centrer" et "droiter" ;
            # DEBUG = 3 : mode débuggage détaillé, sauf des fonctions "gaucher", "centrer" et "droiter" ;
            # DEBUG = 4 : mode débuggage détaillé, de toutes les fonctions.
}
#__________________________________________________ fin fonction definir_les_parametres_modifiables

#_08/12/2023___________________________________________ fonction liberer_les_parametres_modifiables
# Définir les paramètres modifiables.
# Paramètre(s) attendu(s) en entrée :
#   - néant
# Valeur(s) renvoyée(s) en sortie :
#   - 0 : la fonction s'est correctement exécutée.
# Paramètre(s) global(aux) nécessaire(s) :
#   - néant
# Fonction(s) nécessaire(s) :
#   - néant
#--------------------------------------------------------------------------------------------------
# SYNOPSYS
#   liberer_les_parametres_modifiables
# EXEMPLE(S)
#   liberer_les_parametres_modifiables
#--------------------------------------------------------------------------------------------------
liberer_les_parametres_modifiables ()
{
    #.................................................................. paramètre(s) de la fonction
    # néant

    #.................................... initialisation de variable(s) nécessaire(s) à la fonction
    # néant

    #................................................. libération mémoire des variables modifiables
    unset DEBUG

    #............................................................................. la(es) fonctions
    unset -f definir_les_parametres_modifiables

    #..............................................................................................
    return 0
}
#__________________________________________________ fin fonction liberer_les_parametres_modifiables
