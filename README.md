# School notes
This repository includes notes I made in school from the fourth year onwards. 

It uses my C# program [improved-markdown](https://github.com/Ascyt/improved-markdown) to compile a directory of `.md` files to `.html` files with index files. 

## Running the program
1. Run `update.sh` to clone/pull the repository and build the C# project. The dependencies are:
    - .NET 8.0
    - HtmlAgilityPack
    - Markdig
    - Markdig.SyntaxHighlighting
    - NUglify
    - PowerArgs
  
    For more information regarding this, check out the `ImprovedMarkdown.csproj` file of the project. 
2. 