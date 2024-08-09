##########################################
## conceptual_fig.R
##########################################

## JPJ 8/8/24

## Purpose: to make a conceptual figure showing the different SFS
## Usage: Rscript conceptual_fig.R

set.seed(17)

## functions for calculating mean and variance for beta distributions
mean_beta <- function(alpha, beta){
	meanb <- alpha/(alpha+beta)
	return(meanb)
}

var_beta <- function(alpha, beta){
	varb <- (alpha*beta)/((alpha+beta)^2*(alpha+beta+1))
	return(varb)
}

## choosing three different betas with equal means and similarly spread variances
	## more rare: alpha = 0.16, 0.07
	## more common: alpha = 1.28, 0.56
	## based on empirical data = 0.48, 0.21

mean_beta(0.16, 0.07)	## 0.6956522
mean_beta(1.28, 0.56)	## 0.6956522
mean_beta(0.48, 0.21)	## 0.6956522

var_beta(0.16, 0.07)	## 0.1721303
var_beta(1.28, 0.56)	## 0.07454938
var_beta(0.48, 0.21)	## 0.1252782


## sample 1000 allele frequencies from the betas
rare <- rbeta(1000, 0.16, 0.07)
common <- rbeta(1000, 1.28, 0.56)
empirical <- rbeta(1000, 0.480, 0.21)

## plot histograms; one panel left blank; hatchery flow chart will go there
pdf(height=8, width=8, file="conceptual_base.pdf")
par(mar=c(5,5,1,1), mfrow=c(2,2))
hist(rare, breaks=50, main="", xlab="Allele frequency", ylab="Number of loci", cex.axis=1.25, cex.lab=1.5, las=1); box(lwd=1.5)
mtext("More rare variants", line=-1.5, adj=0.05, cex=1.25)
mtext(expression(alpha~"= 0.16; "~beta~"= 0.07"), line=-3.25, adj=0.05, cex=1.25)
mtext("mean = 0.696", line=-4.75, adj=0.03, cex=1.25)
mtext("var = 0.172", line=-6.5, adj=0.03, cex=1.25)
mtext("A", line=-0.75, adj=-0.25, cex=1.75)
hist(common, breaks=50, main="", xlab="Allele frequency", ylab="Number of loci", cex.axis=1.25, cex.lab=1.5, las=1); box(lwd=1.5)
mtext("More common variants", line=-1.5, adj=0.05, cex=1.25)
mtext(expression(alpha~"= 1.28; "~beta~"= 0.56"), line=-3.25, adj=0.05, cex=1.25)
mtext("mean = 0.696", line=-4.75, adj=0.03, cex=1.25)
mtext("var = 0.075", line=-6.5, adj=0.03, cex=1.25)
mtext("B", line=-0.75, adj=-0.25, cex=1.75)
hist(empirical, breaks=50, main="", xlab="Allele frequency", ylab="Number of loci", cex.axis=1.25, cex.lab=1.5, las=1); box(lwd=1.5)
mtext("Based on empirical data", line=-1.5, adj=0.05, cex=1.25)
mtext(expression(alpha~"= 0.48; "~beta~"= 0.21"), line=-3.25, adj=0.05, cex=1.25)
mtext("mean = 0.696", line=-4.75, adj=0.03, cex=1.25)
mtext("var = 0.125", line=-6.5, adj=0.03, cex=1.25)
mtext("C", line=-0.75, adj=-0.25, cex=1.75)
plot.new()
mtext("D", line=-0.75, adj=-0.25, cex=1.75)
dev.off()









