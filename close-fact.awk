#!/usr/bin/awk -f

BEGIN {
  for (arg = 1; arg < ARGC; arg++) {
    n = ARGV[arg];
    for (i = int(sqrt(n)) + 1; i > 1 && n % i; i--);
    print n, "closest factors:", i, "x", n / i;
  }
}

