#!/bin/bash
REPO_URL="https://github.com/Ascyt/improved-markdown"
TARGET_DIR="improved-markdown"
PROJECT_NAME="ImprovedMarkdown"

# Check if the target directory exists
if [ -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR exists. Pulling latest changes..."
    cd "$TARGET_DIR"
    git pull "$REPO_URL" main
else
    echo "Directory $TARGET_DIR does not exist. Cloning repository..."
    git clone "$REPO_URL" "$TARGET_DIR"
    cd "$TARGET_DIR"
fi

# Build the C# project
echo "Building the C# project..."
dotnet build "$PROJECT_NAME"

# Publish the C# project
PUBLISH_DIR="publish"
echo "Publishing the C# project..."
dotnet publish "$PROJECT_NAME" -o "$PUBLISH_DIR"

# Output the publish directory
echo "The project has been published to: $(pwd)/$PUBLISH_DIR"