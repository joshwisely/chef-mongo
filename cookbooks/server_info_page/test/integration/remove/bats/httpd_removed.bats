#!/usr/bin/env bats

@test "httpd binary not found in PATH" {
  run which httpd
  [ "$status" -eq 1 ]
}
