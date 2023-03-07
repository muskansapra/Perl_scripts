open(file,"homerMotifs.all.motifs");
open(file1,">no_motifs");
@arr=<file>;
foreach(@arr)
{
$a=substr($_,0,1);
if($a eq '>')
{
print file1 $_;
}
}
