#!/bin/bash

#-20/12/2023--------------------------------- appel de(s) bibliothèque(s) nécessaire(s) à ce script
source biblioParametresModifiables.sh
definir_les_parametres_modifiables

#_20/12/2023____________________________________________________ fonction definir_les_codes_erreurs
# Définir les codes erreurs.
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
#   definir_les_codes_erreurs
# EXEMPLE(S)
#   definir_les_codes_erreurs
#--------------------------------------------------------------------------------------------------
definir_les_codes_erreurs ()
{
    local nomFonction="definir_les_codes_erreurs"
    test -z ${noir_jaune} && nomFonction="\e[0;43;30m${nomFonction}\e[0m" || nomFonction="${noir_jaune}${nomFonction}${normal}"
    [[ ${DEBUG} -ge 1 ]] && echo -e "fonction : ${nomFonction}" >&2
    #.................................................................. paramètre(s) de la fonction
    # néant

    #.................................... initialisation de variable(s) nécessaire(s) à la fonction
    # néant

    #..................................................................................... commande
    E_OK=0
    tableauErreurs[${E_OK}]="Exécution du script sans erreur connue."
    E_MESSAGE_AIDE=1
    tableauErreurs[${E_MESSAGE_AIDE}]="Affichage de ce message d'aide."
    E_SYNTAXE_ERRONEE=`expr ${E_MESSAGE_AIDE} + 1`
    tableauErreurs[${E_SYNTAXE_ERRONEE}]="La syntaxe de la commande est erronée."
    E_EXECUTION_IMPOSSIBLE=`expr ${E_MESSAGE_AIDE} + 2`
    tableauErreurs[${E_EXECUTION_IMPOSSIBLE}]="L'exécution du script est impossible."
    E_EXECUTION_SCRIPT=`expr ${E_MESSAGE_AIDE} + 3`
    tableauErreurs[${E_EXECUTION_SCRIPT}]="L'exécution du script a rencontré une erreur."
    E_EXECUTION_NON_AUTORISE=`expr ${E_MESSAGE_AIDE} + 4`
    tableauErreurs[${E_EXECUTION_NON_AUTORISE}]="L'exécution du script n'est pas autorisée sur ce serveur."
    E_EXECUTION_NON_AUTORISE_UTILISATEUR=`expr ${E_MESSAGE_AIDE} + 5`
    tableauErreurs[${E_EXECUTION_NON_AUTORISE_UTILISATEUR}]="L'exécution du script n'est pas autorisée pour l'utilisateur en cours." >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OK                                 : ${jaune}${E_OK}${normal} = ${jaune}${tableauErreurs[${E_OK}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} MESSAGE_AIDE                       : ${jaune}${E_MESSAGE_AIDE}${normal} = ${jaune}${tableauErreurs[${E_MESSAGE_AIDE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SYNTAXE_ERRONEE                    : ${jaune}${E_SYNTAXE_ERRONEE}${normal} = ${jaune}${tableauErreurs[${E_SYNTAXE_ERRONEE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} EXECUTION_IMPOSSIBLE               : ${jaune}${E_EXECUTION_IMPOSSIBLE}${normal} = ${jaune}${tableauErreurs[${E_EXECUTION_IMPOSSIBLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} EXECUTION_SCRIPT                   : ${jaune}${E_EXECUTION_SCRIPT}${normal} = ${jaune}${tableauErreurs[${E_EXECUTION_SCRIPT}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} EXECUTION_NON_AUTORISE             : ${jaune}${E_EXECUTION_NON_AUTORISE}${normal} = ${jaune}${tableauErreurs[${E_EXECUTION_NON_AUTORISE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} EXECUTION_NON_AUTORISE_UTILISATEUR : ${jaune}${E_EXECUTION_NON_AUTORISE_UTILISATEUR}${normal} = ${jaune}${tableauErreurs[${E_EXECUTION_NON_AUTORISE_UTILISATEUR}]}${normal}" >&2

    #....................................................................................... option
    E_OPTION=10
    tableauErreurs[${E_OPTION}]="Une option a un problème."
    E_OPTION_INCONNUE=`expr ${E_OPTION} + 1`
    tableauErreurs[${E_OPTION_INCONNUE}]="Une des options est inconnue, donc non disponible."
    E_OPTION_DOUBLON=`expr ${E_OPTION} + 2`
    tableauErreurs[${E_OPTION_DOUBLON}]="Une des options a déjà été utilisée."
    E_OPTION_UNIQUE=`expr ${E_OPTION} + 3`
    tableauErreurs[${E_OPTION_UNIQUE}]="Une des options doit être utilisée seule, à l'exclusion des autres. C'est une option unique."
    E_OPTION_INCOMPATIBLE=`expr ${E_OPTION} + 4`
    tableauErreurs[${E_OPTION_INCOMPATIBLE}]="Une des options est incompatible avec une autre."
    E_OPTION_MANQUANTE=`expr ${E_OPTION} + 5`
    tableauErreurs[${E_OPTION_MANQUANTE}]="Il manque au moins une option."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTION                             : ${jaune}${E_OPTION}${normal} = ${jaune}${tableauErreurs[${E_OPTION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTION_INCONNUE                    : ${jaune}${E_OPTION_INCONNUE}${normal} = ${jaune}${tableauErreurs[${E_OPTION_INCONNUE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTION_DOUBLON                     : ${jaune}${E_OPTION_DOUBLON}${normal} = ${jaune}${tableauErreurs[${E_OPTION_DOUBLON}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTION_UNIQUE                      : ${jaune}${E_OPTION_UNIQUE}${normal} = ${jaune}${tableauErreurs[${E_OPTION_UNIQUE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTION_INCOMPATIBLE                : ${jaune}${E_OPTION_INCOMPATIBLE}${normal} = ${jaune}${tableauErreurs[${E_OPTION_INCOMPATIBLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTION_MANQUANTE                   : ${jaune}${E_OPTION_MANQUANTE}${normal} = ${jaune}${tableauErreurs[${E_OPTION_MANQUANTE}]}${normal}" >&2

    #...................................................................................... serveur
    E_SERVEUR=20
    tableauErreurs[${E_SERVEUR}]="Le serveur a un problème."
    E_SERVEUR_INCONNU=`expr ${E_SERVEUR} + 1`
    tableauErreurs[${E_SERVEUR_INCONNU}]="Ce serveur est inconnu, donc non référencé."
    E_SERVEUR_NOM_OBLIGATOIRE=`expr ${E_SERVEUR} + 2`
    tableauErreurs[${E_SERVEUR_NOM_OBLIGATOIRE}]="Le nom du serveur est obligatoire."
    E_SERVEUR_NOM_CONFORME=`expr ${E_SERVEUR} + 3`
    tableauErreurs[${E_SERVEUR_NOM_CONFORME}]="Le nom du serveur n'est pas conforme."
    E_SERVEUR_OBLIGATOIRE=`expr ${E_SERVEUR} + 4`
    tableauErreurs[${E_SERVEUR_OBLIGATOIRE}]="Le serveur est obligatoire."
    E_SERVEUR_INJOIGNABLE=`expr ${E_SERVEUR} + 5`
    tableauErreurs[${E_SERVEUR_INJOIGNABLE}]="Le serveur est injoignable (via ssh)."
    E_SERVEUR_ADRESSE_OBLIGATOIRE=`expr ${E_SERVEUR} + 6`
    tableauErreurs[${E_SERVEUR_ADRESSE_OBLIGATOIRE}]="L'adresse IP du serveur est obligatoire."
    E_SERVEUR_ADRESSE_IDENTIQUE=`expr ${E_SERVEUR} + 7`
    tableauErreurs[${E_SERVEUR_ADRESSE_IDENTIQUE}]="L'adresse IP du serveur local est identique à celle du distant."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR                            : ${jaune}${E_SERVEUR}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_INCONNU                    : ${jaune}${E_SERVEUR_INCONNU}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_INCONNU}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_NOM_OBLIGATOIRE            : ${jaune}${E_SERVEUR_NOM_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_NOM_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_NOM_CONFORME               : ${jaune}${E_SERVEUR_NOM_CONFORME}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_NOM_CONFORME}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_OBLIGATOIRE                : ${jaune}${E_SERVEUR_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_INJOIGNABLE                : ${jaune}${E_SERVEUR_INJOIGNABLE}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_INJOIGNABLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_ADRESSE_OBLIGATOIRE        : ${jaune}${E_SERVEUR_ADRESSE_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_ADRESSE_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SERVEUR_ADRESSE_IDENTIQUE          : ${jaune}${E_SERVEUR_ADRESSE_IDENTIQUE}${normal} = ${jaune}${tableauErreurs[${E_SERVEUR_ADRESSE_IDENTIQUE}]}${normal}" >&2

    #...................................................................................... fichier
    E_FICHIER=30
    tableauErreurs[${E_FICHIER}]="Le fichier a un problème."
    E_FICHIER_NOM_OBLIGATOIRE=`expr ${E_FICHIER} + 1`
    tableauErreurs[${E_FICHIER_NOM_OBLIGATOIRE}]="Le nom du fichier est obligatoire et ne peut être constitué d'une chaîne vide."
    E_FICHIER_NOM_NON_CONFORME=`expr ${E_FICHIER} + 2`
    tableauErreurs[${E_FICHIER_NOM_NON_CONFORME}]="Le nom du fichier n'est pas conforme."
    E_FICHIER_OBLIGATOIRE=`expr ${E_FICHIER} + 3`
    tableauErreurs[${E_FICHIER_OBLIGATOIRE}]="Le fichier est obligatoire."
    E_FICHIER_INCONNU=`expr ${E_FICHIER} + 4`
    tableauErreurs[${E_FICHIER_INCONNU}]="Le fichier n'existe pas sur le serveur."
    E_FICHIER_EXISTE_DEJA=`expr ${E_FICHIER} + 5`
    tableauErreurs[${E_FICHIER_EXISTE_DEJA}]="Le fichier existe déjà sur le serveur."
    E_FICHIER_NON_ORDINAIRE=`expr ${E_FICHIER} + 6`
    tableauErreurs[${E_FICHIER_NON_ORDINAIRE}]="Le fichier n'est pas un fichier ordinaire."
    E_FICHIER_REPERTOIRE=`expr ${E_FICHIER} + 7`
    tableauErreurs[${E_FICHIER_REPERTOIRE}]="Le fichier est un répertoire."
    E_FICHIER_NON_LECTURE=`expr ${E_FICHIER} + 8`
    tableauErreurs[${E_FICHIER_NON_LECTURE}]="Le fichier n'a pas les droits de lecture."
    E_FICHIER_NON_ECRITURE=`expr ${E_FICHIER} + 9`
    tableauErreurs[${E_FICHIER_NON_ECRITURE}]="Le fichier n'a pas les droits d'écriture."
    E_FICHIER_NON_EXECUTION=`expr ${E_FICHIER} + 10`
    tableauErreurs[${E_FICHIER_NON_EXECUTION}]="Le fichier n'a pas les droits d'exécution."
    E_FICHIER_NON_DECOMPRESSABLE=`expr ${E_FICHIER} + 11`
    tableauErreurs[${E_FICHIER_NON_DECOMPRESSABLE}]="Le fichier ne peut pas être décompressé."
    E_FICHIER_NON_SUPPRIMABLE=`expr ${E_FICHIER} + 12`
    tableauErreurs[${E_FICHIER_NON_SUPPRIMABLE}]="Le fichier n'a pas pu être supprimé."
    E_FICHIER_NON_CREABLE=`expr ${E_FICHIER} + 13`
    tableauErreurs[${E_FICHIER_NON_CREABLE}]="Le fichier n'a pas pu être créé."
    E_FICHIER_MASQUE_OBLIGATOIRE=`expr ${E_FICHIER} + 14`
    tableauErreurs[${E_FICHIER_MASQUE_OBLIGATOIRE}]="Le masque de fichiers est obligatoire et ne peut être constitué d'une chaîne vide."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER                            : ${jaune}${E_FICHIER}${normal} = ${jaune}${tableauErreurs[${E_FICHIER}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NOM_OBLIGATOIRE            : ${jaune}${E_FICHIER_NOM_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NOM_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NOM_NON_CONFORME           : ${jaune}${E_FICHIER_NOM_NON_CONFORME}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_CONFORME}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_OBLIGATOIRE                : ${jaune}${E_FICHIER_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_INCONNU                    : ${jaune}${E_FICHIER_INCONNU}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_INCONNU}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_EXISTE_DEJA                : ${jaune}${E_FICHIER_EXISTE_DEJA}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_EXISTE_DEJA}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_ORDINAIRE              : ${jaune}${E_FICHIER_NON_ORDINAIRE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_ORDINAIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_REPERTOIRE                 : ${jaune}${E_FICHIER_REPERTOIRE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_REPERTOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_LECTURE                : ${jaune}${E_FICHIER_NON_LECTURE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_LECTURE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_ECRITURE               : ${jaune}${E_FICHIER_NON_ECRITURE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_ECRITURE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_EXECUTION              : ${jaune}${E_FICHIER_NON_EXECUTION}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_EXECUTION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_DECOMPRESSABLE         : ${jaune}${E_FICHIER_NON_DECOMPRESSABLE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_DECOMPRESSABLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_SUPPRIMABLE            : ${jaune}${E_FICHIER_NON_SUPPRIMABLE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_SUPPRIMABLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} FICHIER_NON_CREABLE                : ${jaune}${E_FICHIER_NON_CREABLE}${normal} = ${jaune}${tableauErreurs[${E_FICHIER_NON_CREABLE}]}${normal}" >&2

    #................................................................................... répertoire
    E_REPERTOIRE=50
    tableauErreurs[${E_REPERTOIRE}]="Le répertoire a un problème."
    E_REPERTOIRE_NOM_OBLIGATOIRE=`expr ${E_REPERTOIRE} + 1`
    tableauErreurs[${E_REPERTOIRE_NOM_OBLIGATOIRE}]="Le nom du répertoire est obligatoire."
    E_REPERTOIRE_NOM_NON_CONFORME=`expr ${E_REPERTOIRE} + 2`
    tableauErreurs[${E_REPERTOIRE_NOM_NON_CONFORME}]="Le nom du répertoire n'est pas conforme."
    E_REPERTOIRE_OBLIGATOIRE=`expr ${E_REPERTOIRE} + 3`
    tableauErreurs[${E_REPERTOIRE_OBLIGATOIRE}]="Le répertoire est obligatoire."
    E_REPERTOIRE_INCONNU=`expr ${E_REPERTOIRE} + 4`
    tableauErreurs[${E_REPERTOIRE_INCONNU}]="Le répertoire n'existe pas sur le serveur."
    E_REPERTOIRE_NON_LECTURE=`expr ${E_REPERTOIRE} + 5`
    tableauErreurs[${E_REPERTOIRE_NON_LECTURE}]="Le répertoire n'a pas les droits de lecture."
    E_REPERTOIRE_NON_ECRITURE=`expr ${E_REPERTOIRE} + 6`
    tableauErreurs[${E_REPERTOIRE_NON_ECRITURE}]="Le répertoire n'a pas les droits d'écriture."
    E_REPERTOIRE_NON_EXECUTION=`expr ${E_REPERTOIRE} + 7`
    tableauErreurs[${E_REPERTOIRE_NON_EXECUTION}]="Le répertoire n'a pas les droits d'exécution."
    E_REPERTOIRE_NON_SUPPRIMABLE=`expr ${E_REPERTOIRE} + 8`
    tableauErreurs[${E_REPERTOIRE_NON_SUPPRIMABLE}]="Le répertoire n'a pas pu être supprimé."
    E_REPERTOIRE_NON_CREABLE=`expr ${E_REPERTOIRE} + 9`
    tableauErreurs[${E_REPERTOIRE_NON_CREABLE}]="Le répertoire n'a pas pu être créé."
    E_REPERTOIRE_CHEMIN_NON_ABSOLU=`expr ${E_REPERTOIRE} + 10`
    tableauErreurs[${E_REPERTOIRE_CHEMIN_NON_ABSOLU}]="Le répertoire n'est pas un chemin absolu (démarrage depuis la racine \"/\") !"
    E_COPIE_DEPUIS_DISTANTS_INTERDIT=`expr ${E_REPERTOIRE} + 11`
    tableauErreurs[${E_COPIE_DEPUIS_DISTANTS_INTERDIT}]="Copie de fichiers depuis serveur distant interdite."
    E_COPIE_VERS_DISTANTS_INTERDIT=`expr ${E_REPERTOIRE} + 12`
    tableauErreurs[${E_COPIE_VERS_DISTANTS_INTERDIT}]="Copie de fichiers vers serveur distant interdite."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NOM_OBLIGATOIRE         : ${jaune}${E_REPERTOIRE_NOM_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NOM_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NOM_NON_CONFORME        : ${jaune}${E_REPERTOIRE_NOM_NON_CONFORME}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_OBLIGATOIRE             : ${jaune}${E_REPERTOIRE_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_INCONNU                 : ${jaune}${E_REPERTOIRE_INCONNU}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_INEXISTANT}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NON_LECTURE             : ${jaune}${E_REPERTOIRE_NON_LECTURE}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NON_LECTURE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NON_ECRITURE            : ${jaune}${E_REPERTOIRE_NON_ECRITURE}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NON_ECRITURE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NON_EXECUTION           : ${jaune}${E_REPERTOIRE_NON_EXECUTION}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NON_EXECUTION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NON_SUPPRIMABLE         : ${jaune}${E_REPERTOIRE_NON_SUPPRIMABLE}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NON_SUPPRIMABLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_NON_CREABLE             : ${jaune}${E_REPERTOIRE_NON_CREABLE}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NON_CREABLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} REPERTOIRE_CHEMIN_NON_ABSOLU       : ${jaune}${E_REPERTOIRE_CHEMIN_NON_ABSOLU}${normal} = ${jaune}${tableauErreurs[${E_REPERTOIRE_NON_CREABLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} COPIE_DEPUIS_DISTANTS_INTERDIT     : ${jaune}${E_COPIE_DEPUIS_DISTANTS_INTERDIT}${normal} = ${jaune}${tableauErreurs[${E_COPIE_DEPUIS_DISTANTS_INTERDIT}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} COPIE_VERS_DISTANTS_INTERDIT       : ${jaune}${E_COPIE_VERS_DISTANTS_INTERDIT}${normal} = ${jaune}${tableauErreurs[${E_COPIE_VERS_DISTANTS_INTERDIT}]}${normal}" >&2

    #.................................................................... numéro, période et nombre
    E_NUMERO_NOMBRE=100
    tableauErreurs[${E_NUMERO_NOMBRE}]="Le numéro ou le nombre a un problème."
    E_NOMBRE_OBLIGATOIRE=`expr ${E_NUMERO_NOMBRE} + 1`
    tableauErreurs[${E_NOMBRE_OBLIGATOIRE}]="Le nombre est obligatoire."
    E_NOMBRE_NON_VALIDE=`expr ${E_NUMERO_NOMBRE} + 2`
    tableauErreurs[${E_NOMBRE_NON_VALIDE}]="Un des caractères n'est pas un chiffre."
    E_NOMBRE_NON_AUTORISE=`expr ${E_NUMERO_NOMBRE} + 3`
    tableauErreurs[${E_NOMBRE_NON_AUTORISE}]="Le nombre n'est pas autorisé."
    E_NUMERO_JOUR_SEMAINE_NON_SPECIFIE=`expr ${E_NUMERO_NOMBRE} + 4`
    tableauErreurs[${E_NUMERO_JOUR_SEMAINE_NON_SPECIFIE}]="Le numéro du jour de la semaine n'a pas été spécifié."
    E_NUMERO_JOUR_SEMAINE_NON_AUTORISE=`expr ${E_NUMERO_NOMBRE} + 5`
    tableauErreurs[${E_NUMERO_JOUR_SEMAINE_NON_AUTORISE}]="Le numéro du jour de la semaine n'est pas autorisé."
    E_NUMERO_JOUR_SEMAINE_NON_CONFORME=`expr ${E_NUMERO_NOMBRE} + 6`
    tableauErreurs[${E_NUMERO_JOUR_SEMAINE_NON_CONFORME}]="Le numéro du jour de la semaine n'est pas conforme."
    E_PERIODE_NON_SPECIFIE=`expr ${E_NUMERO_NOMBRE} + 7`
    tableauErreurs[${E_PERIODE_NON_SPECIFIE}]="La période n'a pas été spécifiée."
    E_PERIODE_NON_AUTORISE=`expr ${E_NUMERO_NOMBRE} + 8`
    tableauErreurs[${E_PERIODE_NON_AUTORISE}]="La période n'est pas autorisée."
    E_PERIODE_NON_CONFORME=`expr ${E_NUMERO_NOMBRE} + 9`
    tableauErreurs[${E_PERIODE_NON_CONFORME}]="La période n'est pas conforme."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NUMERO_NOMBRE                      : ${jaune}${E_NUMERO_NOMBRE}${normal} = ${jaune}${tableauErreurs[${E_NUMERO_NOMBRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NOMBRE_OBLIGATOIRE                 : ${jaune}${E_NOMBRE_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_NOMBRE_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NOMBRE_NON_VALIDE                  : ${jaune}${E_NOMBRE_NON_VALIDE}${normal} = ${jaune}${tableauErreurs[${E_NOMBRE_NON_VALIDE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NOMBRE_NON_AUTORISE                : ${jaune}${E_NOMBRE_NON_AUTORISE}${normal} = ${jaune}${tableauErreurs[${E_NOMBRE_NON_AUTORISE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NUMERO_JOUR_SEMAINE_NON_SPECIFIE   : ${jaune}${E_NUMERO_JOUR_SEMAINE_NON_SPECIFIE}${normal} = ${jaune}${tableauErreurs[${E_NUMERO_JOUR_SEMAINE_NON_SPECIFIE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NUMERO_JOUR_SEMAINE_NON_AUTORISE   : ${jaune}${E_NUMERO_JOUR_SEMAINE_NON_AUTORISE}${normal} = ${jaune}${tableauErreurs[${E_NUMERO_JOUR_SEMAINE_NON_AUTORISE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} NUMERO_JOUR_SEMAINE_NON_CONFORME   : ${jaune}${E_NUMERO_JOUR_SEMAINE_NON_CONFORME}${normal} = ${jaune}${tableauErreurs[${E_NUMERO_JOUR_SEMAINE_PAS_BON}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} PERIODE_NON_SPECIFIE               : ${jaune}${E_PERIODE_NON_SPECIFIE}${normal} = ${jaune}${tableauErreurs[${E_PERIODE_NON_SPECIFIE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} PERIODE_NON_AUTORISE               : ${jaune}${E_PERIODE_NON_AUTORISE}${normal} = ${jaune}${tableauErreurs[${E_PERIODE_NON_AUTORISE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} PERIODE_NON_CONFORME               : ${jaune}${E_PERIODE_NON_CONFORME}${normal} = ${jaune}${tableauErreurs[${E_PERIODE_PAS_BON}]}${normal}" >&2
  
    #.20/01/2018.........................................................................................moteur Postgres
    E_SGBDR_POSTGRES=120
    tableauErreurs[${E_SGBDR_POSTGRES}]="Le SGBDR Postgres a un problème."
    E_SGBDR_POSTGRES_LOGGER=`expr ${E_SGBDR_POSTGRES} + 1`
    tableauErreurs[${E_SGBDR_POSTGRES_LOGGER}]="Le processus de redirection de la sortie standard vers les journaux applicatifs \"logger process\" du SGBDR Postgres a un problème."
    E_SGBDR_POSTGRES_CHECKPOINTER=`expr ${E_SGBDR_POSTGRES} + 2`
    tableauErreurs[${E_SGBDR_POSTGRES_CHECKPOINTER}]="Le processus d'écriture en tâche de fond \"checkpoint\" du SGBDR Postgres a un problème."
    E_SGBDR_POSTGRES_WRITER=`expr ${E_SGBDR_POSTGRES} + 3`
    tableauErreurs[${E_SGBDR_POSTGRES_WRITER}]="Le processus ??? \"writer\" du SGBDR Postgres a un problème."
    E_SGBDR_POSTGRES_WAL_WRITER=`expr ${E_SGBDR_POSTGRES} + 4`
    tableauErreurs[${E_SGBDR_POSTGRES_WAL_WRITER}]="Le processus d'écriture des journaux de transactions \"wal writer\" du SGBDR Postgres a un problème."
    E_SGBDR_POSTGRES_AUTOVACUUM_LAUNCHER=`expr ${E_SGBDR_POSTGRES} + 5`
    tableauErreurs[${E_SGBDR_POSTGRES_AUTOVACUUM_LAUNCHER}]="Le processus de maintenance des tables \"autovacuum launcher\" du SGBDR Postgres a un problème."
    E_SGBDR_POSTGRES_STATS_COLLECTOR=`expr ${E_SGBDR_POSTGRES} + 6`
    tableauErreurs[${E_SGBDR_POSTGRES_STATS_COLLECTOR}]="Le processus de récupération de statistiques \"stats collector\" du SGBDR Postgres a un problème."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES                     : ${jaune}${E_SGBDR_POSTGRES}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES_LOGGER              : ${jaune}${E_SGBDR_POSTGRES_LOGGER}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES_LOGGER}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES_CHECKPOINTER        : ${jaune}${E_SGBDR_POSTGRES_CHECKPOINTER}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES_CHECKPOINTER}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES_WRITER              : ${jaune}${E_SGBDR_POSTGRES_WRITER}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES_WRITER}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES_WAL_WRITER          : ${jaune}${E_SGBDR_POSTGRES_WAL_WRITER}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES_WAL_WRITER}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES_AUTOVACUUM_LAUNCHER : ${jaune}${E_SGBDR_POSTGRES_AUTOVACUUM_LAUNCHER}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES_AUTOVACUUM_LAUNCHER}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SGBDR_POSTGRES_STATS_COLLECTOR     : ${jaune}${E_SGBDR_POSTGRES_STATS_COLLECTOR}${normal} = ${jaune}${tableauErreurs[${E_SGBDR_POSTGRES_STATS_COLLECTOR}]}${normal}" >&2
    #................................................................................................................bdd
    E_BDD=140
    tableauErreurs[${E_BDD}]="La base de données a un problème."
    E_BDD_INCONNU=`expr ${E_BDD} + 1`
    tableauErreurs[${E_BDD_INCONNU}]="La base de données n'existe pas sur ce serveur."
    E_BDD_NOM_OBLIGATOIRE=`expr ${E_BDD} + 2`
    tableauErreurs[${E_BDD_NOM_OBLIGATOIRE}]="Le nom de la base de données est obligatoire."
    E_BDD_OBLIGATOIRE=`expr ${E_BDD} + 3`
    tableauErreurs[${E_BDD_OBLIGATOIRE}]="La base de données est obligatoire."
    E_BDD_CREATION=`expr ${E_BDD} + 4`
    tableauErreurs[${E_BDD_CREATION}]="Impossible de créer la base de données."
    E_BDD_SUPPRESSION=`expr ${E_BDD} + 5`
    tableauErreurs[${E_BDD_SUPPRESSION}]="Impossible de supprimer la base de données."
    E_BDD_NOM_PROPRIETAIRE_OBLIGATOIRE=`expr ${E_BDD} + 6`
    tableauErreurs[${E_BDD_NOM_PROPRIETAIRE_OBLIGATOIRE}]="Le nom du propriétaire des bases de données est obligatoire."
    E_BDD_NOM_PROPRIETAIRE_INCONNU=`expr ${E_BDD} + 7`
    tableauErreurs[${E_BDD_NOM_PROPRIETAIRE_INCONNU}]="Le nom du propriétaire est inconnu."
    E_BDD_INACCESSIBLE=`expr ${E_BDD} + 8`
    tableauErreurs[${E_BDD_INACCESSIBLE}]="La base de données est inaccessible."
    E_BDD_AUCUNE=`expr ${E_BDD} + 9`
    tableauErreurs[${E_BDD_AUCUNE}]="Aucune base de données n'existe pour le propriétaire."
    E_BDD_NOMBRE_REQUETE_NUL=`expr ${E_BDD} + 10`
    tableauErreurs[${E_BDD_NOMBRE_REQUETE_NUL}]="Le nombre de requêtes à répliquer est nul."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD                                : ${jaune}${E_BDD}${normal} = ${jaune}${tableauErreurs[${E_BDD}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_INCONNU                        : ${jaune}${E_BDD_INCONNU}${normal} = ${jaune}${tableauErreurs[${E_BDD_INCONNU}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_NOM_OBLIGATOIRE                : ${jaune}${E_BDD_NOM_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_BDD_NOM_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_OBLIGATOIRE                    : ${jaune}${E_BDD_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_BDD_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_CREATION                       : ${jaune}${E_BDD_CREATION}${normal} = ${jaune}${tableauErreurs[${E_BDD_CREATION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_SUPPRESSION                    : ${jaune}${E_BDD_SUPPRESSION}${normal} = ${jaune}${tableauErreurs[${E_BDD_SUPPRESSION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_NOM_PROPRIETAIRE_OBLIGATOIRE   : ${jaune}${E_BDD_NOM_PROPRIETAIRE_OBLIGATOIRE}${normal} = ${jaune}${tableauErreurs[${E_BDD_NOM_PROPRIETAIRE_OBLIGATOIRE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_NOM_PROPRIETAIRE_INCONNU       : ${jaune}${E_BDD_NOM_PROPRIETAIRE_INCONNU}${normal} = ${jaune}${tableauErreurs[${E_BDD_NOM_PROPRIETAIRE_INCONNU}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_INACCESSIBLE                   : ${jaune}${E_BDD_INACCESSIBLE}${normal} = ${jaune}${tableauErreurs[${E_BDD_INACCESSIBLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_AUCUNE                         : ${jaune}${E_BDD_AUCUNE}${normal} = ${jaune}${tableauErreurs[${E_BDD_AUCUNE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} BDD_NOMBRE_REQUETE_NUL             : ${jaune}${E_BDD_NOMBRE_REQUETE_NUL}${normal} = ${jaune}${tableauErreurs[${E_BDD_NOMBRE_REQUETE_NUL}]}${normal}" >&2
    #.......................................................................................................optimisation
    E_OPTIMISATION_EN_COURS=160
    tableauErreurs[${E_OPTIMISATION_EN_COURS}]="Une optimisation d'une base de données sur le serveur est en cours."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} OPTIMISATION_EN_COURS              : ${jaune}${E_OPTIMISATION_EN_COURS}${normal} = ${jaune}${tableauErreurs[${E_OPTIMISATION_EN_COURS}]}${normal}" >&2
    #.22/01/2018.....................................................................................................sql
    E_SQL=180
    tableauErreurs[${E_SQL}]="La requête SQL a générée une erreur."
    E_SQL_INCONNU=`expr ${E_SQL} + 1`
    tableauErreurs[${E_SQL_INCONNU}]="La requête SQL a générées une erreur non référencée."
    E_SQL_SYNTAXE=`expr ${E_SQL} + 2`
    tableauErreurs[${E_SQL_SYNTAXE}]="La syntaxe de la requête SQL est erronée."
    E_SQL_EXECUTION=`expr ${E_SQL} + 3`
    tableauErreurs[${E_SQL_EXECUTION}]="L'exécution de la requête SQL a générée une erreur."
    E_SQL_NOT_EXIST=`expr ${E_SQL} + 4`
    tableauErreurs[${E_SQL_NOT_EXIST}]="Exécution de la requête SQL sur quelque chose d'inexistant (colonne, etc.)."
    E_SQL_NOT_PERMISSION=`expr ${E_SQL} + 5`
    tableauErreurs[${E_SQL_NOT_PERMISSION}]="Permission non suffisante pour l'exécution de la requête SQL."
    E_SQL_INTERNE=`expr ${E_SQL} + 6`
    tableauErreurs[${E_SQL_INTERNE}]="Erreur interne à Postgres."
    E_SQL_CONNEXION=`expr ${E_SQL} + 7`
    tableauErreurs[${E_SQL_CONNEXION}]="Erreur lors de la connexion à la base de données."
    E_SQL_CORRESPONDANCE=`expr ${E_SQL} + 8`
    tableauErreurs[${E_SQL_CORRESPONDANCE}]="Paramètre ne correspondant à rien dans la base de données."
    E_SQL_NOT_FOUND=`expr ${E_SQL} + 9`
    tableauErreurs[${E_SQL_NOT_FOUND}]="Paramètre non trouvé dans la table."
    E_SQL_NOT_DISPONIBLE=`expr ${E_SQL} + 10`
    tableauErreurs[${E_SQL_NOT_DISPONIBLE}]="Base de données non disponible."
    E_SQL_QUOTE=`expr ${E_SQL} + 11`
    tableauErreurs[${E_SQL_QUOTE}]="Une quote est manquante dans la requête."
    E_SQL_DATE_MOIS=`expr ${E_SQL} + 12`
    tableauErreurs[${E_SQL_DATE_MOIS}]="Le mois dans une date n'est pas au format valide."
    E_SQL_DATE_JOUR=`expr ${E_SQL} + 13`
    tableauErreurs[${E_SQL_DATE_JOUR}]="Le jour dans une date n'est pas au format valide."
    E_SQL_CLAUSE_SELECT=`expr ${E_SQL} + 14`
    tableauErreurs[${E_SQL_CLAUSE_SELECT}]="La clause select n'est pas saisie."
    E_SQL_CLAUSE_FROM=`expr ${E_SQL} + 15`
    tableauErreurs[${E_SQL_CLAUSE_FROM}]="La clause from n'est pas saisie."
    E_SQL_DUPLICATE_KEY=`expr ${E_SQL} + 16`
    tableauErreurs[${E_SQL_DUPLICATE_KEY}]="Insertion impossible car doublon sur la clef."
    E_SQL_TABLE_VIDE=`expr ${E_SQL} + 17`
    tableauErreurs[${E_SQL_TABLE_VIDE}]="La table est vide."
    E_SQL_NOMBRE_RESULTAT_INCORRECT=`expr ${E_SQL} + 18`
    tableauErreurs[${E_SQL_NOMBRE_RESULTAT_INCORRECT}]="Le nombre de résultats attendus en incorrect."
    E_SQL_CANNOT_INSERT=`expr ${E_SQL} + 19`
    tableauErreurs[${E_SQL_CANNOT_INSERT}]="Erreur lors de l'insertion des données dans la table."
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL                                : ${jaune}${E_SQL}${normal} = ${jaune}${tableauErreurs[${E_SQL}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_INCONNU                        : ${jaune}${E_SQL_INCONNU}${normal} = ${jaune}${tableauErreurs[${E_SQL_INCONNU}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_SYNTAXE                        : ${jaune}${E_SQL_SYNTAXE}${normal} = ${jaune}${tableauErreurs[${E_SQL_SYNTAXE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_EXECUTION                      : ${jaune}${E_SQL_EXECUTION}${normal} = ${jaune}${tableauErreurs[${E_SQL_EXECUTION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_NOT_EXIST                      : ${jaune}${E_SQL_NOT_EXIST}${normal} = ${jaune}${tableauErreurs[${E_SQL_NOT_EXIST}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_NOT_PERMISSION                 : ${jaune}${E_SQL_NOT_PERMISSION}${normal} = ${jaune}${tableauErreurs[${E_SQL_NOT_PERMISSION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_INTERNE                        : ${jaune}${E_SQL_INTERNE}${normal} = ${jaune}${tableauErreurs[${E_SQL_INTERNE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_CONNEXION                      : ${jaune}${E_SQL_CONNEXION}${normal} = ${jaune}${tableauErreurs[${E_SQL_CONNEXION}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_CORRESPONDANCE                 : ${jaune}${E_SQL_CORRESPONDANCE}${normal} = ${jaune}${tableauErreurs[${E_SQL_CORRESPONDANCE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_NOT_FOUND                      : ${jaune}${E_SQL_NOT_FOUND}${normal} = ${jaune}${tableauErreurs[${E_SQL_NOT_FOUND}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_NOT_DISPONIBLE                 : ${jaune}${E_SQL_NOT_DISPONIBLE}${normal} = ${jaune}${tableauErreurs[${E_SQL_NOT_DISPONIBLE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_QUOTE                          : ${jaune}${E_SQL_QUOTE}${normal} = ${jaune}${tableauErreurs[${E_SQL_QUOTE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_DATE_MOIS                      : ${jaune}${E_SQL_DATE_MOIS}${normal} = ${jaune}${tableauErreurs[${E_SQL_DATE_MOIS}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_DATE_JOUR                      : ${jaune}${E_SQL_DATE_JOUR}${normal} = ${jaune}${tableauErreurs[${E_SQL_DATE_JOUR}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_CLAUSE_SELECT                  : ${jaune}${E_SQL_CLAUSE_SELECT}${normal} = ${jaune}${tableauErreurs[${E_SQL_CLAUSE_SELECT}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_CLAUSE_FROM                    : ${jaune}${E_SQL_CLAUSE_FROM}${normal} = ${jaune}${tableauErreurs[${E_SQL_CLAUSE_FROM}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_DUPLICATE_KEY                  : ${jaune}${E_SQL_DUPLICATE_KEY}${normal} = ${jaune}${tableauErreurs[${E_SQL_DUPLICATE_KEY}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_TABLE_VIDE                     : ${jaune}${E_SQL_TABLE_VIDE}${normal} = ${jaune}${tableauErreurs[${E_SQL_TABLE_VIDE}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_NOMBRE_RESULTAT_INCORRECT      : ${jaune}${E_SQL_NOMBRE_RESULTAT_INCORRECT}${normal} = ${jaune}${tableauErreurs[${E_SQL_NOMBRE_RESULTAT_INCORRECT}]}${normal}" >&2
    [[ ${DEBUG} -ge 4 ]] && echo -e "${nomFonction} SQL_CANNOT_INSERT                  : ${jaune}${E_SQL_CANNOT_INSERT}${normal} = ${jaune}${tableauErreurs[${E_SQL_CANNOT_INSERT}]}${normal}" >&2

    #.....................................................libération mémoire de variable(s) utilisée(s) dans la fonction
    unset nomFonction 

    #...................................................................................................................
    return $E_OK
}
