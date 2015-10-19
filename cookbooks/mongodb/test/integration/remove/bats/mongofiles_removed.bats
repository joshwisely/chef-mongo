#!/usr/bin/env bats

@test "mongofiles binary not found in PATH" {
  run which mongofiles
  [ "$status" -eq 1 ]
}
