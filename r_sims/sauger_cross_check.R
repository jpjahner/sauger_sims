##################################################
## sauger_cross_check.R by JPJ 3 vii 24
##################################################

## USAGE: Rscript sauger_cross_sim.R
## PURPOSE: to count proportion of correct trios inferred by sequoia


## read in known parental relationships and add individual ids

f1h_parents <- read.delim("f1h_parents.txt", header=FALSE, sep=" ")
f1h_mat <- matrix(NA, dim(f1h_parents)[1], 3)
for (i in 1:dim(f1h_parents)[1]) {
	f1h_mat[i,1] <- paste0("f1h_", i)
	f1h_mat[i,2] <- paste0("f0_", f1h_parents[i,1])
	f1h_mat[i,3] <- paste0("f0_", f1h_parents[i,2])
}

f1w_parents <- read.delim("f1w_parents.txt", header= FALSE, sep=" ")
f1w_mat <- matrix(NA, dim(f1w_parents)[1], 3)
for (i in 1:dim(f1w_parents)[1]) {
	f1w_mat[i,1] <- paste0("f1w_", i)
	f1w_mat[i,2] <- paste0("f0_", f1w_parents[i,1])
	f1w_mat[i,3] <- paste0("f0_", f1w_parents[i,2])
}

f2_parents <- read.delim("f2_parents.txt", header= FALSE, sep=" ")
f2_mat <- matrix(NA, dim(f2_parents)[1], 3)
for (i in 1:dim(f2_parents)[1]) {
	f2_mat[i,1] <- paste0("f2_", i)
	if (f2_parents[i,1] > dim(f1h_parents)[1]) { f2_mat[i,2] <- paste0("f1w_", f2_parents[i,1]-1000) }
	else { f2_mat[i,2] <- paste0("f1h_", f2_parents[i,1]) }
	if (f2_parents[i,2] > dim(f1h_parents)[1]) { f2_mat[i,3] <- paste0("f1w_", f2_parents[i,2]-1000) }
	else { f2_mat[i,3] <- paste0("f1h_", f2_parents[i,2]) }
}

all_parents <- rbind(f1h_mat, f1w_mat, f2_mat)



## read in inferred relationships by sequoia and check accuracy

trios <- read.delim("sequoia_trios.txt", header=TRUE, sep=" ")

nright <- matrix(NA, dim(all_parents)[1], 2)
for (i in 1:dim(all_parents)[1]) {
	sub_mat <- subset(trios, trios[,1]==all_parents[i,1])
	if (dim(sub_mat)[1]==0) {
		nright[i,1] <- NA
		nright[i,2] <- NA
	}
	else
		{
		nright[i,1] <- all_parents[i,2] %in% sub_mat[1,]
		nright[i,2] <- all_parents[i,3] %in% sub_mat[1,]
		}
}

table(nright)








