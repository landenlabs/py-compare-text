#!/bin/bash
set -e

pip install -r requirements.txt pyinstaller

pyinstaller --noconfirm compare-text6.spec

echo "Built: dist/compare-text.app"
