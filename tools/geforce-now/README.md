# Eglantine GeForce NOW RTX 5080 portable profile

This is an **experimental** Windows x64 build configuration. It is not an NVIDIA-approved GeForce NOW application and cannot guarantee that a cloud session will permit running it.

## Run

Extract the entire ZIP into a writable directory. Run `Launch-5080.cmd` next to `eglantine.exe`.

- Default: `Launch-5080.cmd` enables `EDEN_NX2_SPLIT=2` (experimental GPU method/macro split).
- Stable fallback: `Launch-5080.cmd safe` uses `EDEN_NX2_SPLIT=0`.
- Intermediate A/B test: `Launch-5080.cmd split1` uses `EDEN_NX2_SPLIT=1`.

The launcher creates a `user` folder for portable settings. Keep the whole folder together. Do not assume cloud session storage persists; back up your own saves and settings to storage you control.

## Recommended settings

Start with Vulkan, 1x resolution and default accuracy, then compare performance and rendering correctness at higher resolution. Prefer the emulator's native settings controls; avoid unverified environment variables and hard-coded driver hacks. RTX 5080-class hardware does not guarantee a particular CPU allocation, Vulkan driver, or RAM amount.

## Validation

The GitHub Actions workflow compiles and packages the Windows executable. It does not verify game compatibility or benchmark actual GeForce NOW hardware. Test each split mode with the same scene and collect FPS, frametime, crash logs, and GPU/CPU utilization. If split mode 2 causes hangs or visual corruption, use safe mode.

This build does not include copyrighted games, firmware, or keys.
