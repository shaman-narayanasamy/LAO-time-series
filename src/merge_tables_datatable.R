##1. identify files to read in
filesToProcess <- list.files(path = my_path, pattern = my_fileext, full.names = T, recursive = T)

##2. Iterate over each of those file names with lapply
listOfFiles <- mclapply(filesToProcess, function(x) {
mydf = fread(x, header=F, colClasses = c("character", "numeric"), nrows = my_nrows)
setnames(mydf, colnames(mydf), c("rowid", sprintf("%s", str_extract(basename(x), pattern = my_filename))))
}, mc.preschedule = F, mc.cores = my_cores)

##3. Merge all of the objects in the list together with Reduce or data.table::merge.data.table.
## for faster and less memory usage, specify hidden function, data.table:::merge.data.table - although I've tested this function and works well, double check final merged output for discrepency, if any.
out_cnt <- Reduce(function(x,y) {data.table:::merge.data.table(x,y, by = "rowid")}, listOfFiles)

##4. Export merged table in tsv and rds format
write.table(out_cnt, sprintf("merged_%s_%s.tsv", make.names(format(Sys.time(),"%b_%d_%Y_%H_%M_%S_%Z")), my_out), quote=F, sep="\t", row.names=F)
saveRDS(out_cnt, file = sprintf("merged_%s_%s.rds", make.names(format(Sys.time(),"%b_%d_%Y_%H_%M_%S_%Z")), my_out))
print(sprintf("Exported merged table within work directory in tsv and rds format with file name merged_%s_%s", 
	      make.names(format(Sys.time(),"%b_%d_%Y_%H_%M_%S_%Z")), my_out))
}

