#############################################
## inds_to_keep.R
#############################################

## JPJ 18 vi 24
## PURPOSE: create a file of 576 individual ids to be used when filtering vcfs (there are 576 empirical inds)
## USAGE: Rscript inds_to_keep.R

inds <- matrix(NA, 576, 1)
for (i in 1:dim(inds)[1]){
	inds[i,1] <- paste0("i",i-1)
}

write.table(inds, file="inds_to_keep.txt", row.names=F, col.names=F, quote=F)









