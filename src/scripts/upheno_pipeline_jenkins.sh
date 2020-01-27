#!/bin/sh

set -e

# Author: Nicolas Matentzoglu, European Bioinformatics Institute (EMBL-EBI)
# Monarch Initiative, https://monarchinitiative.org

pwd
ls -l ../sparql
ls -l ../ontology
ls -l ../curation
echo "REMOVING XPO.OWL REMOVEREMOVEREMOVE"
rm ../curation/ontologies-for-matching/xpo.owl
python3 upheno_prepare.py ../curation/upheno-config.yaml
python3 upheno_create_profiles.py ../curation/upheno-config.yaml
python3 upheno-stats.py ../curation/upheno-config.yaml

