FROM docker.io/julia:rc-bullseye 

WORKDIR /pluto

RUN apt update && apt full-upgrade -y && apt install clang -y

RUN julia -e "using Pkg; Pkg.add([\"ARFFFiles\",\"AbstractTrees\",\"CSV\",\"ControlSystems\",\"DSP\",\"DataFrames\",\"DifferentialEquations\",\"Gumbo\",\"HTTP\",\"JuMP\",\"PackageCompiler\",\"Plots\",\"Pluto\",\"PlutoUI\",\"Revise\",\"Tables\"])"

RUN julia -t $(($(nproc) / 2)) -e "using PackageCompiler; create_sysimage([\"ARFFFiles\",\"AbstractTrees\",\"CSV\",\"ControlSystems\",\"DSP\",\"DataFrames\",\"DifferentialEquations\",\"Gumbo\",\"HTTP\",\"JuMP\",\"PackageCompiler\",\"Plots\",\"Pluto\",\"PlutoUI\",\"Revise\",\"Tables\"]; sysimage_path=\"/pluto/JuliaSysimage.so\")"

WORKDIR /pluto/notebooks
CMD ["julia","-e", "using Pluto; Pluto.run(; port=28761 ,host=\"0.0.0.0\" ,sysimage=\"/pluto/JuliaSysimage.so\", require_secret_for_open_links=false, require_secret_for_access=false)"]

# ENV JULIA_PKG_PRECOMPILE_AUTO=false

# MLJ MLJFlux Flux -> Bugados
