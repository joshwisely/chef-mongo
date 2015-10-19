#!/usr/bin/env bats

@test "mongod binary not found in PATH" {
  run which mongod
  [ "$status" -eq 1 ]
}
