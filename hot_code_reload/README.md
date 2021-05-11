For Arch:  
`nim c --outdir:$PWD /usr/lib/nim/nimrtl.nim`  
`nim c --outdir:$PWD /usr/lib/nim/nimhcr.nim`  
`export LD_LIBRARY_PATH=.`  
`nim c --hotcodereloading:on main.nim`  
`./main`  
open another conosole  
change something in code, like color  
recompile main: `nim c --hotcodereloading:on main.nim`  
press F9 in SDL window  
color changed without redrawing, the square continues to move along the same path, this is statefull hot code reload