#!usr/bin/perl
open(gff,"T_1rpkm_unique_transcripts") or die;
open(gff2,">T_1rpkm_unique_transcripts_10kb") or die;
@a=<gff>;
foreach(@a)
{
@b=split("\t",$_);
@b[1]=@b[1]-10000;
@b[2]=@b[2]+10000;
if(@b[1]<1)
{
@b[1]=1;
}
foreach(@b)
{
print gff2"$_";
if($_ ne @b[6])
{print gff2"\t";}
}
}
