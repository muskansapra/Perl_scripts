#!usr/bin/perl
open(gff,"T_vs_N");
open(gff2,">up_mRNA");
open(gff3,">down_mRNA");


@a=<gff>;
#print "@a\n";
foreach(@a)
{
@b=split("\t",$_);

if(@b[1] >= 1 and @b[4] <= 0.05)
{
#print @b[1];
push(@c,$_);
}
elsif( @b[1] <= -1 and @b[4] <= 0.05)
{
push(@d,$_);
}

}
print gff2 "@c";
print gff3 "@d";

