# export LD_LIBRARY_PATH=.
import logic

proc main() =
  init()
  while runGame:
    update()
  destroy()

main()
