#!usr/bin/perl
open (gff,"T_1rpkm_transcripts");
open (gff1,">T_1rpkm_transcripts_seq");
@a=<gff>;
foreach(@a)
{
@b=split("\t",$_);
@b[1]=@b[1]-1;
foreach (@b)
{
print gff1"$_";
if ($_ ne @b[6])
{
print gff1"\t";
}
}
}

