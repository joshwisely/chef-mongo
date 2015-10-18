#!/usr/bin/env bats

@test "mongoperf binary is found in PATH" {
  run which mongoperf
  [ "$status" -eq 0 ]
}
