#!/usr/bin/env bats

@test "mongos binary not found in PATH" {
  run which mongos
  [ "$status" -eq 1 ]
}
