package main

import (
    "fmt"
    "os"
)

func main() {
    if len(os.Args) < 2 {
        fmt.Println("Please provide a command")
        os.Exit(1)
    }

    switch os.Args[1] {
    case "version":
        fmt.Println("Plugin version: 0.1.0")
    default:
        fmt.Printf("Unknown command: %s\n", os.Args[1])
        os.Exit(1)
    }
}