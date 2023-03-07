use strict;
use warnings;
use v5.30;


sub createRandomListOfNumbers {
    my $listSize = $_[0];
    my @listOfNumbers = (); 

    for (my $i = 0; $i <= $listSize; $i++) {
        push(@listOfNumbers, int(rand(10000)));
    }

    return @listOfNumbers;
}


sub writeAcsvFile {
    my @listOfNumbers = @_;

    
    my $fileName = "output.txt";
    open(my $FH, '>', $fileName) or die $!;
    print $FH pop(@listOfNumbers)." , $listOfNumbers[-1] \n";
    close($FH);
}

sub createRandomSctrings {
    my @chars = ('A'..'Z');
    my $len = $_[0];
    my $string = "";
    
    while($len--){ 
        $string .= $chars[rand(@chars)] 
        };

    return $string;
}

if (!caller) {
    my @randomList =  createRandomListOfNumbers(5);
    my $randomString =  createRandomSctrings(5);
    writeAcsvFile(@randomList, $randomString);
}