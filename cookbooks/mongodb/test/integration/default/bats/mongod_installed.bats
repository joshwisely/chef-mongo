#!/usr/bin/env bats

@test "mongod binary is found in PATH" {
  run which mongod
  [ "$status" -eq 0 ]
}
