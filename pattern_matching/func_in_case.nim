import std/json, fusion/matching

{.experimental: "caseStmtMacros".}

func sas(x: auto): auto = x.len
func createSomeObj


case parseJson("""{ "key" : "value" }"""):
  of { "key" : JInt() }:
    discard

  of { "key" : (getStr: @val) }:
    echo val
    assert val is string
