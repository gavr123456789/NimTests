import std/options
import fusion/matching

if Some(@val) ?= some("hello"):
  echo val, ". Is string? ", val is string