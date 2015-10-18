#!/usr/bin/env bats

@test "mongos binary is found in PATH" {
  run which mongos
  [ "$status" -eq 0 ]
}
