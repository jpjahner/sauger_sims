#############################################
## empirical_beta_fit.R
#############################################

## JPJ 30 iv 24
## PURPOSE: to fit a beta distribution to a site frequency spectrum
## USAGE: Rscript empirical_beta_fit.R

library(betafunctions)

## read in data
freqs <- read.delim("afreqs_0.5_0.01_nosex_downstream_noHead.frq", header=FALSE)


## fold the allele frequencies
folded <- matrix(NA, dim(freqs)[1], 1)
for (i in 1:dim(freqs)[1]){
	if (freqs[i,5] <= 0.5)	{ folded[i,1] <- freqs[i,5] }
	else					{ folded[i,1] <- 1 - freqs[i,5] }
}


## subset based on minor allele frequency cutoff
maf <- 0.01
maf_cut <- matrix(NA, dim(freqs)[1], 1)
for (i in 1:dim(freqs)[1]) {
	if (folded[i,1] < maf)	{ maf_cut[i,1] <- 0 }
	else					{ maf_cut[i,1] <- 1 }
}
maf_cut_folded <- subset(folded, maf_cut==1)


## fit the 4 parameter beta (alpha, beta, lower, upper)
beta_fit_maf_cut_folded <- Beta.4p.fit(maf_cut_folded[,1])

## plot SFS histogram with fitted beta
pdf("beta_fit_0.5_0.01_nosex_downstream.pdf", height=5, width=5)
par(mar=c(5,5,1,1))
hist(maf_cut_folded[,1], breaks=100, xlab="Folded allele frequency", ylab="Number of loci", main="", cex.axis=1.25, cex.lab=1.5); box(lwd=1.5)
par(new=TRUE)
dbeta_seq_x <- seq(beta_fit_maf_cut_folded$l,beta_fit_maf_cut_folded$u, length=100)
dbeta_seq_y <- dBeta.4P(seq(beta_fit_maf_cut_folded$l, beta_fit_maf_cut_folded$u, length=100), beta_fit_maf_cut_folded$l, beta_fit_maf_cut_folded$u, beta_fit_maf_cut_folded$alpha, beta_fit_maf_cut_folded$beta)
plot(dbeta_seq_x[2:99], dbeta_seq_y[2:99], ylim=c(0,dbeta_seq_y[2]), type="l", col="red", lwd=2, xlab="", ylab="", axes=FALSE)
mtext(bquote("maf"==.(maf)), cex=1.25, adj=0.98, line=-1.25)
mtext(bquote(alpha==.(round(beta_fit_maf_cut_folded$alpha,3))), cex=1.25, adj=0.98, line=-2.4)
mtext(bquote(beta==.(round(beta_fit_maf_cut_folded$beta,3))), cex=1.25, adj=0.98, line=-3.75)
dev.off()




