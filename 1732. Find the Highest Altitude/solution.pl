#!/usr/bin/perl

#Find the highest point given an array of altitude gain values

sub highest_altitude {
    my @gain = @_;
    my $altitude = 0;
    my $max_altitude = 0;

    foreach my $gain (@gain) {
        $altitude += $gain;
        $max_altitude = $altitude if $altitude > $max_altitude;
    }

    return $max_altitude;
}

# Tests
my @gain1 = (-5, 1, 5, 0, -7);
my $test1 = highest_altitude(@gain1);
print "Example 1: Highest Altitude is $test1\n";

my @gain2 = (-4, -3, -2, -1, 4, 3, 2);
my $test2 = highest_altitude(@gain2);
print "Example 2: Highest Altitude is $test2\n";
