#!/usr/bin/env bats

@test "mongooplog binary not found in PATH" {
  run which mongooplog
  [ "$status" -eq 1 ]
}
