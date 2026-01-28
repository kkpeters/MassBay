# Lecture/Week 1 - 01/21/2026

## Gen Notes
- open note/book etc...
- 

## Linux/Bash/WSL
- Bash (Bourne Again Shell) is a shell & and scripting langauge 
- The shell is used to talk to the machine/computer
- WSL gives you a Linux environment on a Windows machine


## Commands:
- uses "command switch argument" format
- `$ pwd` "print working directory" 
- `/home/kris` root or home is normal, root is commonly reused by linux 
- `$ cd /` goes to the root file system, '/' is the root 
- `$ ls -al` shows all files, even hidden ones, ll does the same for me 
&ensp;&ensp;&ensp;&ensp;&ensp;'-' is an indicator for a switch command (modifies the output), 'a' stands for all files, 'l' stands for long format 
&ensp;&ensp;&ensp;&ensp;&ensp;hidden files are files that have a dot (.) in front of them 
- `$ touch xyz` creates a new file 
- `$ ls -a /` shows all the files at the root. 
&ensp;&ensp;&ensp;&ensp;&ensp;`-rwxr-xr-x` '-' means it's a normal file 
&ensp;&ensp;&ensp;&ensp;&ensp;`drwxr-xr-x` 'd' means it's a directory 
&ensp;&ensp;&ensp;&ensp;&ensp;`lrwxr-xr-x` 'l' means it's a  link/shortcut 

- `$ ls -al g*` this is a wildcard, '\*' stands for every character, gets every file that begins with a lowercase g 
- `ls *` gets all the files
- `$ ls -al g*g*` gets any file that has a g, then x number of characters then another g... 
- `$ ls -al G?` gets any file with a captial G, and then ONLY ONE character, '?' stands for any ONE character 
- `$ ls -al [Gg]*` gets BOTH G and g as the first character, and x characters after 
- `$ ls -al [0-2]*` given it a range, any file that starts with 0 to 2, includes 000, 111, and 222. Goes from 0-9, then a-z, A-Z 
- `ls [Aa]*` gets all files from capital A to lowercase a
- `rm xyz` removes a file 
- `mkdir xyz` makes a directory
-`touch "red white and blue"` makes a file called 'red white and blue' (quotations included in the name) rather than 4 separate files, the space in between them makes them separate files, using quotations is not the recommended way to do this 
- `touch red_white_and_blue` replace empty spaces with underscores or hyphens 
- `ls -al` shows two files in an 'empty' directory, dot (.) is the current directory, dot dot (..) is the parent directory. 
- `cd ..` is called the relative file path, relative to my CURRENT position in the file system
- `cd 111/222/333` is called a definitive file path, tells you exactly where to go in the file system
- `cd ~/Taco` ~ automatically refers to the home directory, then tells it to go to Taco

