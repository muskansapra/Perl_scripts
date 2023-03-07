#!usr/bin/perl
open(gff,"TAIR10_GFF3_genes.gff");
open(gff1,">genes_");
@a=<gff>;
foreach(@a)
{
if(/.protein_coding_gene./m)
{
push(@b,$_);
}
}
foreach(@b)
{
print gff1 "$_";
}
