#!/bin/bash

set -xe

echo "Building..."

cargo openvm build
cargo openvm keygen
cargo openvm prove app

echo "Proving..."

time cargo openvm prove app
