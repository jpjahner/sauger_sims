##################################################
## sauger_cross_check_trios.R by JPJ 3 vii 24
##################################################

## USAGE: Rscript sauger_cross_check_trios.R
## PURPOSE: to count proportion of correct trios inferred by sequoia

nloci <- c(100, 500, 1000, 5000, 10000)
wild_samp <- c(0.2, 0.4, 0.6, 0.8, 1.0)

out_trios <- matrix(NA, length(nloci), length(wild_samp))
rownames(out_trios) <- nloci
colnames(out_trios) <- wild_samp

for (g in 1:length(nloci)) {
	for (h in 1:length(wild_samp)) {
		## read in known parental relationships and add individual ids
		f1h_parents <- read.delim(paste0("f1h_parents_", nloci[g], "_", wild_samp[h], ".txt"), header=FALSE, sep=" ")
		f1h_mat <- matrix(NA, dim(f1h_parents)[1], 3)
		for (i in 1:dim(f1h_parents)[1]) {
			f1h_mat[i,1] <- paste0("f1h_", i)
			f1h_mat[i,2] <- paste0("f0_", f1h_parents[i,1])
			f1h_mat[i,3] <- paste0("f0_", f1h_parents[i,2])
		}
		f1w_parents <- read.delim(paste0("f1w_parents_", nloci[g], "_", wild_samp[h], ".txt"), header= FALSE, sep=" ")
		f1w_mat <- matrix(NA, dim(f1w_parents)[1], 3)
		for (i in 1:dim(f1w_parents)[1]) {
			f1w_mat[i,1] <- paste0("f1w_", i)
			f1w_mat[i,2] <- paste0("f0_", f1w_parents[i,1])
			f1w_mat[i,3] <- paste0("f0_", f1w_parents[i,2])
		}
		f2_parents <- read.delim(paste0("f2_parents_", nloci[g], "_", wild_samp[h], ".txt"), header= FALSE, sep=" ")
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
		trios <- read.delim(paste0("trios_", nloci[g], "_", wild_samp[h], ".txt"), header=TRUE, sep=" ")
		nright <- matrix(NA, dim(trios)[1], 2)
		for (i in 1:dim(trios)[1]) {
			nright[i,1] <- trios[i,2] %in% all_parents[all_parents[,1]==trios[i,1],2:3]
			nright[i,2] <- trios[i,3] %in% all_parents[all_parents[,1]==trios[i,1],2:3]
		}
		out_trios[g,h] <- table(nright)[2]/(dim(trios)[1]*2)
	}
}

write.table(out_trios, file="true_trios.txt", quote=FALSE)












