#!/usr/bin/perl

sub compress {
    my @chars = @_;
    my $index = 0;
    my $count = 1;

    for (my $i = 1; $i <= @chars; $i++) {
        if ($i < @chars && $chars[$i] eq $chars[$i - 1]) {
            $count++;
        } else {
            $chars[$index++] = $chars[$i - 1];
            if ($count > 1) {
                my @count_digits = split //, $count;
                foreach my $digit (@count_digits) {
                    $chars[$index++] = $digit;
                }
            }
            $count = 1;
        }
    }

    return $index;
}

# Tests
my @chars1 = ("a", "a", "b", "b", "c", "c", "c");
my $length1 = compress(@chars1);
print "Return $length1\n";

my @chars2 = ("a");
my $length2 = compress(@chars2);
print "Return $length2\n";

my @chars3 = ("a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b");
my $length3 = compress(@chars3);
print "Return $length3\n";
