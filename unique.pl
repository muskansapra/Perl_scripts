sub uniq {
    my %seen;
    grep !$seen{$_}++, @_;
}
open(file,$ARGV[0])or die;
my @array = <file>;
my @filtered = uniq(@array);
open(file2,">$ARGV[0]");
print file2@filtered;

