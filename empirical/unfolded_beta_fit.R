#############################################
## unfolded_beta_fit.R
#############################################

## JPJ 2 vii 24
## PURPOSE: to fit a beta distribution to a site frequency spectrum
## USAGE: Rscript unfolded_beta_fit.R

library(betafunctions)

## read in data
freqs <- read.delim("afreqs_0.5_0.01_nosex_hwe001_noHead.frq", header=FALSE)

## fit the 2 parameter beta (alpha, beta)
beta_fit <- Beta.2p.fit(freqs[,5])

## plot SFS histogram with fitted beta
pdf("unfolded_0.5_0.01_nosex_hwe001.pdf", height=5, width=5)
par(mar=c(5,5,1,1))
hist(freqs[,5], breaks=100, xlab="Allele frequency", ylab="Number of loci", main="", cex.axis=1.25, cex.lab=1.5); box(lwd=1.5)
par(new=TRUE)
dbeta_seq_x <- seq(beta_fit$l, beta_fit$u, length=100)
dbeta_seq_y <- dBeta.4P(seq(beta_fit$l, beta_fit$u, length=100), beta_fit$l, beta_fit$u, beta_fit$alpha, beta_fit$beta)
plot(dbeta_seq_x[2:99], dbeta_seq_y[2:99], ylim=c(0,max(dbeta_seq_y[2:99])), type="l", col="red", lwd=2, xlab="", ylab="", axes=FALSE)
mtext(bquote(alpha==.(round(beta_fit$alpha,3))), cex=1.25, adj=0.02, line=-1.15)
mtext(bquote(beta==.(round(beta_fit$beta,3))), cex=1.25, adj=0.02, line=-2.4)
dev.off()




