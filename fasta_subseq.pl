#! /usr/bin/perl

print "What FASTA file would you like to use?";
$DNA = ucfirst( <STDIN> );

chomp $DNA;

print "At what coordinate would you like to start?";
$start = ucfirst( <STDIN> );

chomp $start;

print "At what coordinate would you like to end?";
$end = ucfirst( <STDIN> );

chomp $end;

print "Would you prefer forward or reverse?";
$strand = ucfirst( <STDIN> );

chomp $strand;

$input_file = 'triticum_aestivum.fasta';
open( WHEAT, $input_file ) || die "Can't Open $input_file: $!\n";

$line_number = 0;

$insert = substr( $DNA, $start, "$end-$start" );

while( $line = <WHEAT> ) { 
$line_number++;
	print $line_number, "\t", $line;
}
if( $line =~ /\A>/ ) {
	$header = $line;
	
}else{ 

$sequence = $line;
	print "\>sequence\_$start\_$end\_$strand\n$insert\n";
	
}

close WHEAT;

exit;

