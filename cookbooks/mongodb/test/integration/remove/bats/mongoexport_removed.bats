#!/usr/bin/env bats

@test "mongoexport binary not found in PATH" {
  run which mongoexport
  [ "$status" -eq 1 ]
}
