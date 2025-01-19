./improved-markdown/publish/ImprovedMarkdown \
    -i src/ \
    -o dist/ \
    --boilerplate improved-markdown/boilerplate.html \
    --index-boilerplate improved-markdown/index-boilerplate.html \
    --server

git add .
git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"
git push origin main 