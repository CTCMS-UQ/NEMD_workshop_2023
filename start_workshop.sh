#!/bin/bash
set -o errexit
case "$1" in
  "")
    cd "${HOME}/NEMD_workshop_2023"
    git pull
    ./start_workshop.sh setup
    ;;
  "setup")
    # Add steps here to fetch any additional material
    ./start_workshop.sh run
    ;;
  "run")
    cd "${HOME}/NEMD_workshop_2023"
    jupyter-lab NEMD-workshop-2023.ipynb --no-browser --port 8088
    ;;
esac
