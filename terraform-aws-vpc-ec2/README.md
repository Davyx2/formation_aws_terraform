# INSTALLATION 

# Terraform
Nous avions construire une architecture de deployement base sur AWS

Deux instances dans le meme subnet  de type publique

Voici l'architecturemise en place:

1. Configuration de l'architecture
# vpc

 * Mettez vos clé d'acces au ressources amazon dans l'object provider (fichier  provider.tf)

 1. les informations à ajouté
 # owner, # access_key , #secret_key

Nous avions choisi pour le Lab la regions de Paris.
Elle peut etre remplacé

 2. aller dans le dossier ssh et faite:
 * cd  aws1 && ssh-keygen -t rsa -b 4096
 * cd  aws2 && ssh-keygen -t rsa -b 4096

 3. Installer terraform puis faite :
 * terraform apply


