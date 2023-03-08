use strict;
use warnings;
use FindBin;
use lib $FindBin::Bin;
use randomCsvRow;

my ($number) = @ARGV;

if (not defined $number) {
    die "Need a number\n";
}

my @randomList =  randomCsvRow::createandomListOfNumbers($number);
my $randomString =  randomCsvRow::createRandomSctrin($number);
randomCsvRow::writeAcsvFile(@randomList, $randomString);