#!/bin/bash
podman run --rm -v ./:/pluto/notebooks/ -p 28761:28761 docker.io/lucasmsoares96/quick-julia:latest

# Salve esta página como favorito
# http://localhost:28761

