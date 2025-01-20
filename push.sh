#!/bin/bash
echo "Compiling source..."
./improved-markdown/publish/ImprovedMarkdown \
    -i "./src" \
    -o "./dist" \
    --boilerplate improved-markdown/boilerplate.html \
    --index-boilerplate improved-markdown/index-boilerplate.html \
    --server

echo "Adding files..."
git add src/
git add dist/

echo "Committing changes..."
git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"

echo "Pushing changes..."
git push origin main 