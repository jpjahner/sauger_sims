# README

This repo stores code and output for a simulation exercise evaluating the power for detecting offspring using genetic parentage in a stocking context

Contact: Josh Jahner, jpjahner@gmail.com


## Slim models

* [trial00.slim](slim_trials/trial00.slim): simple scenario to test slim

* [trial01.slim](slim_trials/trial01.slim): added in more realistic genome structure



### Example launching a single model:

```{bash}
sbatch trial01_slurm.sh
```

### Example launching several models using a Perl wrapper:

```{bash}
perl slim_wrapper.pl
```




## Summarizing model outputs

### Filter vcfs from wrapper output (test 1)

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_500_gen_50000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 81007 out of a possible 132382 Sites
vcftools --vcf popN_500_gen_75000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 80121 out of a possible 131028 Sites
vcftools --vcf popN_500_gen_100000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 79971 out of a possible 130372 Sites
vcftools --vcf popN_500_gen_125000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 79805 out of a possible 131344 Sites
vcftools --vcf popN_500_gen_150000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 80403 out of a possible 130854 Sites
vcftools --vcf popN_500_gen_175000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 80062 out of a possible 131157 Sites
vcftools --vcf popN_500_gen_200000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 79792 out of a possible 130326 Sites
vcftools --vcf popN_1000_gen_50000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 157701 out of a possible 285083 Sites
vcftools --vcf popN_1000_gen_75000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 158971 out of a possible 285716 Sites
vcftools --vcf popN_1000_gen_100000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 158552 out of a possible 286077 Sites
vcftools --vcf popN_1000_gen_125000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 159762 out of a possible 286599 Sites
vcftools --vcf popN_1000_gen_150000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 157831 out of a possible 285643 Sites
vcftools --vcf popN_1000_gen_175000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 158727 out of a possible 286264 Sites
vcftools --vcf popN_1000_gen_200000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 158932 out of a possible 287205 Sites
```

### Filter vcfs from wrapper output (test 2)

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_500_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 48599 out of a possible 99608 Sites
vcftools --vcf popN_500_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 61372 out of a possible 112091 Sites
vcftools --vcf popN_500_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 79260 out of a possible 129896 Sites
vcftools --vcf popN_500_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 81252 out of a possible 132019 Sites
vcftools --vcf popN_500_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 79391 out of a possible 130174 Sites
vcftools --vcf popN_500_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 80098 out of a possible 130170 Sites
vcftools --vcf popN_500_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 79423 out of a possible 130523 Sites

vcftools --vcf popN_1000_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 71041 out of a possible 195674 Sites
vcftools --vcf popN_1000_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 95460 out of a possible 221657 Sites
vcftools --vcf popN_1000_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 149886 out of a possible 276898 Sites
vcftools --vcf popN_1000_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 160524 out of a possible 287302 Sites
vcftools --vcf popN_1000_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 160270 out of a possible 288478 Sites
vcftools --vcf popN_1000_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 157575 out of a possible 285901 Sites
vcftools --vcf popN_1000_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 159987 out of a possible 287682 Sites

vcftools --vcf popN_1500_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 87901 out of a possible 294265 Sites
vcftools --vcf popN_1500_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 123798 out of a possible 333010 Sites
vcftools --vcf popN_1500_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 208928 out of a possible 422531 Sites
vcftools --vcf popN_1500_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 231414 out of a possible 443424 Sites
vcftools --vcf popN_1500_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 236372 out of a possible 449325 Sites
vcftools --vcf popN_1500_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 237051 out of a possible 447251 Sites
vcftools --vcf popN_1500_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 239978 out of a possible 450085 Sites

vcftools --vcf popN_2000_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 99257 out of a possible 390808 Sites
vcftools --vcf popN_2000_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 142385 out of a possible 440307 Sites
vcftools --vcf popN_2000_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 257650 out of a possible 560766 Sites
vcftools --vcf popN_2000_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 299901 out of a possible 599994 Sites
vcftools --vcf popN_2000_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 312072 out of a possible 614229 Sites
vcftools --vcf popN_2000_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 317906 out of a possible 619359 Sites
vcftools --vcf popN_2000_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 316773 out of a possible 618723 Sites

## sfs for one scenario
vcftools --vcf popN_500_gen_500.vcf --freq2  --maf 0.01 --out popN_500_gen_500
grep -v "CHROM" popN_500_gen_500.frq > popN_500_gen_500_noHead.frq    ## removes header
module load r/4.2.2
Rscript /project/evolgen/jjahner/sauger_sims/empirical/empirical_beta_fit.R
```
/project/evolgen/jjahner/sauger_sims/slim_trials/test2

