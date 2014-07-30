package main

import (
	"runtime"
	"runtime/debug"
)

func main() {
	debug.SetMaxThreads(10)
	c := make(chan int)
	for i := 0; i < 100; i++ {
		go func() {
			runtime.LockOSThread()
			c <- 0
			select {}
		}()
		<-c
	}
}
