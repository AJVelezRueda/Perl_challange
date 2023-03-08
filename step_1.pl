use strict;
use warnings;
use v5.30;


sub createRandomListOfNumbers {
    my $listSize = $_[0];
    my @listOfNumbers = (); 

    for (my $i = 0; $i <= $listSize; $i++) {
        push(@listOfNumbers, int(rand(10)));
    }

    return @listOfNumbers;
}


sub writeAcsvFile {
    my @listOfNumbers = @_;
    my @slices = splice(@listOfNumbers, 0, -1);
    
    my $fileName = "output.txt";
    open(my $FH, '>', $fileName) or die $!;
    print $FH "@slices, $listOfNumbers[-1] \n";
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