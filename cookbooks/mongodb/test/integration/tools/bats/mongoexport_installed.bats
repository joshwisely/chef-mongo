#!/usr/bin/env bats

@test "mongoexport binary is found in PATH" {
  run which mongoexport
  [ "$status" -eq 0 ]
}
