$currentDir = Convert-Path .

docker run --rm -v ${currentDir}:/pluto/notebooks/ -p 28761:28761 docker.io/lucasmsoares96/quick-julia:latest

# não se esqueça de:
# Set-ExecutionPolicy RemoteSigned

# Salve esta página como favorito
# http://localhost:28761

