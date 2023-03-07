open(file1,"/home/surabhi/gene_expression/et_e");
@gff=<file1>;
print @gff;
foreach(@gff)
{
@b=split("\t",$_);
print "@b[1]\n";
}
