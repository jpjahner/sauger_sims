#!/bin/bash
## trial00_slurm.sh by JPJ 5 iv 24
## PURPOSE: to run slim trial00
## USAGE: sbatch trial00_slurm.sh

#SBATCH --job-name=slim
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --account=evolgen
#SBATCH --time=1-0:00:00
#SBATCH --mem=1G
#SBATCH -o stdout
#SBATCH -e stderr

cd /project/evolgen/jjahner/sauger_sims/slim_trials/
/project/evolgen/bin/slim -m -t trial00.slim

