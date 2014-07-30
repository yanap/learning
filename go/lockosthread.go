package main

import (
	"fmt"
	"sync"
	"time"
)

var m sync.Mutex

func printing(s string) {
	m.Lock() // Other goroutines will stop here if until m is unlocked
	fmt.Println(s)
	m.Unlock() // Now another goroutine at "m.Lock()" can continue running
}

func main() {
	for i := 0; i < 10; i++ {
		go printing(fmt.Sprintf("Goroutine #%d", i))
	}

	<-time.After(3e9)
}
