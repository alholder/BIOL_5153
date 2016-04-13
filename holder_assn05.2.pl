#! /usr/bin/perl

$DNA = CTCTCGAGATCGATCGATAGATCGCTCTAAATCGATATCGCTCTGCGCATATACTCTGCATCAGTCGTCGTCATCATACTGA;
$start = 2;
$end = 15;
$strand = fwd;

$insert = substr( $DNA, $start, "$end-$start" );
print "\>sequence\_$start\_$end\_$strand\n$insert\n";

exit;