#!/usr/bin/perl
## slim_wrapper.pl by JPJ 18 iv 24
## PURPOSE: to launch new slim trials (iterating across different parameters)

use strict;
use warnings;
use File::Find;
use File::Path;


################################################
## beartooth specifications
################################################

my $account = 'evolgen';
my $time = '7-00:00:00';
my $mem = '16G';


################################################
## defining parameters to iterate across
################################################

## population size
my @popNs = ('500','1000','5000','10000');

## generations
my @gens = ('50000','75000','100000','125000','150000','175000','200000');

## trial name
my $trial = 'test';

## create directory for trial output
unless(-e '${trial}'){
  mkdir "${trial}", 0755 or die "Failed to make $trial directory\n";
}


################################################
## create new slim input and launch slurm for each combination
################################################

foreach my $popN (@popNs){
  foreach my $gen (@gens){
    
    ## create slim input file
    open (OUT, "> $trial"."/popN_"."$popN"."_gen_"."$gen".".slim");
    print OUT "initialize() {\n";
    print OUT "defineConstant(\"L\", 864000000);\n";
    print OUT "initializeMutationRate(1e-8);\n";
    print OUT "initializeMutationType(\"m1\", 0.5, \"f\", 0.0);\n";
    print OUT "initializeGenomicElementType(\"g1\", m1, 1.0);\n";
    print OUT "initializeGenomicElement(g1, 0, L-1);\n";
    print OUT "rates = c(1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8, 0.5, 1e-8);\n";
    print OUT "ends = c(35999999, 36000000, 71999999, 72000000, 107999999, 108000000, 143999999, 144000000, 179999999, 180000000, 215999999, 216000000, 251999999, 252000000, 287999999, 288000000, 323999999, 324000000, 359999999, 360000000, 395999999, 396000000, 431999999, 432000000, 467999999, 468000000, 503999999, 504000000, 539999999, 540000000, 575999999, 576000000, 611999999, 612000000, 647999999, 648000000, 683999999, 684000000, 719999999, 720000000, 755999999, 756000000, 791999999, 792000000, 827999999, 828000000, 863999999);\n";
    print OUT "initializeRecombinationRate(rates, ends);\n";
    print OUT "}\n";
    print OUT "\n";
    print OUT "1 early () {\n";
    print OUT "sim.addSubpop(\"p1\", "."$popN".");\n";
    print OUT "}\n";
    print OUT "\n";
    print OUT "$gen"." late() {\n";
    print OUT "g=p1.individuals;\n";
    print OUT "g.genomes.outputVCF(filePath=\""."$trial"."/popN_"."$popN"."_gen_"."$gen"."\.vcf\", simplifyNucleotides=T);\n";
    print OUT "sim.simulationFinished();\n";
    print OUT "}\n";
    close (OUT);
    
    ## launch slurm job
    ## each line of the sbatch gets added to @slurmdirectives,
    ## which is joined together using \n at the end
    my @slurmdirectives = "#!/bin/bash";
    push @slurmdirectives, "#SBATCH --job-name=slim";
    push @slurmdirectives, "#SBATCH --nodes=1";
    push @slurmdirectives, "#SBATCH --ntasks=1";
    push @slurmdirectives, "#SBATCH --cpus-per-task=1";
    push @slurmdirectives, "#SBATCH --account=$account";
    push @slurmdirectives, "#SBATCH --time=$time";
    push @slurmdirectives, "#SBATCH --mem=$mem";
    push @slurmdirectives, "/project/evolgen/bin/slim -m -t "."$trial"."/popN_"."$popN"."_gen_"."$gen".".slim";
    push @slurmdirectives, "\n";
    my $slurm = join "\n", @slurmdirectives;
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
