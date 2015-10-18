#!/usr/bin/env bats

@test "mongostat binary is found in PATH" {
  run which mongostat
  [ "$status" -eq 0 ]
}
