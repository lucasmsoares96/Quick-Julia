$currentDir = Convert-Path .

docker run --rm -v ${currentDir}:/pluto/notebooks/ -p 28761:28761 docker.io/lucasmsoares96/quick-julia:latest

# n�o se esque�a de:
# Set-ExecutionPolicy RemoteSigned

# Salve esta p�gina como favorito
# http://localhost:28761

