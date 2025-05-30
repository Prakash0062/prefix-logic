#!/usr/bin/env bash

# Install system dependencies
apt-get update && apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-eng \
    tesseract-ocr-hin \
    libsm6 \
    libxext6 \
    libxrender-dev \
    ffmpeg

# Optional: confirm install
tesseract --version
