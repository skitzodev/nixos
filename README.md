Install flake as system:

```nix
sudo nixos-rebuild switch --flake .
```

> Make sure git is staged


Update:

Containerized OLLAMA with:

```sh
podman run -d --gpus=0 -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
podman exec -it ollama ollama run deepseek-r1:7b
```

Also using podman instead of docker now