#!/bin/bash
set -o errexit
if [ "$USER" != nemd ]; then
  echo This script is designed to be run in a specific environment!
  echo ""
  echo If you\'re on a local machine, you can open the notebook
  echo manually by running:
  echo ""
  echo jupyter-lab NEMD-workshop-2023.ipynb
  echo ""
  exit
fi
case "$1" in
  "")
    cd "${HOME}/NEMD_workshop_2023"
    git fetch origin
    git reset --hard origin/main
    ./start_workshop.sh setup
    ;;
  "setup")
    # Add steps here to fetch any additional material
    cd "${HOME}/NEMD_workshop_2023"
    if [ ! -f fluctuation_theorems/slides.pdf ]; then
      wget 'https://drive.google.com/uc?export=download&id=1U6D6vEcvqLgoPmZR_bAhm7VUmAv-xF-X' -O fluctuation_theorems/slides.pdf
    fi
    if [ ! -f machine_learning/ML_MPPs_exercises.ipynb ]; then
      wget 'https://drive.google.com/uc?export=download&id=11bbJ1x2UnDjDbpcuyy9issAgEiCiv9-x' -O machine_learning/ML_MPPs_exercises.ipynb
    fi
    ./start_workshop.sh run
    ;;
  "run")
    cd "${HOME}/NEMD_workshop_2023"
    jupyter-lab NEMD-workshop-2023.ipynb --no-browser --port 8889
    ;;
esac
