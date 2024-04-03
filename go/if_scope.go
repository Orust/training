package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main() {
	fmt.Println("Enter a number:")

	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)

	if num, err := strconv.Atoi(input); err == nil {
		if num % 2 == 0 {
			fmt.Println("The number is even")
		} else {
			fmt.Println("The number is odd")
		}
	} else {
		fmt.Println("Error:", err)
	}
}
