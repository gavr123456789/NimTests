import std/json, fusion/matching

{.experimental: "caseStmtMacros".}

case parseJson("""{ "ыфы" : "some str" }"""):

  of { "ыфы" : JInt() }:
    echo "here num"

  of { "ыфы" : (getStr: @val) }:
    echo "here string"

  else: 
    echo "erorr"


