#!/usr/bin/env bats

@test "mongorestore binary not found in PATH" {
  run which mongorestore
  [ "$status" -eq 1 ]
}
