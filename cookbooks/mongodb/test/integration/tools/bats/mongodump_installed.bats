#!/usr/bin/env bats

@test "mongodump binary is found in PATH" {
  run which mongodump
  [ "$status" -eq 0 ]
}
