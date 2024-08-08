##########################################
## conceptual_fig.R
##########################################

## JPJ 8/8/24

## Purpose: to make a conceptual figure showing the different SFS
	## NOTE: one panel left blank; hatchery flow chart will go there
## Usage: Rscript conceptual_fig.R

set.seed(17)

rare <- rbeta(1000, 0.05, 0.02)
common <- rbeta(1000, 0.8, 0.6)
empirical <- rbeta(1000, 0.48, 0.21)


pdf(height=8, width=8, file="conceptual_base.pdf")
par(mar=c(5,5,1,1), mfrow=c(2,2))
hist(rare, breaks=50, main="", xlab="Allele frequency", ylab="Number of loci", cex.axis=1.25, cex.lab=1.5, las=1); box(lwd=1.5)
mtext("More rare variants", line=-1.5, adj=0.05, cex=1.25)
mtext(expression(alpha~"= 0.05; "~beta~"= 0.02"), line=-3.25, adj=0.05, cex=1.25)
mtext("A", line=-0.75, adj=-0.25, cex=1.75)
hist(common, breaks=50, main="", xlab="Allele frequency", ylab="Number of loci", cex.axis=1.25, cex.lab=1.5, las=1); box(lwd=1.5)
mtext("More common variants", line=-1.5, adj=0.05, cex=1.25)
mtext(expression(alpha~"= 0.8; "~beta~"= 0.6"), line=-3.25, adj=0.05, cex=1.25)
mtext("B", line=-0.75, adj=-0.25, cex=1.75)
hist(empirical, breaks=50, main="", xlab="Allele frequency", ylab="Number of loci", cex.axis=1.25, cex.lab=1.5, las=1); box(lwd=1.5)
mtext("Based on empirical data", line=-1.5, adj=0.05, cex=1.25)
mtext(expression(alpha~"= 0.48; "~beta~"= 0.21"), line=-3.25, adj=0.05, cex=1.25)
mtext("C", line=-0.75, adj=-0.25, cex=1.75)
plot.new()
mtext("D", line=-0.75, adj=-0.25, cex=1.75)
dev.off()









