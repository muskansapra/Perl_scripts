#!usr/bin/perl
open(gff,"filtered_ge") or die;
open(gff2,"prt_coding_genes") or die;
open(gff3,">mRNA_coordinatess");
@a=<gff>;
@c=<gff2>;
foreach(@a)
{
#my $b=$_;
#print $a;
@b=split("\t",$_);
$e=substr(@b[0],2,11);
foreach(@c)
{
if($_=~ /.$e./)
{
push(@d,$_);
until($_=~/.$e./m)
{
shift(@c);
}
#shift(@c);
last;
}

#print $_;
#print $e;

}
#print @d;
}
foreach(@d)
{
print gff3 "$_";
}
