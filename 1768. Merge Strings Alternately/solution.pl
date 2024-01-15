#!/usr/bin/perl

sub merge_alternately {
    my ($word1, $word2) = @_;

    my @result;
    my $len1 = length($word1);
    my $len2 = length($word2);
    my $max_len = $len1 > $len2 ? $len1 : $len2;

    for my $i (0..$max_len-1) {
        push @result, substr($word1, $i, 1) if $i < $len1;
        push @result, substr($word2, $i, 1) if $i < $len2;
    }

    return join("", @result);
}

# Tests
my $word1_1 = "abc";
my $word2_1 = "pqr";
print merge_alternately($word1_1, $word2_1) . "\n";  

my $word1_2 = "ab";
my $word2_2 = "pqrs";
print merge_alternately($word1_2, $word2_2) . "\n";

my $word1_3 = "abcd";
my $word2_3 = "pq";
print merge_alternately($word1_3, $word2_3) . "\n";  
