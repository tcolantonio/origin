package main

import (
    "fmt"
    "net/http"
    "os"	
)

func handler(w http.ResponseWriter, r *http.Request) {
    name, err := os.Hostname()
    if err != nil{}
    fmt.Fprintf(w, "Hello there, this is version 2 and I love this: %s! and my hostname is:%s!!!!!!!!!!!", r.URL.Path[1:], name)
}


func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":8181", nil)
}
