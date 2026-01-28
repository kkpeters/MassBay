# Module 1 Notes

## What is Linux?
Linux is an open-source operating system kernel that was created by Linus Torvalds in 1991. It is based on the Unix operating system and is known for its stability, security, and flexibility. The term "Linux" is often used to refer to the entire family of Unix-like operating systems that are built around the Linux kernel. \
Key features of Linux inlude:
- Open Source: The source code of Linux is freely available for anyone to view, modify, and distribute. This openness fosters a large and active community of developers and users who contribute to its development.
- Multitasking and Multiuser: Linux supports multiple users and multiple tasks running simultaneously, making it suitable for servers, desktops, and embedded systems.
- Security and Stability: Linux is known for its strong security features and stability, making it a preferred choice for servers and critical systems.
- Flexibility: Linux can run on a wide variety of hardware platforms, from small embedded devices to large mainframes. It is highly customizable, allowing users to configure the system to meet their specific needs.
- Distributions: Linux is available in many different distributions (distros), which are versions of the operating system packaged with various software and tools. Some popular distributions include Ubuntu, Fedora, Debian, CentOS, and Arch Linux.
- Command-Line Interface: While Linux can be used with graphical user interfaces (GUIs), it is often managed through a command-line interface (CLI), which provides powerful tools for system administration and scripting.
- Community and Support: A large and active community of developers and users provides extensive documentation, forums, and other resources to help users solve problems and learn more about the system.
Linux is used in a wide range of applications, from desktop computers and servers to smartphones (Android is based on the Linux kernel), networking equipment, and embedded systems. Its versatility and robustness make it a popular choice for both personal and professional use. \
*Is it Linux or Unix?* \
Both Linux and Unix are powerful operating systems, but they have different origins, design philosophies, and use cases. Here's a comparison to help you decide which might be more suitable for your needs:
### Unix
Origin:
- Developed in the 1960s and 1970s at Bell Labs by Ken Thompson, Dennis Ritchie, and others.
- Unix was one of the first operating systems written in C, making it portable across different machines.
Characteristics: 
- Known for its stability, security, and performance.
- Traditionally used in academic, enterprise, and server environments.
- Uses a modular design with a small core kernel and separate utilities and applications.
- Original Unix systems are proprietary, though there are open-source variants (e.g., BSD).
Common Unix Systems:
- AIX (IBM)
- HP-UX (Hewlett-Packard)
- Solaris (originally by Sun Microsystems, now Oracle)
- FreeBSD, OpenBSD, NetBSD (open-source Unix-like systems)
Use Cases:
- Enterprise servers
- Mainframes
- Specialized hardware environments

### Linux
Origin:
- Developed in 1991 by Linus Torvalds as a free and open-source Unix-like operating system.
- Inspired by Unix, but written from scratch.
Characteristics:
- Free and open-source, with source code available under the GNU General Public License (GPL).
- Highly customizable and adaptable to different hardware and software environments.
- Large and active community support.
- Many distributions (distros) tailored for various use cases, from desktop to server environments.
Common Linux Distributions:
- Ubuntu, Debian (general-purpose)
- CentOS, RHEL (enterprise)
- Fedora (cutting-edge technology)
- Arch Linux (customization and minimalism)
- Kali Linux (security and penetration testing)
Use Cases:
- Personal computers (desktops and laptops)
- Servers and data centers
- Embedded systems (e.g., routers, smart devices)
- Development and testing environments
### Which to Choose?
Unix:
- Choose Unix if you are working in an enterprise environment that requires a specific Unix system like AIX, HP-UX, or Solaris.
- If you need a highly stable and secure system for critical applications and hardware compatibility with proprietary Unix systems, Unix may be the better choice.
Linux:
- Choose Linux if you need a versatile, customizable, and free operating system.
- Ideal for development, testing, personal use, and server environments.
- Excellent community support and a wide range of distributions to suit various needs.
- Linux's open-source nature makes it a popular choice for innovation and experimentation.
In summary, choose Unix for specific enterprise environments requiring proprietary Unix systems and Linux for versatility, customization, and a wide range of applications.

## What is WSL?
WSL stands for Windows Subsystem for Linux. It is a compatibility layer for running Linux binary executables natively on Windows 10 and Windows Server 2019 and later versions. WSL allows users to run a Linux distribution directly on Windows without the overhead of a virtual machine. Here are some key points about WSL:

1. Purpose: WSL is designed to allow developers to use a Linux environment on a Windows machine, making it easier to work with tools and software that are typically used in Linux environments.
2. Distributions: Users can choose from a variety of Linux distributions to install from the Microsoft Store, such as Ubuntu, Debian, Kali Linux, and more.
3. Integration: WSL provides tight integration with Windows, allowing users to run Linux commands and applications alongside Windows applications, and access files across both systems.
Versions: There are two versions of WSL:
- WSL 1: The original version, which translates Linux system calls into Windows system calls.
- WSL 2: A newer version that uses a full Linux kernel running in a lightweight virtual machine, providing improved performance and compatibility with Linux applications.
Usage: WSL is commonly used for development purposes, particularly for tasks that are easier or only possible in a Linux environment, such as running certain development tools, scripts, or containers. \ 
To enable WSL on Windows, users typically need to turn on the feature through the Windows Features dialog and then install a Linux distribution from the Microsoft Store.

