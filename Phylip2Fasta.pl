#! /usr/bin/perl 

use strict;
use warnings;

my $usage = "$0 phylip_file\n";
$ARGV[0] or die $usage;

my $phylip_file = shift $ARGV;

my $header
my $num_species = 0;
my $alignment_length;


open( PHYLIP, $phylip_file ) || die "Can't open phylip_file: $!\n";

while(my $line = <PHYLIP>) {

	chomp $line;
	
if( $line =~ /^(.*)\s/ ) {
		$header = $1;
		$header =~ s/\s+$//;
		print $header, "\n";
	
}else{ print "$header $line\n"
	print %sequences{header} .= $line;
	

}
close PHYLIP;

exit;
