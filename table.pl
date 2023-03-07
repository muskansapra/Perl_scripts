open(file,"no_motifs") or die;
open(file1,">tables") or die;
@data=<file>;
print file1 "Sr. No\tSequence\tlog_odds_threshold\tp-value\tlog p-value\tTarget(percentage)\tBackground(percentage)\tTpos\tTstd\tBpos\tBstd\tStrand Bias\tMultiplicity\n";
foreach(@data)
{
$count++;
@columns=split("\t",$_);
@sequence=split("-",@columns[1]);
@col5=split(",",@columns[5]);
@col6=split(",",@columns[6]);
@percentT=split(":",@col5[0]);
@percentB=split(":",@col5[1]);
@p_val=split(":",@col5[2]);
@tpos=split(":",@col6[0]);
@tstd=split(":",@col6[1]);
@bpos=split(":",@col6[2]);
@bstd=split(":",@col6[3]);
@strandbias=split(":",@col6[4]);
@multiplicity=split(":",@col6[5]);
print file1 "$count\t@sequence[1]\t@columns[2]\t@p_val[1]\t@columns[3]\t@percentT[1]\t@percentB[1]\t@tpos[1]\t@tstd[1]\t@bpos[1]\t@bstd[1]\t@strandbias[1]\t@multiplicity[1]";
}
