Install flake as system:

```nix
sudo nixos-rebuild switch --flake .
```

> Make sure git is staged


Update:

Containerized OLLAMA + openwebui with:

```sh
podman run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
```

Also using podman instead of docker now
