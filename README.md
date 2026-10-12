# redroid on RK3566 / 飞牛 OS

Docker Compose deployment for redroid on an RK3566 host with Mali-G52 hardware rendering.

## Contents

- `docker-compose.yml` — ARM64 container, port `5555`, `/dev/mali0`, Mali GPU mode
- `rk3566-libs/libGLES_mali-arm64.so` — Android Mali-G52 64-bit userspace library
- `rk3566-libs/libGLES_mali-arm.so` — Android Mali-G52 32-bit userspace library

## Deploy

1. Upload the whole repository directory to a Docker Compose project on 飞牛 OS.
2. Confirm the host has `/dev/mali0`.
3. Deploy the Compose project. The `/data` directory uses a Docker named volume to avoid Android `resource-cache` failures on some 飞牛 OS bind mounts.
4. Connect with `adb connect NAS_IP:5555`, then start `scrcpy -s NAS_IP:5555`.

The image and userspace libraries are ARM64/RK3566 tested.
