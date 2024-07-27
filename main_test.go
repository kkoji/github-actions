package main

import (
	"testing"
)

func TestMakeGreeting(t *testing.T) {
	want := "Hello, Test"
	got := makeGreeting("Test")
	if got != want {
		t.Errorf("got = %s, want = %s", got, want)
	}
}
