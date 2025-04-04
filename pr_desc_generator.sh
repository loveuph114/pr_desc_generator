#!/bin/bash

# 確保腳本在出錯時停止執行
set -e

# 獲取腳本所在目錄
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 顯示提示信息
# echo "注意：這是拆分後的新版 PR 描述生成腳本，原版腳本內容被拆分為多個模組以解決 token 限制問題"
# echo "腳本文件位於 $SCRIPT_DIR/src/ 目錄下"
# echo 

# 確保腳本可執行
chmod +x "$SCRIPT_DIR/src/main_wrapper.sh" 2>/dev/null || true
chmod +x "$SCRIPT_DIR/src/main.sh" 2>/dev/null || true
chmod +x "$SCRIPT_DIR/src/utils.sh" 2>/dev/null || true
chmod +x "$SCRIPT_DIR/src/git_utils.sh" 2>/dev/null || true
chmod +x "$SCRIPT_DIR/src/ai_utils.sh" 2>/dev/null || true
chmod +x "$SCRIPT_DIR/src/pr_generator.sh" 2>/dev/null || true

# 執行拆分後的腳本
"$SCRIPT_DIR/src/main_wrapper.sh" "$@"
