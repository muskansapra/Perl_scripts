#!usr/bin/perl
open(gff,"T_vs_N") or die;
open(gff2,"prt_coding_genes") or die;
open(gff3,">mRNA_coordinatess");
@a=<gff>;
@c=<gff2>;
foreach(@a)
{
#my $b=$_;
#print $a;
@b=split('"',$_);
$e=@b[1];
foreach $f(@c)
{
@id=split("\t",$f);
@ids=split(";",@id[8]);
$c=substr(@ids[0],3);
#print $c;
if($c eq $e)
{
#push(@d,$f);
print gff3 $f;

#shift(@c);
last;
}

#print $_;
#print $e;

}
#print @d;
}
#foreach(@d)
#{
#print gff3 "$_";
#}
