# Quick-Julia

## O que é?

A solução da latência em Julia. 

## Como utilizar:

Primeiro instale o podman:

```bash
sudo apt install podman
```

Depois é só executar o script `pluto`

```bash
./pluto
```

e adicionar a página 

```text
http://localhost:28761
```

como favorito

# Como Funciona?

Todo o processo de compilação em tempo de execução aumenta a latência (tempo de arraque) dos scripts Julia. Para resolver isso basta criar uma custom_sysimage com o pacote PackageCompiler.jl. Porém esse processo pode levar vários minutos. A solução é manter todo o ambiente Julia com algumas bibliotecas já pré-compiladas em um container.