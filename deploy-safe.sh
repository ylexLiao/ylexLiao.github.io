#!/bin/bash

echo "🚀 安全部署到GitHub Pages..."

# 检查当前分支，确保在main分支
if [ "$(git branch --show-current)" != "main" ]; then
    echo "⚠️  切换到main分支"
    git checkout main
fi

# 确保img目录存在
if [ ! -d "img" ]; then
    echo "❌ img目录不存在，请先创建img目录并添加必要的图片文件"
    exit 1
fi

# 提交当前更改
git add .
git commit -m "Update portfolio with fixed img directory - $(date '+%Y-%m-%d %H:%M:%S')" || echo "没有新的更改"
git push origin main

# 检查gh-pages分支是否存在
if ! git show-ref --verify --quiet refs/heads/gh-pages; then
    echo "📝 创建gh-pages分支"
    git checkout -b gh-pages
    git push -u origin gh-pages
    git checkout main
fi

# 切换到gh-pages分支
git checkout gh-pages

# 安全清理（只清理文件，不清理目录）
rm -f *.html *.css *.js *.png *.ico .nojekyll 2>/dev/null

# 从main分支复制文件
git checkout main -- index.html styles.css script.js favicon.png favicon.ico img/

# 创建.nojekyll
touch .nojekyll

# 提交
git add .
git commit -m "Deploy website - $(date '+%Y-%m-%d %H:%M:%S')"
git push origin gh-pages

# 回到main分支
git checkout main

echo "✅ 安全部署完成！"
echo "🌐 网站地址: https://ylexliao.github.io"
