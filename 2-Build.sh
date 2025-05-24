#!/bin/bash
cd vendor/NRI
mkdir -p "_Build"

cd "_Build"
cmake ..
cmake --build . --config Release -j $(nproc)
cmake --build . --config Debug -j $(nproc)
cd ..
