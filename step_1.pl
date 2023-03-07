use strict;
use warnings;
use v5.30;


sub createRandomListOfNumbers {
    my $listSize = $_[0];
    my @listOfNumbers = (); 

    for (my $i = 0; $i <= $listSize; $i++) {
        push(@listOfNumbers, rand());
    }

    return @listOfNumbers;
}

sub writeAcsvFile {
    my @listOfNumbers = @_;
    
    my $fileName = "output.txt";
    open(my $FH, '>', $fileName) or die $!;
    print $FH "@listOfNumbers \n";
    close($FH);
}

if (!caller) {
    my @randomList =  createRandomListOfNumbers(5);
    writeAcsvFile(@randomList);
}
