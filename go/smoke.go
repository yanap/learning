package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime/pprof"
)

func main() {
	cpuprofile := flag.String("cpuprofile", "", "Write CPU profile to the specified file")
	flag.Parse()

	if *cpuprofile != "" {
		f, err := os.Create(*cpuprofile)

		if err != nil {
			log.Fatal(err)
		}

		pprof.StartCPUProfile(f)
		defer pprof.StopCPUProfile()

		fmt.Println("Activated CPU profiling.")
	}

	fmt.Println("Starting Smoking Platano.")
}
