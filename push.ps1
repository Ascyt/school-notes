Write-Host "Compiling source..."
./improved-markdown/publish/ImprovedMarkdown `
    -i "./src" `
    -o "./dist" `
    --boilerplate improved-markdown/boilerplate.html `
    --index-boilerplate improved-markdown/index-boilerplate.html `
    --server

Write-Host "Adding files..."
git add ./src
git add ./dist

Write-Host "Committing changes..."
git commit -m "$(Get-Date -Format "yyyy-MM-dd HH:mm:ss")"

Write-Host "Pushing changes..."
git push origin main