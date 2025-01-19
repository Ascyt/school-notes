# School notes
This repository includes notes I made in school from the fourth year onwards. 

It uses my C# program [improved-markdown](https://github.com/Ascyt/improved-markdown) to compile a directory of `.md` files to `.html` files with index files. 

## Running the program
1. Run `update.sh` to clone/pull the repository and build the C# project. You will need .NET 8.0 to run this.
2. Run `run.sh` to run the project locally and get HTML files in `dist/`.
3. Run `push.sh` to run the project with server args and push the new `src/` and `dist/` to GitHub. 