#!/bin/bash

docker run --rm \
    --device=/dev/dri:/dev/dri \
    --workdir /usr/src \
    --entrypoint ./.venv/bin/python3 \
    docker.io/library/wyoming-piper-xpu:2026.8.6.003 \
    -u -c 'import torch; a = torch.xpu.is_available(); print("XPU Available:", a); print(f"Device Count: {torch.xpu.device_count()}\nGPU Name: {torch.xpu.get_device_name(0)}") if a else None'

