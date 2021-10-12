package main

import (
	"fmt"
	"log"
	"net/http"
)

func logger(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Println(fmt.Sprintf("%s %s", r.Method, r.URL.Path))
		next.ServeHTTP(w, r)
	})
}

func main() {
	mux := http.NewServeMux()

	mux.Handle("/", logger(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "hello human")
	})))

	mux.Handle("/alive", logger(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "ok")
	})))

	mux.Handle("/ready", logger(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "ok")
	})))

	log.Println("Listening on localhost:3000...")

	if err := http.ListenAndServe(":3000", mux); err != nil {
		log.Fatal(err)
	}
}
