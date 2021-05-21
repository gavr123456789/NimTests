Example from https://nim-lang.org/docs/hcr.html  
For Arch:  
1) `nimble install sdl2`  
2) `nim c --outdir:$PWD /usr/lib/nim/nimrtl.nim`  
3) `nim c --outdir:$PWD /usr/lib/nim/nimhcr.nim`  
4) `export LD_LIBRARY_PATH=.`  
5) `nim c --hotcodereloading:on main.nim`  
6) `./main`  
7) open another console  
8) change something in code, like color  
9) recompile main: `nim c --hotcodereloading:on main.nim`  
10) press F9 in SDL window  
color changed without redrawing, the square continues to move along the same path, this is statefull hot code reload
  
11) see this great talk how it was done: https://youtu.be/7WgCt0Wooeo
