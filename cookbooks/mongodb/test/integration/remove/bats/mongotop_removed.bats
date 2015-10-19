#!/usr/bin/env bats

@test "mongoitop binary not found in PATH" {
  run which mongotop
  [ "$status" -eq 1 ]
}
