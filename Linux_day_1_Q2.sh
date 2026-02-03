echo "In your current working directory, create a directory named project.

Create a nested directory path project/src/utils in a single command, ensuring all necessary parent directories are created automatically.

Inside the project directory, create an empty file named README.md.

Update the timestamp of the README.md file to the current time without modifying its contents."
mkdir project
mkdir -p project/src/utils
cd project
touch README.md
ls -l
touch -m README.md
ls -l
