package main

import (
	"runtime"
	"syscall"
)

func main() {
	runtime.GOMAXPROCS(200)
	for i := 0; i < 10; i++ {
		go func() {
			for {
				syscall.Close(-1)
			}
		}()
	}
	stk := make([]runtime.StackRecord, 1000)
	for n := 0; ; n++ {
		_, ok := runtime.GoroutineProfile(stk)
		if !ok {
			panic("GoroutineProfile refused")
		}
		if n&(n-1) == 0 {
			println(n)
		}
	}
}
