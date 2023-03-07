#! usr/bin/perl
open(file,$ARGV[0]) or die;
#open(file1,">6d_1rpkm_expressed_genes_2kb");
@a=<file>;

foreach(@a)
{
@b=split("\t",$_);
$c=join("\t",@b[6..12]);
print"$c";
}
