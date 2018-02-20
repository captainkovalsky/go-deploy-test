package main

import (
	"io/ioutil"
	"net/http/httptest"
	"testing"

	"github.com/stretchr/testify/assert"
)

//test something
func TestMainMethod(t *testing.T) {
	w := httptest.NewRecorder()
	req := httptest.NewRequest("GET", "/", nil)
	IndexHandler(w, req)
	resp := w.Result()
	body, _ := ioutil.ReadAll(resp.Body)

	assert.Equal(t, string(body), "Hello world!\n")
}
