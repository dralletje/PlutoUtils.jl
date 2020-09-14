julia <<__EOF__
import Pkg
# Pkg.add(Pkg.PackageSpec(name="PackageCompiler", version="1.2.1"))
Pkg.add("PackageCompiler")

import PackageCompiler
PackageCompiler.create_sysimage([:Pluto,:PlutoUI], precompile_statements_file="precompile.jl", cpu_target="generic", sysimage_path="precompile.so")
__EOF__