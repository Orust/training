package main

import (
	"fmt"
	"time"
	"sync"
)

func say(text string, wg *sync.WaitGroup) {
	defer wg.Done()
	fmt.Println(text)
}

func main() {
	var wg sync.WaitGroup
	wg.Add(2)
	go say("Hello", &wg)
	go say("World", &wg)

	wg.Wait()
	time.Sleep(100 * time.Millisecond)
}