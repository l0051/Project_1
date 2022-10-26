Bash scripts

Linux scripting assigment


1) Bash script that prints all file names on given folder with subfolders: 

scripts/filrnames.sh

2) Bash script that prompts the user for a name of file or directory and
   reports if it is a regular file, a directory:

scripts/ird.sh

3) Bash script that prints a number in reverse order:

scripts/reversenumber.sh

4) Bash script that counts lines in file given in argument

scripts/countlines.sh



Docker

Create new docker from ubuntu image from docker file and preinstall “vim” and “build-essential” in it.
Run scripts from /scripts directory in it.


To build docker write in terminal:

docker build -t my_docker .

To run docker write in terminal(you can add -it to run it iteratively):

docker run my_docker
