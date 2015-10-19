#!/usr/bin/env bats

@test "mongoimport binary not found in PATH" {
  run which mongoimport
  [ "$status" -eq 1 ]
}