## Understanding Shells
A shell is a text-based interface that allows users to interact with an operating system by typing commands. It acts as a translator between the user and the system, taking typed commands and instructing the operating system on what actions to perform. \
There are several types of shells available on Unix and Linux systems, as well as macOS. While multiple shells exist, Bash and Zsh are the most commonly encountered by users today.
### Common Types of Shells
- Bourne Shell (sh): The original Unix shell, developed by Stephen Bourne. It established many of the core concepts still used in modern shells.
- C Shell (csh): Features syntax similar to the C programming language and is often favored for interactive use.
- Korn Shell (ksh): Combines features from both sh and csh, offering advanced scripting and programming capabilities.
- Bash (Bourne Again Shell): An enhanced version of the Bourne Shell that adds useful features such as command history, tab completion, and improved scripting support. Bash is the default shell on many Linux distributions and older versions of macOS.
- Z Shell (zsh): The default shell on modern versions of macOS. Zsh builds on Bash features and adds improvements such as better tab completion, spelling correction, and advanced customization.

### Why Use Bash or Zsh?
- Both are widely available on Unix, Linux, and macOS systems, making scripts portable.
- Support powerful scripting features, including loops, conditionals, and functions.
- Provide user-friendly features like command history and tab completion.
- Integrate seamlessly with other Unix/Linux tools, making them ideal for automation and system administration.

## Is the Mac OS linux?
- macOS is not Linux; it's a different type of operating system, although both macOS and Linux share a similar foundation. macOS is based on Darwin, which is an open-source UNIX-like operating system. Darwin incorporates elements from BSD (Berkeley Software Distribution), which is another UNIX derivative, similar to how Linux was inspired by UNIX but rewritten from scratch.
- Linux, on the other hand, refers to the Linux kernel, which forms the core of various Linux distributions (such as Ubuntu, Fedora, and Debian). Linux is also UNIX-like, meaning it shares common traits and follows the UNIX philosophy, but it is developed and maintained independently of macOS.
- The primary difference lies in their design, usage, and licensing:
- **macOS** is developed by Apple Inc., designed specifically for their Mac computer line, and is proprietary software, meaning its source code is not freely available for public modification or distribution.
- **Linux** is open-source and freely available to the public. It can be modified and distributed by anyone, leading to a wide variety of distributions tailored for different needs.
While both operating systems can offer similar functionalities and applications, they are distinct in terms of their underlying architecture, development, and distribution.

## Bash vs Zsh: A Comparison
### Overview
Bash (Bourne Again Shell) and Zsh (Z Shell) are two of the most widely used Unix shells. Both provide a command-line interface for interacting with an operating system and support scripting, automation, and system administration tasks. While they share many similarities, they differ in defaults, usability features, and customization.
### Bash (Bourne Again Shell)
Bash is an enhanced version of the original Bourne Shell (sh) and has long been the default shell on most Linux distributions and earlier versions of macOS.
#### Key Characteristics
- Default shell on many Linux systems
- Highly portable across Unix and Linux environments
- Widely documented and supported
- Strong backward compatibility with sh
#### Strengths
- Excellent for scripting and automation
- Industry standard for shell scripts
- Stable and predictable behavior
- Large existing base of scripts and examples
#### Limitations
- Tab completion is basic compared to Zsh
- Customization requires more manual configuration
- Fewer interactive features out of the box
### Zsh (Z Shell)
Zsh is a more modern shell that builds on Bash functionality while adding powerful interactive and customization features. It is the default shell on modern versions of macOS.
#### Key Characteristics
- Default shell on macOS (Catalina and later)
- Highly customizable and interactive
- Supports advanced completion and correction features
- Popular with developers and power users
#### Strengths
- Smarter tab completion with menus and descriptions
- Command auto-correction for minor typing errors
- Advanced theming and plugin support (e.g., Oh My Zsh)
- Strong interactive user experience
#### Limitations
- Slightly less portable for scripts than Bash
- Some Bash scripts may require minor adjustments
- Can become complex with heavy customization
### Feature Comparison
| Feature              | Bash           | Zsh                           |
| Deafult on Linux     | Yes            | No (usually optional)         |
| Default on macOS     | Older Versions | Yes (modern macOS)            |
| Script compatibility | Excellent      | Very good (mostly compatible) |
| Tab completion       | Basic          | Advanced and contextual       |
| Command correction   | No             | Yes                           |
| Customization        | Moderate       | Extensive                     |
| Plugin ecosystem     | Limited        | Very large                    |
| Learning curve       | Lower          | Slightly higher               |

### Scripting Compatibility
Most Bash scripts will run in Zsh with little or no modification. However, when writing scripts intended for maximum portability, Bash is typically preferred. For interactive daily use, many users favor Zsh due to its enhanced usability.
#### Which Should You Use?
Use Bash if:
- You are writing scripts for Linux servers or shared systems
- You want maximum compatibility and portability
- You are learning shell scripting fundamentals
Use Zsh if:
- You work primarily on macOS
- You want a more powerful interactive shell
- You value customization and productivity features
#### Summary
Both Bash and Zsh are powerful shells with overlapping capabilities. Bash remains the standard for scripting and automation, while Zsh excels as an interactive shell for daily use. Understanding both prepares users to work effectively across Linux, macOS, and enterprise environments.

