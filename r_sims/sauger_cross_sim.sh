#!/bin/bash
## sauger_cross_sim.sh by JPJ 2 vii 24
## PURPOSE: to run sauger_cross_sim.sh
## USAGE: sbatch sauger_cross_sim.sh

#SBATCH --job-name=sim
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --account=evolgen
#SBATCH --time=0-4:00:00
#SBATCH --mem=16G
#SBATCH -o stdout
#SBATCH -e stderr

module load arcc/1.0 gcc/12.2.0 r

cd /project/evolgen/jjahner/sauger_sims/r_sims/
Rscript sauger_cross_sim.R
