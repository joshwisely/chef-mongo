#!/usr/bin/env bats

@test "mongoimport binary is found in PATH" {
  run which mongoimport
  [ "$status" -eq 0 ]
}
