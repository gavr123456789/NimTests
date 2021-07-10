proc a = 
  echo "a"
  let entries = getStackTraceEntries()
  echo "called from ", entries[^2].procname


proc b =
  a()
  
b()