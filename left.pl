#!usr/bin/perl
open(file,"/home/surabhi/gene_expression/deg_e");
@filtered=<file>;

foreach $a(@filtered)
{
@b=split("\t",$a);
#print "@b[0]\n";
#$e=substr(@b[0],2,11);
push(@input,@b[0]);
}

@input1=@input;

open(file1,"/home/surabhi/gene_expression/et_e");
@gff=<file1>;

open(file2,">final");

foreach $b(@gff)
{
#print $b;
@id=split("\t",$b);

#$c=substr(@id[0],2,11);
push(@match,@id[0]);
}

#print file2 "@input\n"; 
#print file2"@match\n";

foreach $a(@input)
{
foreach $b(@match)
{
#if($a ne $b)
#{next;}
if($a eq $b)
{
#print "1@input1[$index]\n";
#print "2$a\n";
#print "3$b\n";
$index = 0;

$index++ until( @input1[$index] eq $a);
splice(@input1, $index, 1);
#$n=$n+1;
#print "4@input1[$index]\n";
#print "5$a\n";
#print "6$b\n";
#print file2"$index\n";
#print "@input1\n";
}
}
}
#print  file2 "@input1\n";
#print $n;
foreach(@input1)
{print file2 "$_\n";}

