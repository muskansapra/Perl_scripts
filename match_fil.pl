#!usr/bin/perl
open(file,"filtered_e") or die;
@filter=<file>;


open(file1,"both_1rpkm_enhancers") or die;
@gff=<file1>;

open(file2,">filtered_e_1rpkm") or die;



foreach $a(@filter)
{
@d=split('"',$a);
$c=@d[1];
chomp($c);

foreach $b(@gff)
{
@id=split("\t",$b);
$e=@id[6];
chomp($e);
if($c eq $e)
{
#print "$a\t$b";
print file2 $a;
#push(@input,$b);
#print @input;

}
#last;
}
}
#print  file2 "@input1\n";
#print $n;
#foreach(@input)
#{print file2"$_";}

