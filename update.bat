@echo off
set REPO_URL=https://github.com/Ascyt/improved-markdown
set TARGET_DIR=improved-markdown
set PROJECT_NAME=ImprovedMarkdown

if exist "%TARGET_DIR%\" (
    echo Directory %TARGET_DIR% exists. Pulling latest changes...
    pushd "%TARGET_DIR%"
    git pull %REPO_URL% main
) else (
    echo Directory %TARGET_DIR% does not exist. Cloning repository...
    git clone %REPO_URL% %TARGET_DIR%
    pushd "%TARGET_DIR%"
)

echo Building the C# project...
dotnet build %PROJECT_NAME%

set PUBLISH_DIR=publish
echo Publishing the C# project...
dotnet publish %PROJECT_NAME% -o %PUBLISH_DIR%

echo The project has been published to: %cd%\%PUBLISH_DIR%
popd
