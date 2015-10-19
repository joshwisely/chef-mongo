#!/usr/bin/env bats

@test "bsondump binary not found in PATH" {
  run which bsondump
  [ "$status" -eq 1 ]
}
