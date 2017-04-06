package greet

import "testing"

func Test_Hello(t *testing.T) {
	expect := "Hello Pete"
	actual := Hello("Pete")
	if actual != expect {
		t.Errorf("Expect %s, got %s", expect, actual)
	}
}

func Test_Bye(t *testing.T) {
	expect := "Bye Pete"
	actual := Bye("Pete")
	if actual != expect {
		t.Errorf("Expect %s, got %s", expect, actual)
	}
}
