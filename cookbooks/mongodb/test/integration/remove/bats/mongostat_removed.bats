#!/usr/bin/env bats

@test "mongostat binary notfound in PATH" {
  run which mongostat
  [ "$status" -eq 1 ]
}
