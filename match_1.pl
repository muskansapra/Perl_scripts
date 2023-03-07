#!usr/bin/perl
open(file,"N_1kb_transcripts") or die;
@filter=<file>;


open(file1,"N_1rpkm_expression") or die;
@match=<file1>;

open(file2,">N_1rpkm_transcripts") or die;

#foreach $b(@gff)
#{
#@id=split("\t",$b);
#push(@match,@id[6]);
#}




foreach $a(@filter)
{
@d=split('\t',$a);
$c=@d[6];
chomp($c);
foreach $b(@match)
{
@id=split('\t',$b);
$e=@id[0];
#print $c;

if($c eq $e)
{

print file2 $a;
#push(@input,$b);

}
}
}

#foreach(@input)
#{print file2"$_";}

