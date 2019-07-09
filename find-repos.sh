find . -type d -name ".git" | tee git-find
# 35s, 33s, 30s, 29s
fd --type d --hidden --no-ignore '^\.git$' | tee git-fd
# 15s, 8s, 6s, 6s

# compare
sed -i 's/^.\///' git-find
sort -o git-find{,}
sort -o git-fd{,}
git diff git-f*
