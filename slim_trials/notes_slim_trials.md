## Filter vcfs from wrapper output (test 1)

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

## Filter vcfs from wrapper output (test 2)

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


## Filter vcfs from wrapper output (test 3; same as 2, but with lower mutation rate)

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_500_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 28924 out of a possible 58563 Sites
vcftools --vcf popN_500_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 36461 out of a possible 66801 Sites
vcftools --vcf popN_500_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 48122 out of a possible 78448 Sites
vcftools --vcf popN_500_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 47386 out of a possible 77050 Sites
vcftools --vcf popN_500_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 47591 out of a possible 77674 Sites
vcftools --vcf popN_500_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 48101 out of a possible 77994 Sites
vcftools --vcf popN_500_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 48217 out of a possible 79101 Sites

vcftools --vcf popN_1000_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 42083 out of a possible 115797 Sites
vcftools --vcf popN_1000_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 57201 out of a possible 132449 Sites
vcftools --vcf popN_1000_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 89807 out of a possible 165753 Sites
vcftools --vcf popN_1000_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 93475 out of a possible 169462 Sites
vcftools --vcf popN_1000_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 94873 out of a possible 171384 Sites
vcftools --vcf popN_1000_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 95049 out of a possible 170661 Sites
vcftools --vcf popN_1000_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 95706 out of a possible 171933 Sites

vcftools --vcf popN_1500_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 52179 out of a possible 175905 Sites
vcftools --vcf popN_1500_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 72506 out of a possible 197212 Sites
vcftools --vcf popN_1500_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 125038 out of a possible 251098 Sites
vcftools --vcf popN_1500_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 138848 out of a possible 266700 Sites
vcftools --vcf popN_1500_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 142448 out of a possible 270028 Sites
vcftools --vcf popN_1500_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 142125 out of a possible 270333 Sites
vcftools --vcf popN_1500_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 141055 out of a possible 267742 Sites

vcftools --vcf popN_2000_gen_500.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 59614 out of a possible 233197 Sites
vcftools --vcf popN_2000_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 85758 out of a possible 263091 Sites
vcftools --vcf popN_2000_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 154226 out of a possible 335060 Sites
vcftools --vcf popN_2000_gen_10000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 180595 out of a possible 361419 Sites
vcftools --vcf popN_2000_gen_15000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 185739 out of a possible 366030 Sites
vcftools --vcf popN_2000_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 190218 out of a possible 370580 Sites
vcftools --vcf popN_2000_gen_25000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 188330 out of a possible 368826 Sites

