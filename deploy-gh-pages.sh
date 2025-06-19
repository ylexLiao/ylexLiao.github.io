#!/bin/bash

echo "🚀 部署到GitHub Pages (gh-pages分支)..."

# 1. 检查当前状态
echo "📍 当前分支: $(git branch --show-current)"
echo "📁 当前文件:"
ls -la *.html *.css *.js *.png *.ico 2>/dev/null

# 2. 确保所有文件都存在
required_files=("index.html" "styles.css" "script.js")
for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ 错误: $file 文件不存在"
        exit 1
    fi
done

# 3. 提交当前更改到main分支
echo "💾 保存到main分支..."
git add .
git commit -m "Update portfolio website - $(date '+%Y-%m-%d %H:%M:%S')" || echo "没有新的更改"
git push origin main

# 4. 切换到gh-pages分支
echo "🔄 切换到gh-pages分支..."
if git show-ref --verify --quiet refs/heads/gh-pages; then
    git checkout gh-pages
else
    git checkout -b gh-pages
fi

# 5. 清理gh-pages分支的内容（保留.git目录）
echo "🧹 清理gh-pages分支..."
find . -maxdepth 1 ! -name "." ! -name ".git" -exec rm -rf {} + 2>/dev/null

# 6. 从main分支复制网站文件
echo "📋 复制网站文件..."
git checkout main -- index.html styles.css script.js favicon.png favicon.ico

# 7. 创建.nojekyll文件（重要：防止Jekyll处理）
touch .nojekyll

# 8. 提交到gh-pages分支
echo "📤 提交到gh-pages分支..."
git add .
git commit -m "Deploy website - $(date '+%Y-%m-%d %H:%M:%S')"
git push origin gh-pages

# 9. 回到main分支
echo "🔙 返回main分支..."
git checkout main

echo "✅ 部署完成！"
echo "🌐 你的网站将在几分钟内在以下地址可用:"
echo "   https://ylexliao.github.io"
echo ""
echo "💡 记得在GitHub仓库设置中确保Pages source设置为 'gh-pages' 分支"
