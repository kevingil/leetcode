#!/usr/bin/perl

sub string_gcd {
    my ($str1, $str2) = @_;

    return "" if $str1 ne $str2 && $str1 . $str2 ne $str2 . $str1;

    while (length($str2) > 0) {
        if (index($str1, $str2) == 0) {
            $str1 = substr($str1, length($str2));
        } else {
            my $temp = $str2;
            $str2 = substr($str2, 0, length($str1) % length($str2));
            $str1 = $temp;
        }
    }

    return $str1;
}


# Tests
my $test1 = string_gcd("ABCABC", "ABC");
print "Test 1: GCD is '$test1'\n";

my $test2 = string_gcd("ABABAB", "ABAB");
print "Test 2: GCD is '$test2'\n";

my $test3 = string_gcd("LEET", "CODE");
print "Test 3: GCD is '$test3'\n";
