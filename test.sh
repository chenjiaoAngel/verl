# 替换为你的 GitHub 绑定邮箱和用户名
GITHUB_EMAIL="chenjiaobuaa@126.com"
GITHUB_NAME="chenjiaoAngel"

# 修正最近 3 个提交（根据你的提交数量调整 HEAD~3，3 表示最近 3 次）
git filter-branch --env-filter '
OLD_EMAIL="可能的旧邮箱（如果知道）"
if [ "$GIT_COMMITTER_EMAIL" != "$GITHUB_EMAIL" ] || [ "$GIT_COMMITTER_NAME" != "$GITHUB_NAME" ]; then
    export GIT_COMMITTER_NAME="$GITHUB_NAME"
    export GIT_COMMITTER_EMAIL="$GITHUB_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" != "$GITHUB_EMAIL" ] || [ "$GIT_AUTHOR_NAME" != "$GITHUB_NAME" ]; then
    export GIT_AUTHOR_NAME="$GITHUB_NAME"
    export GIT_AUTHOR_EMAIL="$GITHUB_EMAIL"
fi
' HEAD~3..