## What is the BASH Shell and why is it important?
The Bash shell, short for "Bourne Again Shell," is a command-line interpreter or shell for Unix-like operating systems. It is the default shell for most Linux distributions and macOS, and it is also available on Windows through tools like Cygwin and Windows Subsystem for Linux (WSL).
Here's why the Bash shell is important:
1. Command Execution: Bash allows users to interact with their operating system by executing commands. Users can launch programs, manage files and directories, configure system settings, and perform a wide range of tasks directly from the command line.
2. Scripting: Bash is not just a command interpreter but also a powerful scripting language. Users can write Bash scripts to automate repetitive tasks, create complex workflows, and build custom solutions tailored to their specific needs. Bash scripting is widely used in system administration, software development, and various other fields.
3. Customization: Bash is highly customizable, allowing users to configure their shell environment according to their preferences. Users can define aliases, customize the prompt, set environment variables, and create functions to streamline their workflow and enhance productivity.
4. Portability: Bash is available on a wide range of platforms, including Linux, macOS, and Windows. This portability ensures that users can leverage their knowledge of Bash across different systems, making it a valuable skill for system administrators, developers, and power users working in heterogeneous environments.
5. Integration: Bash integrates seamlessly with other command-line tools and utilities, as well as with programming languages and development frameworks. This integration enables users to combine the power of Bash with other tools and technologies to solve complex problems and accomplish tasks efficiently.
Overall, the Bash shell plays a crucial role in the Unix-like operating system ecosystem, providing users with a versatile and powerful environment for command-line interaction, scripting, automation, and customization. Its ubiquity, flexibility, and extensive feature set make it an essential tool for anyone working in the Linux and Unix world.

## Introduction to the Linux File System
In the realm of computing, understanding the file system is akin to knowing the layout of a city; it forms the foundational structure upon which all data and operations are organized and executed. Within the Linux ecosystem, this file system architecture is robust, efficient, and deeply ingrained in the operating system's functionality. Let's embark on a journey to explore the Linux File System, an intricate yet intuitive framework that underpins the storage, retrieval, and management of data in Linux-based environments. \
At its core, the Linux File System adheres to a hierarchical model, akin to an inverted tree, where directories (or folders) branch out into subdirectories and files, creating a structured hierarchy. Central to this structure is the root directory denoted by a forward slash (/), serving as the starting point from which all other directories and files extend. From the root directory, users navigate through the file system to access, manipulate, and organize their data. \
One of the fundamental principles of the Linux File System is its uniform treatment of all entities as files. Whether it's a text document, a hardware device, or a running process, everything is represented as a file or a directory. This unified approach simplifies interactions and provides a consistent interface for managing diverse elements within the system. \
Within this file-centric environment, each file and directory possesses distinct permissions and attributes governing access, modification, and execution rights. This granular control ensures data security and privacy, allowing users to define precisely who can read, write, or execute specific files and directories. \
Furthermore, the Linux File System is extensible and supports various file systems, each tailored to specific use cases and requirements. From the traditional ext4 file system to more specialized options like XFS, Btrfs, and ZFS, Linux offers a diverse array of choices to suit different storage needs, performance demands, and resilience considerations. \
Navigating through the Linux File System involves familiarizing oneself with essential command-line utilities like ls, cd, mkdir, and rm, which enable users to traverse directories, create new ones, manipulate files, and remove unwanted data. Additionally, utilities such as find and grep empower users to search for files based on specific criteria or patterns, facilitating efficient data retrieval and management tasks. \
In this introductory exploration, we've only scratched the surface of the Linux File System's depth and complexity. As we delve deeper into its intricacies, we'll uncover a rich tapestry of concepts, utilities, and best practices that empower users to harness the full potential of their Linux-based systems. So, let's embark on this journey together, navigating the pathways of the Linux File System to unlock its secrets and unveil its true power. \

Linux follows five core principles:

| Principle                                                   | Description                                                                                                                                           |
| ----------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| Everything is a file                                        | All configuration files for the various services running on the Linux operating system are stored in one or more text files.                          |
| Small, single-purpose programs                              | Linux offers many different tools that we will work with, which can be combined to work together.                                                     |
| Ability to chain programs together to perform complex tasks | Integrating and combining different tools enable us to carry out many large and complex tasks, such as processing or filtering specific data results. |
| Avoid captive user interfaces.                              | Linux is designed to work mainly with the shell (or terminal), which gives the user greater control over the operating system.                        |
| Configuration data stored in a text file                    | An example of such a file is the /etc/passwd file, which stores all users registered on the system.                                                   | 

