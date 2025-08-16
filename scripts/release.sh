#!/bin/bash

# QNotes发布到Homebrew脚本

if [ $# -ne 2 ]; then
    echo "Usage: $0 <version> <sha256>"
    echo "Example: $0 1.1.49 2b5f496a1b38b978af48862cef129efba9f4d6a1149cec0ffdfae8f319f7120d"
    exit 1
fi

VERSION=$1
SHA256=$2

echo "🚀 更新QNotes Homebrew Cask到版本 $VERSION"

# 更新Cask文件
sed -i '' "s/version \".*\"/version \"$VERSION\"/" Casks/qnotes.rb
sed -i '' "s/sha256 \".*\"/sha256 \"$SHA256\"/" Casks/qnotes.rb

echo "✅ Cask文件已更新"
echo "📝 请检查Casks/qnotes.rb文件并提交更改"
