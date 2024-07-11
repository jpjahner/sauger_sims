#!/usr/bin/perl
## sauger_cross_sim.pl by JPJ 18 iv 24
## PURPOSE: to launch new sauger cross sims

use strict;
use warnings;
use File::Find;
use File::Path;


################################################
## beartooth specifications
################################################

my $account = 'evolgen';
my $time = '04:00:00';
my $mem = '16G';

## trial name
my $trial = 'wrap_test1';

## create directory for trial output
unless(-e '${trial}'){
  mkdir "${trial}", 0755 or die "Failed to make $trial directory\n";
}


################################################
## defining parameters to iterate across
################################################

## these values will be sent to args in the R script

## nloci
my @nloci = ('100', '500', '1000', '5000', '10000');

## proportion of wild individuals sampled
my @wild_samp_prop = ('0.2', '0.4', '0.6', '0.8', '1');


################################################
## launch new slurm for each combination
################################################

foreach my $loci (@nloci){
  foreach my $samp (@wild_samp_prop){
    my @slurmdirectives = "#!/bin/bash";
    push @slurmdirectives, "#SBATCH --job-name=rsim";
    push @slurmdirectives, "#SBATCH --nodes=1";
    push @slurmdirectives, "#SBATCH --ntasks=1";
    push @slurmdirectives, "#SBATCH --cpus-per-task=1";
    push @slurmdirectives, "#SBATCH --account=$account";
    push @slurmdirectives, "#SBATCH --time=$time";
    push @slurmdirectives, "#SBATCH --mem=$mem";
    push @slurmdirectives, "#SBATCH -o "."$trial"."/stdout_"."$loci"."_"."$samp";
    push @slurmdirectives, "#SBATCH -e "."$trial"."/stderr_"."$loci"."_"."$samp";
    push @slurmdirectives, "module load arcc/1.0 gcc/12.2.0 r/4.4.0";
    push @slurmdirectives, "cd /project/evolgen/jjahner/sauger_sims/r_sims/"."$trial";
    push @slurmdirectives, "Rscript ../sauger_cross_sim.R "."$loci"." "."$samp";
    push @slurmdirectives, "\n";
    my $slurm = join "\n", @slurmdirectives;
    #print $slurm;
    runserialjob($slurm); ## launch the slurm job (see subroutine below)
  }
}


################################################
## subroutine that launches the slurm job
################################################

sub runserialjob{
  my $slurmjob = $_[0];
  $slurmjob .= "\nexit\n";
  open SBATCH, "| sbatch 1>/dev/null" or die "Failed to fork for sbatch; $!\n";
  print SBATCH "$slurmjob";
  close(SBATCH) or die "Couldn't close SBATCH\n";
}