## Linux Directory Structure:
1. / (Root Directory):
- At the apex of the directory hierarchy lies the root directory denoted by a forward slash (/). It serves as the starting point for all other directories and files in the system. Essential system files, configuration files, and directories critical for system operation reside here.
2. /bin (Binary Binaries):
- The /bin directory contains essential executable binaries (programs) fundamental to the operation of the system. Common system utilities and commands such as ls, cp, mkdir, and rm are stored here. These binaries are accessible to all users.
3. /sbin (System Binaries):
- Similar to /bin, the /sbin directory houses essential system binaries, but these binaries are typically reserved for administrative tasks and require elevated privileges (root access) for execution. Utilities related to system administration, such as ifconfig and fdisk, are stored here.
4. /etc (Etcetera):
- The /etc directory stores system-wide configuration files and settings. Configuration files for various system services, network settings, user authentication, and package management are located here. It's a crucial directory for system administrators for customizing and maintaining system behavior.
5. /home (Home Directories):
- Each user on a Linux system typically has a dedicated directory within /home where their personal files, documents, settings, and user-specific configuration files reside. For example, the home directory for the user "john" would be /home/john.
6. /var (Variable):
- The /var directory contains variable data files that are expected to grow or change in size during normal system operation. Logs, spool files, cached data, and other variable files generated by system services, applications, and users are stored here.
7. /tmp (Temporary):
- The /tmp directory serves as a temporary storage location for files that are only needed for a short duration. Temporary files, caches, and scratch files created by various programs and scripts are stored here. The contents of this directory are typically cleared upon system reboot.
8. /dev (Devices):
- The /dev directory contains special device files that represent hardware devices and peripherals connected to the system. These device files provide an interface for interacting with hardware components such as disks, terminals, printers, and more.
9. /proc (Process):
- The /proc directory is a virtual file system that provides information about currently running processes and system resources. It contains a series of numbered directories and special files that represent running processes, kernel parameters, and system status.
10. /mnt (Mount):
- The /mnt directory serves as a mount point for temporarily mounting external storage devices such as USB drives, network shares, and external disks. When a device is mounted, its contents become accessible within the /mnt directory structure.

