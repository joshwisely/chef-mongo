#!/usr/bin/env bats

@test "bsondump binary is found in PATH" {
  run which bsondump
  [ "$status" -eq 0 ]
}
