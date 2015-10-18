#!/usr/bin/env bats

@test "mongofiles binary is found in PATH" {
  run which mongofiles
  [ "$status" -eq 0 ]
}
