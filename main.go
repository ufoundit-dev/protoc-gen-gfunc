package main

import (
	"github.com/ufoundit-dev/protoc-gen-gfunc/module"
)

func main() {
	module.GG()
	// fmt.Fprintln(os.Stderr, "---- main")
	// pgs.Init(pgs.DebugEnv("GFUNC_DEBUG")).RegisterModule(gfunc.New()).RegisterPostProcessor(pgsgo.GoFmt()).Render()
}
