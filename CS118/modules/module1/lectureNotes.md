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
- `-rwxr-xr-x` '-' means it's a normal file 
- `drwxr-xr-x` 'd' means it's a directory 
- `lrwxr-xr-x` 'l' means it's a  link/shortcut 
- r:read, w:write, x:execute, important to have execution rights as a security specialist because it allows you to run your scripts

- `$ ls -al g*` this is a wildcard, '\*' stands for every character, gets every file that begins with a lowercase g 
- `ls *` gets all the files
- `$ ls -al g*g*` gets any file that has a g, then x number of characters then another g... 
- `$ ls -al G?` gets any file with a captial G, and then ONLY ONE character, '?' stands for any ONE character 
- `$ ls -al [Gg]*` gets BOTH G and g as the first character, and x characters after 
- `$ ls -al [0-2]*` given it a range, any file that starts with 0 to 2, includes 000, 111, and 222. Goes from 0-9, then a-z, A-Z 
- `ls [Aa]*` gets all files that start with a captial A or a lowercase a. whatever character you have in this bracket can be the ONE letter that you are matching, this isn't a range.
- `rm xyz` removes a file 
- `rm -rf` removes a directory, -r stands for recursive, -f stands for force 
- `mkdir xyz` makes a directory
-`touch "red white and blue"` makes a file called 'red white and blue' (quotations included in the name) rather than 4 separate files, the space in between them makes them separate files, using quotations is not the recommended way to do this 
- `touch red_white_and_blue` replace empty spaces with underscores or hyphens 
- `ls -al` shows two files in an 'empty' directory, dot (.) is the current directory, dot dot (..) is the parent directory. 
- `cd ..` is called the relative file path, relative to my CURRENT position in the file system
- `cd 111/222/333` is called a definitive file path, tells you exactly where to go in the file system
- `cd ~/Taco` ~ automatically refers to the home directory, then tells it to go to Taco

# Lecture/Week 2 - 01/28/2026
## Commands
- instead of using touch, we can use a command and > together to redirect the output to a file: `ls -al > test.txt`, if we reuse this command, it will overwrite what is already in the file
- if we want to append to the file, we use `>>`: `echo "hey hey" >> testing.txt`, adds "hey hey" to the end of the testing.txt file
- pipe `|` takes the standard output and redirects it to another command, so that you can pass data through several commands in one line
- `ps -ef` shows you every process (ef is everything), `ps -ef | more` shows pages (if i had more data), prace spacebar to get to the next page
- `ps -ef | grep kris`, matches every time it sees kris, grep looks for a pattern within a file
- `chmod` means "change mode", `chmod 000 red`: removes all the permissions from a file, 111 adds execution rights, 222 adds write rights, 333 adds write and execute rights, 444 adds read rights, 555 adds read and execute rights, 666 adds read and write rights, 777 adds all 3 rights, x=1, w=2, r=4
- echo is important when we start using variables
- `read MyName` now the terminal is waiting for user input to set what the MyName variable is
- `echo $MyName` -> returns your input
- `--help` gives you switches to use
- `.sh` is a script file, either add executable permissions: `chmod +x MyFirst.sh`, or use command bash to run it: `bash MyFirst.sh`

## Scripting 
- `#!/bin/bash`

## Using the ps Command
### Finding a specific process
```
ls -al /etc | grep "shadow"
# finds all the files with "shadow" in the name in the /etc folder
```

# Lecture/Week 4 - 2/11/2026 

## DNS
root DNS
- .edu
- .com 
- .net 
- etc...

www.google.com  
computer reads it backwards, com.google.www (there's actually a missing period at the end)
google.com -> SOA (start of authority)
www is arbitrary, it's a service you use to create a domain name, services like squarespace will also host it
SOA
- the master record, the system of authority, if i make a change here, it replicates that change to all the other servers

firwall triangle
top corner: WAN (public ip address)
right corner: LAN (will hold the address that people can access)
left corner: DMZ (isolated network, nobody can jump from another network to your personal one)

## PORTS

## Network Commands
```
ping dns.google.com
```
continuously ping, timeout after 4 responses on windows. cancel ping with ctrl+c 
```
ping -c4 dns.google.com 
```
runs for 4 pings and then finishes, -c stands for count, -c4 makes it look like default ping on a windows system

```
ping -c4 -i0.5 dns.google.com 
```
makes it run quicker, -i is the interval between pings
```
ping -c4 -i0.5 -s1000 dns.google.com
```
-s is the packet size
