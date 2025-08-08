Run `./bench.sh` to benchmark. You will need to [install OpenVM](https://book.openvm.dev/getting-started/install.html).

Results on my machine (MacBook Pro 2023, M3 Max):

```
+ cargo openvm prove app
[openvm] Building the package...
cargo:rerun-if-env-changed=OPENVM_SKIP_BUILD
Using rustc: /Users/cwgoes/.rustup/toolchains/nightly-2025-02-14-aarch64-apple-darwin/bin/rustc
Building guest package: cargo +nightly-2025-02-14 build --target riscv32im-risc0-zkvm-elf -Z build-std=alloc,core,proc_macro,panic_abort,std -Z build-std-features=compiler-builtins-mem
cargo command: cargo +nightly-2025-02-14 build --target riscv32im-risc0-zkvm-elf -Z build-std=alloc,core,proc_macro,panic_abort,std -Z build-std-features=compiler-builtins-mem --target-dir /Users/cwgoes/Working/heliax/openvm-playground/target --profile release --color=always --manifest-path /Users/cwgoes/Working/heliax/openvm-playground/Cargo.toml
openvm build: Starting build for riscv32im-risc0-zkvm-elf
openvm build:     Finished `release` profile [optimized] target(s) in 0.06s
[openvm] Successfully built the packages
[openvm] Transpiling the package...
[openvm] Successfully transpiled to /Users/cwgoes/Working/heliax/openvm-playground/target/openvm/release

real	0m8.890s
user	1m20.978s
sys	    0m5.721s
```
