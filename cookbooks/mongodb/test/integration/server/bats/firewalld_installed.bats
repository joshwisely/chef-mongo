#!/usr/bin/env bats

@test "firewalld binary is found in PATH" {
  run which firewalld
  [ "$status" -eq 0 ]
}
