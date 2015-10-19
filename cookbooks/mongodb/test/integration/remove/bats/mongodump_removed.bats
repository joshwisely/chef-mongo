#!/usr/bin/env bats

@test "mongodump binary not found in PATH" {
  run which mongodump
  [ "$status" -eq 1 ]
}
