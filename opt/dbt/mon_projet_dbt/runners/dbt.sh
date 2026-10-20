#!/bin/bash
# Runner local pour dbt
# Utilise le venv dédié et se place dans le répertoire du projet
# pour que dbt trouve toujours dbt_project.yml, quel que soit
# le répertoire depuis lequel le script est appelé.

PROJECT_DIR="/data-plateforme/opt/dbt/mon_projet_dbt"
DBT_BIN="/data-plateforme/opt/dbt/venv/bin/dbt"

cd "$PROJECT_DIR" || exit 1
exec "$DBT_BIN" "$@"
