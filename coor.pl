#!usr/bin/perl
open(gff,"file1");
open(gff2,"file2");
open(gff3,">file3");
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
print gff3 "@d";
