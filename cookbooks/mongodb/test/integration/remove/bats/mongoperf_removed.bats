#!/usr/bin/env bats

@test "mongoperf binary not found in PATH" {
  run which mongoperf
  [ "$status" -eq 1 ]
}
