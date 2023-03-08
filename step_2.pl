use strict;
use warnings;
use randomCsvRow;

my ($number) = @ARGV;

if (not defined $number) {
    die "Need a number\n";
}

print $number." fetched";

my @randomList =  randomCsvRow::createRandomListOfNumbers($number);
my $randomString =  randomCsvRow::createRandomSctrings($number);
randomCsvRow::writeAcsvFile(@randomList, $randomString);