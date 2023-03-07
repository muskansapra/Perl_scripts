open(gff,"/home/surabhi/gene_expression/eRNAs");
open(gff2,"/home/surabhi/gene_expression/filtered_e_");
open(gff3,">file3");
@a=<gff>;
@c=<gff2>;
foreach $b(@c)
{

@id=split("\t",$b);

@f=split('"',@id[0]);
push(@match,@f[1]);
}
#print "@match\n";
foreach(@match)
{
#my $b=$_;
#print $a;
$e=$_;
# "$e\n";
foreach$h(@a)
{
@d=split("\t",$h);
#$e=substr(@b[0],2,11);
#print "@d[6]\n";
@f=split(' ',@d[6]);
$g=@f[0];
#print "$g\n";
if( $e eq $g)
{
push(@i,$h);
#print @d;
#shift(@c);
#last;
}

#print $_;
#print $e;

}
#print @d;
}
print gff3 "@i";
