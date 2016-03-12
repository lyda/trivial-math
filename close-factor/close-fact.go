package main

import (
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	for _, ns := range os.Args[1:] {
		n, _ := strconv.ParseFloat(ns, 64)
		for i := math.Ceil(math.Sqrt(n)); i >= 1; i-- {
			if math.Mod(n, i) == 0 {
				fmt.Printf("%d closest factors: %d x %d\n", int64(n), int64(i), int64(n/i))
				break
			}
		}
	}
}
