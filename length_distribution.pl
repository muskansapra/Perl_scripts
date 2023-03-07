#!usr/bin/perl
open(gff,"length_GC_content_RNA_6.txt");
open(gff2,">>length_distribution");
@a=<gff>;

foreach(@a)
{
@b=split("\t",$_);
if(@b[5]<100)
{
$count=$count+1;
}
elsif(@b[5]>=100 and @b[5]<=150)
{
$count1=$count1+1;
}
elsif(@b[5]>150 and @b[5]<=500)
{
$count2=$count2+1;
}
elsif(@b[5]>500 and @b[5]<=1000)
{
$count3=$count3+1;
}
elsif(@b[5]>1000 and @b[5]<=5000)
{
$count4=$count4+1;
}
}
#print gff2"samples\t0\t100-150\t151-500\t551-1000\t1001-5000\t>5000\n";
print gff2"6 day\t$count\t$count1\t$count2\t$count3\t$count4\t$count5\n";
