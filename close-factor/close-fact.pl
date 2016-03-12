#!/usr/bin/perl

foreach $n (@ARGV) {
  foreach $i (reverse(1 .. int(sqrt($n) + 1))) {
    if ($n % $i == 0) {
      printf("$n closest factors: $i x %d\n", ($n / $i));
      last;
    }
  }
}
