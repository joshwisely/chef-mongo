#!/usr/bin/env bats

@test "mongo binary not found in PATH" {
  run which mongo
  [ "$status" -eq 1 ]
}
