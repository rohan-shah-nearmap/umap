#!/bin/bash
set -e

echo "**********************"
if [ -z "${SRC_DIR}" ]; then
    SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"
fi
echo "SRC_DIR: $SRC_DIR"
ls -lhFa $SRC_DIR

echo "**********************"
echo "UMAP_VERSION: ${UMAP_VERSION}"
echo ${UMAP_VERSION} version
${PYTHON} -m pip install . --no-deps --ignore-installed --no-cache-dir -v