## Linux Command Cheat Sheet
### Navigation and Files
- `pwd` (show current directory)
- `ls` (list files and directories)
- `ls -la` (detailed list including hidden files)
- `cd /path` (move up one directory)
- `tree` (display directory tree (if installed)
### File Managment 
- `touch file` (create empty file)
- `cp src dest` (copy file)
- `cp -r dir1 dir2` (copy directory)
- `mv src dest` (move or rename)
- `rm file` (delete file)
- `rm -r dir` (delete directory recursively)
### Viewing Files 
- `cat file` (display file contents)
- `less file` (view file page by page)
- `head file` (show first 10 lines)
- `tail file` (show last 10 lines)
- `fail -f file` (follow file output)
### Perms and Ownership
- `chmod 755 file` (change permissions)
- `chmod u+x file` (add execute permission)
- `chown user file` (change owner)
- `chgrp group file` (change group)
### Searching and Text Processing
- `grep 'text' file` (search for text)
- `grep -r 'text' dir` (recursive search)
- `find /path -name file` (find file)
- `wc file` (word, line, byte coutn)
- `sort file` (sort file contents)
### System Information  
- `uname -a` (system information)
- `df -h` (disk usage)
- `du -sh dir` (directory size)
- `free -h` (memory usage)
- `uptime` (system running time)
### Processes 
- `ps aux` (running processess)
- `top` (real-time process view)
- `htop` (enhanced top (if installed)
- `kill PID` (terminate process)
- `kill -9 PID` (force terminate)
### Networking
- `ip a` (show IP addresses)
- `ping host` (test connectivity)
- `curl url` (fetch URL)
- `wget url` (download file)
- `ssh user@host` (remote login)
### Archives and Compression
- `tar -cvf file.tar dir` (create tar)
- `tar -xvf file.tar` (extract tar)
- `tar -czvf file.tar.gz dir` (create gzip tar)
- `tar -xzvf file.tar.gz` (extract gzip tar)
- `zip file.zip files` (create zip)
- `unzip file.zip` (extract zip)
### Package Managment (Debian/Ubuntu)
- `sudo apt update` (update package list)
- `sudo apt upgrade` (upgrade packages)
- `sudo apt install pkg` (install package)
- `sudo apt remove pkg` (remove package)

## Common Linux Commands
- Linux commands are typically entered into a terminal, which is a text-based interface where users can input commands and receive responses from the system. These commands allow users to perform a wide range of tasks, from managing files and directories to configuring system settings and networking.
1. To display the kernel name, use: `uname -s` \
2. To display the kernel release, use: `uname -r` \
3. To display the kernel version, use: `uname -v` \
4. To display the kernel hardware name use: `uname -m` \
5. To display the network node hostname, use: `uname -n` \
6. To display the processor type, use: `uname -p` \
7. To display all information, use: `uname -a` \
8. To remove a file: `rm` \
9. To remove a directory: `rm -rf` \
10. To copy a file: `cp file1.txt /path/to/destination` \
11. To move a file: `mv file1.txt /new/path` \
12. To create an empty file: `touch new_file.txt` \
13. To search for a specific pattern or keyword in one or more files: `grep "keyword" file.txt` \
14. To change the permissions of a file or directory: `chmod +x script.sh` \
###
### echo
Echo prints text to the terminal. The echo command in Linux is  abuilt-in command that allows user to display lines of text or string that are passed as arguments. It is commonly used in shell scripts and batch (bash?) files to output status text to the screen or a file.
Options: 
- `echo -e "Welcome \bto \bCS118"` \b: removes all the spaces in between the text
- `echo -e "Welcome \cto CS118"` \c: suppress trailing new line with backspace interpreter '-e' to continue without emitting new line.
- `echo -e "Welcome \nto \nCS118"` \n: this option creates a new line from where it is used.
- redirect output: `echo "Hello World" > MassBay123` 
- `echo` -> outputs a new line on the terminal
- `type echo` -> "echo is a shell builtin"
- `whereis echo` -> shows where echo is: /usr/bin/echo ...
- `echo "My name is Mike and I'm a \"geek.\""` you can use '\' to suppress the alternative function of a character, in this case, the quotations are used for parameters.\
- using variables with echo, define a variable 
```
foo=bar 
echo foo
```
outputs: foo \
versus 
```
echo $foo
```
outputs: bar \
There is a caveat. If you've wrapped your string in single quote marks echo will treat everything literally. To have the variable value displayed, and not the name of the variable, use double quote marks.
`echo "Lets go to the $foo"` outputs: Lets go to the bar \
versus \
`echo 'Lets go to the $foo'` outputs: Lets go to the $foo \
- using echo with Commands
We can use a command with echo and incorporate its output into the string that is written to the terminal window. We must use the dollar sign $ as though the command was a variable, and wrap the whole command in parentheses.
`date +%D` this will display today's date (00/00/00) \
`echo "Today's date is: $(date +%D)"` \
```
echo "Logfile started: $(date +%'D %T')" > logfile.text
cat logfile.txt
```
outputs: Logfile started: 01/28/26 13:19:47 \
- or you can use echo to create a blank line

## Playing with CAT (Concatenate)
The cat command is one of the most commonly used commands in Linux. Its name comes from concatenate, and it is used to read, display, combine, and create files. The cat command outputs the contents of a file to the terminal or redirects that output to another file.
### Preparation
first, create two files using command output redirection: \
```
ps -ef > FirstName
ls -al > LastName
```
### Common cat commands
- display the contents of a file: `cat FirstName` 
- display the contends of multiple files (in the order they are listed): `cat FirstName LastName`
- combine files into a new file: `cat FirstName LastName > YourFullName`
- append files to an existing file: `cat FirstName LastName >> YourFullName`
- display file contents with line numbers: `cat -n FirstName`
create a file using keyboard input: `cat > RandomInfo`, this allows you to type directly into the file. Press Ctrl + D when you are finished to save and exit. \
create an empty file: `cat > NewFile`, press Ctrl + D immediately to save an empty file.
- suppress repeated blank lines: `cat -s RandomInfo`
- display file contents in reverse order: `tac FirstName`
## SU and SUDO command
the Unix commands sudo and su allow access to other commands as a different user.
### The sudo command
The sudo command allows you to run programs with the security privileges of another user (by default, as the superuser). It prompts you for your personal password and confirms your request to execute a command by checking a file, called sudoers, which the system administrator configures. Using the sudoers file, system administrators can give certain users or groups access to some or all commands without those users having to know the root password. It also logs all commands and arguments so there is a record of who used it for what, and when. \
To use the sudo command, at the command prompt, enter: `sudo command`. Replace command with the command for which you want to use sudo. \
The sudo command also makes it easier to practice the principle of least privilege (PoLP), which is a computer security concept that helps control system access and potential system exploits and compromises. 
### The su command
THe su command allows you to become another user. To use the su command on a per-command basis, enter: `su user -c command`. Replace user with the name of the account which you'd like to run the command as, and command with the command you need to run as another user. To switch users before running many commands, enter: `su user`. Replace user with the name of the account which you'd like to run the commands as. \
The user feature is optional; if you don't provide a user, the su command defaults to the root account, which in Unix is the system administrator account. In either case, you'll be prompted for the password associated with the account for which you're trying to run the command. If you supply a user, you will be logged in as that account until you exit it. To do so, press Ctrl-d or type exit at the command prompt. \
Using su creates security hazards, is potentially dangerous, and requires more administrative maintenance. It's not good practice to have numerous people knowing and using the root password because when logged in as root, you can do anything to the system. This could provide too much power for inexperienced users, who could unintentionally damage the system. Additionally, each time a user should no longer use the root account (for example, an employee leaves), the system administrator will have to change the root password. 

## apt
### The apt and apt-get Commands
In Linux, apt stands for Advanced Package Tool. It is a command-line utility used to install, update, remove, and manage software packages on Debian-based systems such as Debian, Ubuntu, and their derivatives. \

### Updating your System
A common command used to keep a system up to date is: 
```
sudo apt-get update && sudo apt-get upgrade 
```
This command first updates the local package index and then upgrades all installed packages to their latest available versions. 
### What Does apt do?
The apt tool manages software packages and their dependencies. It ensures that applications are installed correctly and that required supporting software is also installed or updated as needed. 
### Common apt and get-apt Commands
- install a package: `sudo apt-get install <package>`
- remove a package: `sudo apt-get remove <package>`, keeps configuration files
- update the package list: `sudo apt-get update`, downloads the latest package information from configured repositories.
- upgrade installed packages: `sudo apt-get upgrade`, upgrades all installed packages to their latest versions without removing existing packages.
- smart upgrade with dependency handling: `sudo apt-get dist-upgrade`, performs upgrades while intelligently handling changing dependencies and package  removals.
### Related Package Management Tools
In addition to apt and apt-get, Linux systems may include other package management tools: 
- apt-cache: Used to search for packages and view package information.
- aptitude: Provides a more interactive and user-friendly interface for managing packages.
```
sudo apt-get update && sudo apt-get -y install powershell
```
## snap
```
sudo snap install powershell --classic
```
### Snap Package management
Snap is a software packaging and deployment system developed by Canonical, the company behind Ubuntu Linux. It allows developers to package applications and all required dependencies into a single compressed file called a snap. \
Snap packages are self-contained, meaning they include all the libraries and dependencies needed to run the application. This makes snaps portable across different Linux distributions and reduces compatibility issues. 

### Security and Sandboxing
Snap packages are designed to run in a sandboxed environment. Sandboxing limits a snap’s access to system resources unless explicit permission is granted. This improves system security by preventing applications from interfering with other software or accessing sensitive data without authorization. 

### Using Snap
Users can manage snap packages using the snap command-line tool or graphical interfaces such as the Ubuntu Software Center. \
Common snap commands include: 
- install a snap package: `sudo snap install <package>`
- remove a snap package: `sudo snap remove <package>`
- update snap packages: `sudo snap refresh`
- list installed snap packages: `snap list`

### Benefits of Snap Packages
- Simplified installation and dependency management
- Improved security through sandboxing
- automatic updates
- easier software distribution for developers
- Consistent behavior across Linux distributions 

## Man Packages
### The man Command in Linux
The man command in Linux is used to display the user manual for commands that can be run from the terminal. It provides detailed documentation that explains how a command works, how to use it, and what options are available. \
A typical manual page includes information such as:
- NAME - the command name and a brief description
- SYNOPSIS – The syntax used to run the command
- DESCRIPTION – A detailed explanation of what the command does
- OPTIONS – Available command-line options and flags
- EXIT STATUS – Exit codes returned by the command
- RETURN VALUES – Values returned by functions (when applicable)
- ERRORS – Possible error messages
- FILES – Related files used by the command
- VERSIONS – Version information
- EXAMPLES – Usage examples
- AUTHORS – Who wrote or maintains the command
- SEE ALSO – Related commands and documentation

### Manual Page Sections
Linux manual pages are organized into numbered sections, each covering a specific type of information:
1. Executable programs or shell commands
2. System calls (functions provided by the kernel)
3. Library calls (functions within program libraries)
4. Games
5. Special files (usually found in /dev)
6. File formats and conventions (for example, /etc/passwd)
7. Miscellaneous (including macro packages and conventions, such as groff(7))
8. System administration commands (typically for the root user)
9. Kernel routines (non-standard)

If you're getting -bash: man: command not found on a WSL (Windows Subsystem for Linux) environment, it means the man (manual) pages system isn't installed. Here's how to fix it: 
### Step-by-Step Fix 
update your package list:
```
sudo apt update
```
Install the man command and the manual pages:
```
sudo apt install man-db manpages
```
(Optional but recommended) If you want additional documentation (e.g., for development tools), install:
```
sudo apt install manpages-dev
```
Verify it's working:
```
man ls 
```
You should now see the manual entry for ls.

## Adding a User 
Users can be added in Linux from the command line using either the useradd or adduser command. While the exact behavior may vary slightly by Linux distribution, the following instructions apply to most Debian- and Red Hat-based systems.
### Using useradd 
The useradd command is the more universal option and is available on nearly all Linux distributions. It is non-interactive, meaning options must be specified explicitly. \
- basic syntax: `sudo useradd [options] username`
- ceate a user with a home directory: `sudo useradd -m username`, the -m options creates a home directory for the user.
- set a password for the user: `sudo passwd username`, you will be prompted to enter and confirm the user's password.
### Using adduser (More User-Friendly Option)
The adduser command is an interactive wrapper around useradd. It automatically creates a home directory, prompts for a password, and allows you to enter user information such as full name and contact details. \
Note: The adduser command may not be installed by default on all Linux distributions. \
Example: `sudo adduser username`.
### Additional Options
- Specify a custom home directory and shell: `sudo useradd -m -d /path/to/home/dir -s /path/to/shell username`, the -d option specifies a custom home directory, and the -s option specifies the login shell.
- add a user to additional groups: `sudo useradd -m -G group1,group2 username`.
- Using adduser to add a user to a group: `sudo adduser username groupname`.
### Important Notes
- Replace username, /path/to/home/dir, /path/to/shell, and groupname with your desired values.
- Administrative privileges (sudo) are required to add users.
- Always ensure a password is set using the passwd command after creating a user.

## Changing Passwords in Linux
Changing a password in Linux is a straightforward process that is performed using the passwd command. This command can be used by regular users to change their own passwords and by system administrators (root or sudo users) to change passwords for other accounts.
### Changing Your Own Password 
If you are logged in and want to change your own password, follow these steps:
1. Open a terminal.
2. Type `passwd` and press Enter.
3. Enter your current password when prompted.
4. Enter your new password and retype it to confirm.

### Changing Another User's Password
If you have superuser or sudo privileges, you can change another user’s password without knowing their current password. \
Steps:
1. Open a terminal.
2. Type `sudo passwd username`, replacing username with the account name.
3. Enter the new password and retype it to confirm.
4. The new password takes effect immediately after it is set.

### Important Notes
- Choose strong passwords that include a mix of uppercase and lowercase letters, numbers, and special characters.
- Some Linux systems enforce password policies such as minimum length, complexity, or expiration requirements.
- If you encounter permission errors, ensure you have the required privileges, especially when changing another user’s password.
- Regularly changing passwords is a recommended security best practice.

## Bash Aliases in Your Blackboard Shell
An alias in Bash is a shortcut name you create for a longer or frequently used command. Aliases make it faster to type common commands and help standardize command options, such as always listing files in a detailed format.
### What an Alias Does 
When you define an alias, Bash remembers the shortcut for the rest of your terminal session. You can then run the shortcut as if it were a normal command.
### Creating an Alias 
Synatx: `alias name='command'` \
Examples: 
- `alias ll='ls -la'` 
- `alias gs='git status'` 
In these examples:
- ll becomes a shortcut for ls -la 
- gs becomes a shortcut for git status

### Managing Aliases
- view current aliases: `alias`
- remove an alias: `unalias gs`

### Making Aliases Permanent
Aliases created at the command line disappear when you close the terminal. To make them permanent, add them to a shell startup file. \
For Bash users, add aliases to:
-  `~/.bashrc`
- `~/.bash_profile`
Example:
- `vim ~/.bashrc`
- `alias ll='ls -la'`
- `source ~/.bashrc`

## Wildcards
### ###Linux Wildcards (Globbing) Overview
In Linux, wildcards are special characters used by the shell (such as Bash) to match filenames and paths. This process is called globbing. \ 
Important distinction: Wildcards are expanded by the shell, not by the command itself. \
The shell replaces the wildcard pattern with matching filenames before the command runs. \
Wildcards are commonly used with commands like:
- ls 
- cp 
- mv 
- rm 
- find (with caveats)

### Common Linux Wildcards 
| Wildcard | Meaning                              | Example       |
| -------- | ------------------------------------ | ------------- |
| *        | Matches zero or more characters      | *.txt         |
| ?        | Matches exactly one character        | file?.txt     |
| []       | Matches a range or set of characters | file[1-3].txt |
| {}       | Brace expansion (not a true wildcard | file{1,2}.txt |

### 1. The Asterisk *
#### Matches Zero or More Chaarcters
```
ls *.txt
```
Lists all files ending in .txt
#### Match Files Starting with a Pattern 
```
ls report*
```
Matches:
```
report.txt
report2024.csv
report_final.doc 
```
#### Match Files Containing a Pattern 
```
ls *log*
```
### 2. The Question Mark ?
#### Matches Exactly One character
```
ls file?.txt
```
Matches:
```
file1.txt
fileA.txt
```
Does not match:
```
file10.txt
```
### 3. Character Sets and Range []
#### Match Specific Characters
```
ls file[ab].txt 
```
Matches:
```
filea.txt
fileb.txt
```
#### Match Numeric Ranges
```
ls file[1-3].txt
```
Matches:
```
file1.txt
file2.txt
file3.txt
```
#### Match Alphabetic Ranges
```
ls [a-c]*
```
Matches files starting with a, b, or c.

### 4. Brace Expansion {} (Related but different)
Brace expansion is not pattern matching. \
It generates multiple strings before globbing.
```
echo file{1,2,3}.txt
```
Output:
```
file1.txt file2.txt file3.txt 
```
Common Use:
```
touch file{A,B,C}.log 
```
Creates:
```
fileA.log
fileB.log
fileC.log
```
### Wildcards with Common Linux Commands
```
ls *.conf 
cp *.txt backup/ 
mv report*.csv archive/
rm *.tmp (USE CAREFULLY)
ls *.tmp   # preview first
```

### Wildcards vs Regular Expressions in Linux
| Feature    | Wildcards  | Regex                  |
| ---------- | -----------| ---------------------- |
| Used by    | Shell      | Tools (grep, sed, awk) |
| Complexity | Simple     | Advanced               |
| Syntax     | Minimal    | Rich                   |
| Best for   | File names | Text matching          |

### Wildcards with find (Important Difference)
find does not use shell globbing by default.
```
find . -name "*.txt"
```
Here:
- *.txt is passed as a string
- fine does the matching, not the shell

### Case Sensitivity
Linus wildcards are cae-sensitive
```
ls *.TXT   # different from *.txt
```
### Common Mistakes
- Forgetting Linux is case-sensitive
- Using wildcards when regex is required
- Running rm with wildcards without previewing
- Expecting find to behave like ls

### Best Practices
- Use ls to preview wildcard matches
- Quote patterns only when you don’t want expansion 
- Be extra cautious with rm, mv, and cp
- Know when to use wildcards vs regex

### Linux vs PowerShell Wildcards (Quick Compare)
| Feature          | Linux           | Powershell      |
| ---------------- | --------------- | --------------- |
| Expanded by      | Shell           | Cmdlet          |
| Case sensitivity | Yes             | No (by default) |
| Regex support    | Separate tools  | Built-in        |
| Common operator  | * ? []          | -like           |

### Key Takeaway for Students
Linux wildcards are a fast and powerful way to work with groups of files, but they are expanded by the shell and must be used carefully.

## GREP: Search for a Word in a File
Sample File: log.txt
```
2025-05-20 10:00:01 INFO Starting backup process
2025-05-20 10:05:43 ERROR Failed to connect to database
2025-05-20 10:07:12 INFO Backup completed successfully
2025-05-20 10:15:55 WARNING Low disk space
```
Goal: find all lines in log.txt that contain the word ERROR
Command: `grep "ERROR" log.txt` \
Output: `2025-05-20 10:05:43 ERROR Failed to connect to database` \
What This Does:
- grep searches each line of the file for the string "ERROR" and prints the matching lines.
Bonus Options:
- -i -> ignore case: `grep -i "error" log.txt`
- -n -> show line numbers: `grep -n "ERROR" log.txt`
- -v -> invert match (show lines not containing "ERROR"): `grep -v "ERROR" log.txt`

## AWK 
### Example: Calculate the Average Score
Sample Input File: scores.txt 
```
Alice 85
Bob 92
Charlie 78
Diana 90
```
Goal: Print each student's name and score, and at the end, print the average score.
AWK Command:
```
awk '{print $1 ": " $2; sum += $2} END {print "Average:", sum/NR}' scores.txt
```
Explanation:
- $1 = first field (name)
- $2 = second field (score)
- sum += $2 accumulates scores
- NR = number of records (lines)
- END { ... } runs after all lines are processed
Output:
```
Alice: 85
Bob: 92
Charlie: 78
Diana: 90
Average: 86.25
```

## SED 
The sed command, short for Stream Editor, is a powerful Linux utility used to perform text transformations on input data. It works by reading text line by line, applying specified operations, and sending the result to standard output. Because sed does not modify files by default, it is commonly used in scripts and pipelines for safe and efficient text processing. \
sed is especially useful for searching, replacing, inserting, deleting, and transforming text within files or command output.
### Basic Syntax
`sed [options] 'command' file`
- options control how sed behaves
- command defines the text operation to perform
- file is the input file (optional when using pipes)
### Common Uses of sed 
#### Display Modified Output Without Changing the Files
By default, sed prints the modified output to the screen and leaves the original file unchanged.
```
sed 's/cat/dog/' animals.txt
```
This replaces the first occurrence of cat with dog on each line.
#### Replace All Occurrences in a line
```
sed 's/cat/dog/g' animals.txt 
```
The g flag replaces all occurrences on each line.
#### Edit a File In Place
```
sed -i 's/cat/dog/g' animals.txt
```
- The -i option edits the file in place 
- Use with caution, as changes cannot be easily undone
#### Delete Lines 
Delete a specific line: `sed '3d' file.txt`
Delete lines matching a pattern: `sed '/error/d' logfile.txt`

#### Print Specific Lines
```
sed -n '5p' file.txt
```
- -n suppresses normal outputs
- p prints only the specified line

#### Use sed with Pipes 
sed works well with other Linux commands:
```
ps -ef | sed 's/root/ADMIN/'
```
This replaces the word root with ADMIN in the output.

### Common sed Commands 
| Command | Description                     |
| ------- | ------------------------------- |
| s       | Substitute (search and replace) |
| d       | Delete a line                   |
| p       | Print a line                    |
| g       | Global replacement flag         |
| -i      | Edit file in place              |
| -n      | Suppress automatic output       |

### Why Use sed? 
- Efficient text processing without opening files in an editor
- Ideal for automation and scripting
- Works with large files and streams
- Commonly used in shell scripts and system administration tasks

### Summary
The sed command is a versatile and efficient tool for modifying text directly from the command line. While it may appear complex at first, mastering basic sed operations greatly enhances your ability to process and automate text-based tasks in Linux environments.

## Cut 
### Using the cut Command 
The cut command is a Linux text-processing utility used to extract specific sections of text from each line of a file or command output. It is commonly used to work with structured data such as columns in a file, log entries, or command output separated by spaces, tabs, or other delimiters. \
cut reads input line by line and outputs only the selected fields, characters, or byte positions, making it especially useful in scripts and pipelines.
### Basic Syntax
```
cut [options] file
```
Or when used with a pipe:
```
command | cut [options]
```
### Common Uses of cut 
#### Cut by Characrer Position 
```
cut -c 1-5 filename.txt 
```
Extracts characters 1 through 5 from each line.
#### Cut a Single Character 
```
cut -c 3 filename.txt 
```
Extracts only the third character from each line.
#### Cut by Field (Column) 
```
cut -f 1 filename.txt
```
Extracts the first field from each line. \
By default, fields are separated by tabs.

#### Specify a Custom Delimiter
```
cut -d ':' -f 1 /etc/passwd 
```
- -d ':' sets the delimiter to a colon
- -f 1 extracts the first field
This command displays usernames from the /etc/passwd file.
#### Extract Multiple Fields 
```
cut -d ',' -f 1,3 data.csv 
```
Extracts fields 1 and 3 from a comma-separated file.

#### Use cut with Pipes
```
ps -ef | cut -c 1-50
```
Extracts the first 50 characters of each line from the process list.
#### Common cut Options 
| Option      | Description                            |
| ----------- | -------------------------------------- |
| -c          | Select character positions             |
| -f          | Select fields (columns)                |
| -d          | Specify a delimiter                    |
| -complement | Display all except the selected fields |
| -s          | Suppress lines without the delimiter   |

### Why Use cut?
- Quickly extract specific data from text files
- Ideal for working with structured data (logs, CSV files, system files)
- Efficient and lightweight
- Commonly used in shell scripts and command pipelines

### Summary 
The cut command is a simple yet powerful tool for extracting specific pieces of information from text. While it works best with consistently formatted input, it is an essential utility for Linux users who need fast, reliable text processing directly from the command line.

## Sort 
### Using the sort Command 
The sort command in Linux is used to sort lines of text from a file or standard input. It is commonly used when working with data files, logs, or command output to organize information alphabetically, numerically, or in reverse order. \
By default, sort arranges text in ascending alphabetical order, but it provides many options to control how data is sorted.
### Basic Syntax
```
sort [options] file
```
or when used with a pipe:
```
command | sort [options]
```
### Common Uses of sort 
#### Sort a File Alphabetically
```
sort filename.txt
```
Displays the file
