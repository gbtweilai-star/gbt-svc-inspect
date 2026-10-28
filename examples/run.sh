#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_svc_inspect info
PYTHONPATH=src python -m gbt_svc_inspect check --payload '{}'
PYTHONPATH=src python -m gbt_svc_inspect run   --payload '{}'
