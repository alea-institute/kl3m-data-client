#!/bin/bash
set -e

# Create directory if it doesn't exist
mkdir -p "$(dirname "$0")"

echo "Running mypy type checking..."
uv run mypy kl3m_data_client

echo "Running pylint code linting..."
uv run pylint kl3m_data_client/ --disable=C0103,C0111,C0303,C0411,W0102,R0903,R0902,R0913,W0511

echo "All checks completed successfully!"