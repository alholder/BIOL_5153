#! /usr/bin/perl

$sum = 0;
$increment = 2;


print "What value for count would you like to use?";
$count = ucfirst( <STDIN> );

chomp $count;

print "How many times $max would you like to run the while loop?";
$max = ucfirst( <STDIN> );

chomp $max;

while( $count < $max ){
	print $count, "\n";
	$sum += $count;
	$count += $increment;
	}
	
print "The final count: $count\n";
print "The sum total was: $sum\n";

exit;
	



#make this a modified while_demo

#use name_STDIN.pl

#use arrays_ARGV_readdir stuff from today 