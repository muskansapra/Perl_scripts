#!usr/bin/perl
open(file,$ARGV[0]) or die;
@filter=<file>;


open(file1,$ARGV[1]) or die;
@match=<file1>;

#open(file2,>$argv[2]) or die;

#foreach $b(@gff)
#{
#@id=split("\t",$b);
#push(@match,@id[6]);
#}




foreach $a(@filter)
{
@d=split('\t',$a);
$c=@d[0];
chomp($c);
foreach $b(@match)
{
@id=split(';',$b);
$e=substr(@id[2],5);
#print $c;
#print $e;
chomp($e);
if($c eq $e)
{

print $b;
#push(@input,$b);

}
}
}

#foreach(@input)
#{print file2"$_";}

