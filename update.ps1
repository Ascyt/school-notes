#!/usr/bin/env pwsh
[string]$StartDir = Get-Location

[string]$RepoUrl = "https://github.com/Ascyt/improved-markdown"
[string]$TargetDir = "improved-markdown"
[string]$ProjectName = "ImprovedMarkdown"

if (Test-Path $TargetDir) {
    Write-Host "Directory $TargetDir exists. Pulling latest changes..."
    Set-Location $TargetDir
    git pull origin main
}
else {
    Write-Host "Cloning repository $RepoUrl into $TargetDir..."
    git clone $RepoUrl $TargetDir
    Set-Location $TargetDir
}

Write-Host "Building project $ProjectName..."
dotnet build $ProjectName

[string]$PublishDir = Join-Path (Get-Location) "publish"
Write-Host "Publishing project to $PublishDir..."
dotnet publish $ProjectName -c Release -o $PublishDir

Set-Location $StartDir

Write-Host "The project has been published to: $PublishDir"