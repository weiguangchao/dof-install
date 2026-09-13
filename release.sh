#!/bin/bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT_DIR"

TAG="${RELEASE_TAG:-release}"
ASSETS=(Game.tar.gz MySQL.tar.gz dof.sh)

if ! command -v gh >/dev/null 2>&1; then
    echo "需要安装 GitHub CLI: https://cli.github.com/"
    exit 1
fi

./build.sh

if gh release view "$TAG" >/dev/null 2>&1; then
    echo "覆盖上传到 Release $TAG ..."
    gh release upload "$TAG" "${ASSETS[@]}" --clobber
else
    echo "创建 Release $TAG ..."
    gh release create "$TAG" "${ASSETS[@]}" \
        --title "dof-install" \
        --notes "当前安装包。每次发布覆盖同一 Release。"
fi

echo "发布完成: https://github.com/weiguangchao/dof-install/releases/latest"
