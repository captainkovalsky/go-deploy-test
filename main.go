package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func IndexHandler(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintln(w, "Hello world!")
	w.WriteHeader(200)
	return
}

func main() {
	r := mux.NewRouter()
	r.HandleFunc("/", IndexHandler)
	http.Handle("/", r)

	fmt.Println("Starting up on 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
