#!/bin/bash
chmod u+x run.sh
clear
python u10115536_HW1_Experiment.py |& tee program_output/HW1-Output.txt # Generate a timestamped output listing
