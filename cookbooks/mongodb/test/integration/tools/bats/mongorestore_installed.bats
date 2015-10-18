#!/usr/bin/env bats

@test "mongorestore binary is found in PATH" {
  run which mongorestore
  [ "$status" -eq 0 ]
}
