#!/usr/bin/env bats

@test "mongo binary is found in PATH" {
  run which mongo
  [ "$status" -eq 0 ]
}