### Plot the folded site frequency spectrum

```{bash}
module load arcc/1.0 gcc/12.2.0 r/4.2.2
Rscript genos2sfsHist.R
```

### Export allele frequencies from the vcf to parameterize the SFS

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_500_gen_50000.vcf --freq2

grep -v "CHROM" out.frq > out_noHead.frq    ## removes header
module load r/4.2.2
Rscript sfs_beta_fit.R  ## currently need to hard code input file and maf 
```





## Parameterizing the SFS from Will's empirical data

### all individuals
```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --freq2 --out afreqs_0.5_0.01_nosex
    ## After filtering, kept 576 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex.frq > afreqs_0.5_0.01_nosex_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only the downstream individuals
```{bash}
grep "Bighorn" sauger_emu_meta_groups.csv | cut -f 1 -d "," > downstream_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep downstream_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_downstream
    ## After filtering, kept 484 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_downstream.frq > afreqs_0.5_0.01_nosex_downstream_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only the upstream individuals
```{bash}
grep "Wind\|Boysen" sauger_emu_meta_groups.csv | cut -f 1 -d "," > upstream_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep upstream_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_upstream
    ## After filtering, kept 92 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_upstream.frq > afreqs_0.5_0.01_nosex_upstream_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only Wind River individuals
```{bash}
grep "Wind" sauger_emu_meta_groups.csv | cut -f 1 -d "," > wind_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep wind_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_wind
    ## After filtering, kept 61 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_wind.frq > afreqs_0.5_0.01_nosex_wind_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```

### only Boysen individuals
```{bash}
grep "Boysen" sauger_emu_meta_groups.csv | cut -f 1 -d "," > boysen_inds.txt

module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --keep boysen_inds.txt --freq2 --out afreqs_0.5_0.01_nosex_boysen
    ## After filtering, kept 31 out of 576 Individuals
    ## After filtering, kept 12045 out of a possible 12045 Sites

grep -v "CHROM" afreqs_0.5_0.01_nosex_boysen.frq > afreqs_0.5_0.01_nosex_boysen_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```


### all individuals with HWE filter
NOTE: tested with --hwe of 0.05, 0.01, and 0.001
```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf sauger_0.5_0.01_nosex_filt.vcf --freq2 --hwe 0.001 --out afreqs_0.5_0.01_nosex_hwe001
    ## After filtering, kept 576 out of 576 Individuals
    ## After filtering, kept 7474 out of a possible 12045 Sites (--hwe 0.05)
    ## After filtering, kept 8174 out of a possible 12045 Sites (--hwe 0.01)
    ## After filtering, kept 8797 out of a possible 12045 Sites (--hwe 0.001)

grep -v "CHROM" afreqs_0.5_0.01_nosex_hwe001.frq > afreqs_0.5_0.01_nosex_hwe001_noHead.frq    ## removes header
module load r/4.2.2
Rscript empirical_beta_fit.R    ## change input/output file each time
```




## Acknowledgments

* Funding for this work was provided by Wyoming Game and Fish.

* JPJ was supported by the Modelscape Consortium with funding from the National Science Foundation (OIA-2019528).

* Analyses were performed using University of Wyoming's Advanced Research Computing Center and its Beartooth Computing Environment, Intel x86.64 cluster [https://doi.org/10.15786/M2FY47](https://doi.org/10.15786/M2FY47)



