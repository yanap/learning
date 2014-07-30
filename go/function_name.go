package main

import (
	"fmt"
	"reflect"
	"runtime"
)

func foo() {
}

func GetFunctionName(i interface{}) string {
	return runtime.FuncForPC(reflect.ValueOf(i).Pointer()).Name()
}

func main() {
	// This will print "name: main.foo"
	fmt.Println("name:", GetFunctionName(foo))
}
