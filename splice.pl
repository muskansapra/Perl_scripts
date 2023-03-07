open(file,"length_GC_final")or die;
open(file1,">length_GC_final_")or die;
@data=<file>;
$c=0;
foreach(@data)
{
@a=split("\t",$_);
if(@a[5]>1000)
{
$s=splice(@data,$c,1);
$c=$c-1;
}
$c=$c+1;

}
print file1@data;

