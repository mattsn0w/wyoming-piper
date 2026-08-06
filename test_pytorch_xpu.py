#!/bin/env python3

import torch

# 1. Check if Intel XPU is available
print("XPU Available:", torch.xpu.is_available())

# 2. Get device count and name
if torch.xpu.is_available():
    print("Device Count:", torch.xpu.device_count())
    print("GPU Name:", torch.xpu.get_device_name(0))


