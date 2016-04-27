#! /usr/bin/perl

use strict;
use warnings;

my $usage = "$0 fasta_file\n";
$ARGV[0] or die $usage;

my $fasta_file = shift $ARGV;

my $header;
my %sequences;
my $num_species = 0;
my $alignment_length;


open( FASTA, $fasta_file ) || die "Can't open $fasta_file: $!\n" ;

while( my $line = <FASTA> ){
	
	chomp $line;

if( $line =~ /\A>(.*)\Z/ ) {
	$header = $1;
	$header =~ s/\s+/_/g;
	print $header, "\n";

}else{ 
	print "$header $line\n";
	print %sequences{$header} .= $line;
	#print $line;
}




close FASTA;

print "$num_species $alignment_length\n";

foreach my $species ( keys %sequences ){
	print ">$species\n";
	print $sequences{$species}, "\n";
	print $species, "\t", $sequences{$species}, "\n";
}

exit;


#to get rid of mac line breaks:
#perl -pwe 's/\r/\n/g' filename >m;mv m filename