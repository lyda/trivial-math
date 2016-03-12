.PHONY: all
all: out.awk out.go out.pl out.sh

.PHONY: clean
clean:
	@rm -f out.awk out.go out.pl out.sh

out.awk: close-fact.awk Makefile
	@./close-fact.awk 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 25 144 145 \
	  > out.awk

out.go: close-fact.go Makefile out.awk
	@go run close-fact.go 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 25 144 145 \
	  > out.go
	@cmp out.go out.awk

out.pl: close-fact.pl Makefile out.awk
	@./close-fact.pl 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 25 144 145 \
	  > out.pl
	@cmp out.pl out.awk

out.sh: close-fact.sh Makefile out.awk
	@./close-fact.sh 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 25 144 145 \
	  > out.sh
	@cmp out.sh out.awk

out.ps: close-fact.ps Makefile out.awk
	@gs-noX11 -dNOPROMPT -q -c '/nums [ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 25 144 145 ] def' close-fact.ps \
	  > out.ps
	@cmp out.ps out.awk
