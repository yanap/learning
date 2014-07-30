package main

import (
	"os"
	"runtime/pprof"
)

func startProfile(filename string) {
	f, _ := os.Create(filename)
	pprof.StartCPUProfile(f)
}

func stopProfile() {
	pprof.StopCPUProfile()
}
