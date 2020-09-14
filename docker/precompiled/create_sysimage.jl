using Pkg
Pkg.add(["PackageCompiler"]) #"Plots", "Images", "ImageIO", "ImageMagick", 

using PackageCompiler
create_sysimage([:Pluto, :PlutoUI]; precompile_execution_file="precompile.jl", cpu_target="generic", replace_default=true)