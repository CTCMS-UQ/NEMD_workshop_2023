#!/bin/bash
set -o nounset
set -o errexit

mkdir -p "$1"
cd "$1"

case $1 in
  'fluctuation_theorems')
    wget 'https://drive.google.com/uc?id=1NxBPWjiX3XISs-HGo04NJ02HZ1atTpJm' -O notebook.ipynb
    # wget 'TODO' -O data.tar.gz
    # tar -xzvf data.tar.gz
    ;;
  'machine_learning')
    wget 'TODO' -O notebook.ipynb
    ;;
  'edl')
    wget 'TODO' -O notebook.ipynb
    ;;
  'flow')
    wget 'https://drive.google.com/uc?id=1QqLr00D_jIweWVYqB7EEehY7YCDykjhR' -O nemd_code_examples.tar.gz
    tar -xzvf nemd_code_examples.tar.gz
    echo "Compiling NEMD"
    make
    ;;
  'tribology')
    wget 'TODO' -O notebook.ipynb
    ;;
esac
echo "================================================================================"
echo "=                                     DONE                                     ="
echo "================================================================================"
