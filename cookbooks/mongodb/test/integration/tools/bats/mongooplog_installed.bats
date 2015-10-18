#!/usr/bin/env bats

@test "mongooplog binary is found in PATH" {
  run which mongooplog
  [ "$status" -eq 0 ]
}