```




## Filter vcfs from wrapper output (test 4)

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_100_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 10363 out of a possible 12831 Sites
vcftools --vcf popN_100_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 9798 out of a possible 12062 Sites
vcftools --vcf popN_100_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 9949 out of a possible 12294 Sites
vcftools --vcf popN_100_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 9947 out of a possible 12302 Sites
vcftools --vcf popN_100_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 10142 out of a possible 12436 Sites

vcftools --vcf popN_125_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 12032 out of a possible 16153 Sites
vcftools --vcf popN_125_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11799 out of a possible 15988 Sites
vcftools --vcf popN_125_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11497 out of a possible 15617 Sites
vcftools --vcf popN_125_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11802 out of a possible 16091 Sites
vcftools --vcf popN_125_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11825 out of a possible 15911 Sites

vcftools --vcf popN_150_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 13985 out of a possible 18672 Sites
vcftools --vcf popN_150_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 14502 out of a possible 19305 Sites
vcftools --vcf popN_150_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 14952 out of a possible 19953 Sites
vcftools --vcf popN_150_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 14947 out of a possible 19740 Sites
vcftools --vcf popN_150_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 14067 out of a possible 18949 Sites

vcftools --vcf popN_175_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 15989 out of a possible 22884 Sites
vcftools --vcf popN_175_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 16689 out of a possible 23998 Sites
vcftools --vcf popN_175_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 17033 out of a possible 24040 Sites
vcftools --vcf popN_175_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 16346 out of a possible 23292 Sites
vcftools --vcf popN_175_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 16132 out of a possible 23198 Sites

vcftools --vcf popN_200_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 18133 out of a possible 26191 Sites
vcftools --vcf popN_200_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 19390 out of a possible 27571 Sites
vcftools --vcf popN_200_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 19374 out of a possible 27379 Sites
vcftools --vcf popN_200_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 19510 out of a possible 27705 Sites
vcftools --vcf popN_200_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 19898 out of a possible 27845 Sites

vcftools --vcf popN_300_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 25230 out of a possible 39848 Sites
vcftools --vcf popN_300_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 28876 out of a possible 43880 Sites
vcftools --vcf popN_300_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 29363 out of a possible 44337 Sites
vcftools --vcf popN_300_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 28157 out of a possible 42782 Sites
vcftools --vcf popN_300_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 29239 out of a possible 43913 Sites

vcftools --vcf popN_400_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 30988 out of a possible 53279 Sites
vcftools --vcf popN_400_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 36198 out of a possible 59172 Sites
vcftools --vcf popN_400_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 37910 out of a possible 60367 Sites
vcftools --vcf popN_400_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 38369 out of a possible 61037 Sites
vcftools --vcf popN_400_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 38086 out of a possible 60077 Sites

vcftools --vcf popN_500_gen_1000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 37332 out of a possible 67521 Sites
vcftools --vcf popN_500_gen_2000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 43499 out of a possible 73832 Sites
vcftools --vcf popN_500_gen_3000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 46901 out of a possible 77253 Sites
vcftools --vcf popN_500_gen_4000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 47691 out of a possible 78007 Sites
vcftools --vcf popN_500_gen_5000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 47928 out of a possible 77723 Sites

## sfs for popN_125 scenarios
vcftools --vcf popN_125_gen_1000.vcf --freq2 --maf 0.01 --out popN_125_gen_1000
vcftools --vcf popN_125_gen_2000.vcf --freq2 --maf 0.01 --out popN_125_gen_2000
vcftools --vcf popN_125_gen_3000.vcf --freq2 --maf 0.01 --out popN_125_gen_3000
vcftools --vcf popN_125_gen_4000.vcf --freq2 --maf 0.01 --out popN_125_gen_4000
vcftools --vcf popN_125_gen_5000.vcf --freq2 --maf 0.01 --out popN_125_gen_5000

grep -v "CHROM" popN_125_gen_1000.frq > popN_125_gen_1000_noHead.frq
grep -v "CHROM" popN_125_gen_2000.frq > popN_125_gen_2000_noHead.frq
grep -v "CHROM" popN_125_gen_3000.frq > popN_125_gen_3000_noHead.frq
grep -v "CHROM" popN_125_gen_4000.frq > popN_125_gen_4000_noHead.frq
grep -v "CHROM" popN_125_gen_5000.frq > popN_125_gen_5000_noHead.frq

module load arcc/1.0 gcc/12.2.0 r/4.2.2
## change input/output each time
Rscript /project/evolgen/jjahner/sauger_sims/empirical/empirical_beta_fit.R


```


## Filter vcfs from wrapper output (test 5)

```{bash}
module load arcc/1.0 gcc/12.2.0 vcftools/0.1.16
vcftools --vcf popN_125_gen_20000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11536 out of a possible 15646 Sites
vcftools --vcf popN_125_gen_40000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11949 out of a possible 16129 Sites
vcftools --vcf popN_125_gen_60000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11822 out of a possible 15916 Sites
vcftools --vcf popN_125_gen_80000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11710 out of a possible 16071 Sites
vcftools --vcf popN_125_gen_100000.vcf --keep ../inds_to_keep.txt --maf 0.01
    ## After filtering, kept 11719 out of a possible 15886 Sites

vcftools --vcf popN_125_gen_20000.vcf --freq2 --maf 0.01 --out popN_125_gen_20000
vcftools --vcf popN_125_gen_40000.vcf --freq2 --maf 0.01 --out popN_125_gen_40000
vcftools --vcf popN_125_gen_60000.vcf --freq2 --maf 0.01 --out popN_125_gen_60000
vcftools --vcf popN_125_gen_80000.vcf --freq2 --maf 0.01 --out popN_125_gen_80000
vcftools --vcf popN_125_gen_100000.vcf --freq2 --maf 0.01 --out popN_125_gen_100000

grep -v "CHROM" popN_125_gen_20000.frq > popN_125_gen_20000_noHead.frq
grep -v "CHROM" popN_125_gen_40000.frq > popN_125_gen_40000_noHead.frq
grep -v "CHROM" popN_125_gen_60000.frq > popN_125_gen_60000_noHead.frq
grep -v "CHROM" popN_125_gen_80000.frq > popN_125_gen_80000_noHead.frq
grep -v "CHROM" popN_125_gen_100000.frq > popN_125_gen_100000_noHead.frq

module load arcc/1.0 gcc/12.2.0 r/4.2.2
## change input/output each time
Rscript /project/evolgen/jjahner/sauger_sims/empirical/empirical_beta_fit.R

```







