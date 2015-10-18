#!/usr/bin/env bats

@test "mongoitop binary is found in PATH" {
  run which mongotop
  [ "$status" -eq 0 ]
}
