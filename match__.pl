#!usr/bin/perl
open(file,"NT_common_transcripts") or die;
@filter=<file>;


open(file1,"NT_rpkm") or die;
@match=<file1>;

open(file2,">NT_common_expression") or die;

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
@id=split('"',$b);
$e=@id[1];
#print $c;

if($c eq $e)
{

print file2 $b;
#push(@input,$b);

}
}
}

#foreach(@input)
#{print file2"$_";}

