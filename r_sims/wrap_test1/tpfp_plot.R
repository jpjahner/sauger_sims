######################################
## tpfp_plot.R
######################################

## JPJ 18 ix 24

## PURPOSE: to creat a plot showing true and false positive results for sim output
	## just using the f2s for now
## USAGE: Rscript tpfp_plot.R

library(MetBrewer)
wild_cols <- met.brewer("Johnson", 5)

tpfp <- read.delim("tpfp_pars.txt", header=TRUE, sep=" ")
f2s <- subset(tpfp, tpfp[,3]=="f2")

pdf(file="tpfp_plot.pdf", height=4.5, width=9)
par(mar=c(5,5,1,1), mfrow=c(1,2))
## true positives
plot(0, type="n", xlim=c(0,5), ylim=c(0,max(f2s[,4])), xlab="Number of loci", ylab="True positives", xaxt="n", cex.lab=1.5)
axis(1, at=c(0.5, 1.5, 2.5, 3.5, 4.5), labels=c(100, 500, 1000, 5000, 10000))
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.2, 4], type="o", pch=23, bg=wild_cols[1], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.4, 4], type="o", pch=23, bg=wild_cols[2], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.6, 4], type="o", pch=23, bg=wild_cols[3], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.8, 4], type="o", pch=23, bg=wild_cols[4], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==1.0, 4], type="o", pch=23, bg=wild_cols[5], cex=2)
## false positives
plot(0, type="n", xlim=c(0,5), ylim=c(0,max(f2s[,5])), xlab="Number of loci", ylab="False positives", xaxt="n", cex.lab=1.5)
axis(1, at=c(0.5, 1.5, 2.5, 3.5, 4.5), labels=c(100, 500, 1000, 5000, 10000))
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.2, 5], type="o", pch=23, bg=wild_cols[1], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.4, 5], type="o", pch=23, bg=wild_cols[2], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.6, 5], type="o", pch=23, bg=wild_cols[3], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==0.8, 5], type="o", pch=23, bg=wild_cols[4], cex=2)
points(c(0.5, 1.5, 2.5, 3.5, 4.5), f2s[f2s[,2]==1.0, 5], type="o", pch=23, bg=wild_cols[5], cex=2)
legend("topright", title="Wild inds sampled", legend=c("100%", "80%", "60%", "40%", "20%"), pch=22, pt.bg=rev(wild_cols), pt.cex=2, box.lty=0)
dev.off()








