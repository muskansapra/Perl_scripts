open (gff,"file1");
open(gff1,">file3");
@a=<gff>;
print @a;
foreach(@a)
{
@b= split("\t",$_);
print @b[0];
foreach(@b)
{
print gff1"$_";
if($_ ne @b[1])
{print gff1"\t";}
}
}
#print gff1 @a;
