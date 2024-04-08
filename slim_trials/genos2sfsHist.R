#####################################
## genos2sfsHist.R
#####################################

## JPJ 4/7/24

## load in the data
genos_ids <- read.delim("trial00_genos.txt", header=FALSE)

## remove ids column
genos <- genos_ids[,-1]

## calculate folded allele frequencies
afreqs <- matrix(NA, dim(genos)[2], 1)
for (i in 1:dim(genos)[2]) {
	mean_afreq <- mean(genos[,i]) / 2
	if (mean_afreq <= 0.5)	{ afreqs[i,1] <- mean_afreq }
	else					{ afreqs[i,1] <- 1 - mean_afreq }
}

## folded sfs histogram
pdf("trial00_sfsHist.pdf", height=5, width=5)
par(mar=c(5,5,1,1))
hist(afreqs, xlab="Folded allele frequency", ylab="Number of loci", main="", breaks=50, cex.lab=1.5, cex.axis=1.25, las=1)
box(lwd=1)
dev.off()

