import sdl2

#*** import the hotcodereloading stdlib module ***
import hotcodereloading

var runGame*: bool = true
var window: WindowPtr
var renderer: RendererPtr
var evt = sdl2.defaultEvent

proc init*() =
  discard sdl2.init(INIT_EVERYTHING)
  window = createWindow("testing", SDL_WINDOWPOS_UNDEFINED.cint, SDL_WINDOWPOS_UNDEFINED.cint, 640, 480, 0'u32)
  assert(window != nil, $sdl2.getError())
  renderer = createRenderer(window, -1, RENDERER_SOFTWARE)
  assert(renderer != nil, $sdl2.getError())

proc destroy*() =
  destroyRenderer(renderer)
  destroyWindow(window)

var posX: cint = 1
var posY: cint = 0
var dX: cint = 1
var dY: cint = 1

proc update*() =
  while pollEvent(evt):
    if evt.kind == QuitEvent:
      runGame = false
      break
    if evt.kind == KeyDown:
      if evt.key.keysym.scancode == SDL_SCANCODE_ESCAPE: runGame = false
      elif evt.key.keysym.scancode == SDL_SCANCODE_F9:
        #*** reload this logic.nim module on the F9 keypress ***
        performCodeReload()
  
  # draw a bouncing rectangle:
  posX += dX
  posY += dY
  
  if posX >= 640: dX = -2
  if posX <= 0: dX = +2
  if posY >= 480: dY = -2
  if posY <= 0: dY = +2
  
  discard renderer.setDrawColor(0, 0, 255, 255)
  discard renderer.clear()
  discard renderer.setDrawColor(255, 128, 128, 0)
  
  var rect: Rect = (x: posX - 25, y: posY - 25, w: 50.cint, h: 50.cint)
  discard renderer.fillRect(rect)
  delay(16)
  renderer.present()