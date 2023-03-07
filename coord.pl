#!usr/bin/perl
open(gff,"filtered_ge_");
open(gff2,"prt_coding_genes");
open(gff3,">mRNA_coordinates");
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
#shift(@c);
last;
}

#print $_;
#print $e;
#print @d;
}
until(/.$e./m)
{
shift(@c);
}
}
print gff3 "@d";
