use strict;
use warnings;
use FindBin;
use lib $FindBin::Bin;
use randomCsvRow;

my ($number, $number_of_raws) = @ARGV;

if (not defined $number) {
    die "Need a the length (number) of the random strings and numbers\n";
}

if (not defined $number_of_raws) {
    die "Need a number or rows to write\n";
}

my @randomList =  randomCsvRow::createandomListOfNumbers($number);
my $randomString =  randomCsvRow::createRandomStrings($number);

for (my $i=0; $i <= $number_of_raws; $i++ ) {
    randomCsvRow::writeAcsvFile(@randomList, $randomString);
}