import fusion/matching

{.experimental: "caseStmtMacros".}

case [(1, 3), (3, 4)]:
  of [(1, @a), _]: echo a
  else: echo "Match failed"

  