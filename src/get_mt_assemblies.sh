## These lines of code were used to concatenate the IMP-based metatranscriptomic de novo assembly files which are presently in two diferent files.

# First change the soft links to reflect the file structure on gaia

for s in `cut -f1 sample_list.tsv | grep -v ^A | grep -v "Sample"`; do  echo $s ; ln -fs mt.megahit_preprocessed.1/final.contigs.fa $s/Assembly/mt.megahit_preprocessed.1.fa; done

for s in `cut -f1 sample_list.tsv | grep -v ^A | grep -v "Sample"`; do  echo $s ; ln -fs mt.megahit_unmapped.2/final.contigs.fa $s/Assembly/mt.megahit_unmapped.2.fa; done

# Ceate one file for each sample assembly and add them into a dedicated folder

for s in `cut -f1 sample_list.tsv | grep -v ^A`; do  echo $s ; cat $s/Assembly/mt.megahit_preprocessed.1.fa  $s/Assembly/mt.megahit_unmapped.2.fa > Databases/Assemblies/MT_assemblies/$s-mt.assembly.cat.fa; done
