#!/bin/usr/perl
open(file,"split_locus");
open(file1,">split__locus_");
@file1=<file>;
foreach(@file1)
{
@all=split("\t",$_);
@chr=split(":",@all[0]);
@locus=split("-",@chr[1]);
print file1 "@chr[0]\t@locus[0]\t@locus[1]\t@all[1]\t@all[2]\t@all[3]";

}

