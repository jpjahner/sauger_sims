#!/bin/bash
## trial01_slurm.sh by JPJ 8 iv 24
## PURPOSE: to run slim trial01, export vcf, and then convert to genotype matrix
## USAGE: sbatch trial01_slurm.sh

#SBATCH --job-name=slim
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --account=evolgen
#SBATCH --time=7-00:00:00
#SBATCH --mem=16G
#SBATCH -o stdout
#SBATCH -e stderr

cd /project/evolgen/jjahner/sauger_sims/slim_trials/
/project/evolgen/bin/slim -m -t trial01.slim

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf slim_out.vcf --012
## rm slim_out.vcf
rm out.012.indv
rm out.012.pos

mv slim_out.vcf trial01.vcf
mv out.012 trial01_genos.txt
