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

## Head and Tail 
The head and tail commands in Linux are used to display the beginning or the end of a file, respectively. These commands are especially useful when working with large files, log files, or command output where viewing the entire file is unnecessary. By default, both commands display 10 lines of output unless otherwise specified.

### Using the head Command
The head command displays the first part of a file.
### Basic Syntax
```
head [options] file
```
### Display the First 10 Lines
```
head filename.txt 
```
Displays the first 10 lines of the file.
### Display a Specific Number of Lines 
```
head -n 5 filename.txt 
```
Displays the first 5 lines.
### Display the First N Bytes
``` 
head -c 20 filename.txt
```
Displays the first 20 bytes of the file.

### Using the tail Command
The tail command displays the last part of a file.

### Basic Syntax
``` 
tail [options] file
```
### Display the Last 10 Lines
``` 
tail filename.txt
```
Displays the last 10 lines of the file.

### Display a Specific Number of Lines
``` 
tail -n 5 filename.txt
```
Displays the last 5 lines.

### Follow a File in Real Time
```
tail -f logfile.txt
```
Displays new lines as they are added to the file. This is commonly used to monitor log files. Press Ctrl + C to stop following the file.

### Using head and tail with Pipes
``` 
ps -ef | head
```
Displays the first 10 lines of process output.
``` 
ps -ef | tail -n 5
```
Displays the last 5 lines of process output.

### Common Options
| Option | Description                     |
| ------ | ------------------------------- |
| -n     | Specify number of lines         |
| -c     | Specify number of bytes         |
| -f     | Follow file updates (tail only) |

### Why Use head and tail?
- Quickly preview large files
- Inspect logs and output files
- Monitor system activity in real time
- Combine with other commands in pipelines
### Summary
- The head and tail commands are simple yet powerful tools for viewing portions of files in Linux. They are essential utilities for efficiently inspecting large files and monitoring system output without opening a full text editor.

## Introduction to Bash Scripting
Bash scripting allows you to place a sequence of commands into a file and execute them as a program. Bash scripts are commonly used to automate repetitive tasks, manage systems, and improve efficiency when working in the terminal. \
Instead of typing the same commands repeatedly, you can write a script once and run it whenever needed.
### Creating a Bash Script 
To create a Bash script, begin the file with a shebang. The shebang tells the operating system which interpreter should be used to execute the script.
```
#!/bin/bash 
```
After writing your script, you must give it execute permissions before it can be run.
```
chmod +x scriptname.sh
```
### Example: Simple Bash Script
Below is a basic example of a Bash script that prints a greeting message:
```
#!/bin/bash
# This script prints a greeting message
 
echo "Hello, World!"
```
Run the script using:
```
./scriptname.sh
```
### Using Variables in Bash Scripts
Variables allow scripts to store and reuse data. In Bash, variables are assigned using the = operator without spaces.
### Example: Using Variables
```
#!/bin/bash
# Assign a value to a variable
 
name="World"
echo "Hello, $name!"
```
In this example:
- The variable name stores a value
- The $name syntax retrieves the stored value
- Double quotes allow the variable to be expanded
### Summary
Bash scripting is a powerful tool for automating tasks and improving productivity in Linux environments. By understanding script structure, execution permissions, and variables, you can begin writing scripts that simplify your daily work and form the foundation for more advanced scripting techniques.

## Bash Syntax for Scripting 
A Bash script is a file containing a sequence of commands that are executed by the Bash shell. Bash scripting is commonly used to automate repetitive tasks, manage systems, and perform complex operations efficiently. Understanding Bash syntax is essential for writing scripts that are clear, reliable, and easy to maintain.

### Script Structure
```
#!/bin/bash
# Script description
# Author: Your Name
 
commands
```
- The shebang or shabang (#!/bin/bash) tells the system to use Bash to run the script.
- Comments describe what the script does and help others understand your code.

### Basic Syntax Rules
#### Comments
```
# This is a comment
echo "Hello World"  # This prints text to the screen
```
#### Command Execution Order
Bash executes commands sequentially, from top to bottom, unless control structures (loops or conditionals) alter the flow.
```
echo "First"
echo "Second"
echo "Third"
```
#### Using Semicolons
A semicolon (;) allows multiple commands to be placed on a single line.
```
echo "Start"; echo "Middle"; echo "End"
```
Each command runs in order, just as if they were on separate lines.
#### Variables
Variables store data that can be reused throughout a script.
Variables are assigned without spaces.
```
name="Alice"
echo "Hello $name"
```
#### Quoting
Quoting controls how Bash interprets text:
- Double quotes (" ") allow variable expansion
- Single quotes (' ') treat text literally
```
echo "$name"
echo '$name'
```
#### Command Substitution
Command output can be stored in a variable using $( ).
```
current_user=$(whoami)
echo "You are logged in as $current_user"
```
#### Exit Status
Every command returns an exit status:
- 0 indicates success
- Any non-zero value indicates an error
```
ls /tmp
echo $?
```
#### Best Practices
- Use meaningful variable names
- Comment complex or non-obvious code
- Indent code for readability
- Test scripts incrementally
- Avoid running scripts as root unless necessary
#### Summary
Bash scripting relies on simple but powerful syntax rules. By understanding how Bash interprets commands, variables, and execution flow, you can write scripts that are efficient, readable, and reliable. Mastering these fundamentals is the foundation for advanced scripting concepts such as conditionals, loops, and automation.

## Managing File Permissions and Ownership in Linux Using chmod, chown, and chgrp
Linux controls access to files and directories through permissions and ownership. The commands chmod, chown, and chgrp are used to manage who can read, write, or execute files and who owns them. Understanding these commands is essential for system administration, security, and scripting.

### Understanding File Permissions 
Each file and directory has three permission types:
- Read (r) – View file contents or list directory contents
- Write (w) – Modify a file or create/delete files in a directory
- Execute (x) – Run a file as a program or access a directory

Permissions apply to three categories:
- User (u) – The file owner
- Group (g) – Users in the file’s group
- Others (o) – All other users

You can view permissions using:
```
ls -l
```
Example output: 
```
-rwxr-xr--
```

### Using the chmod Command 
The chmod command changes file and directory permissions.

#### Basic Syntax 
```
chmod [options] permissions file
```

#### Using Symbolic Mode 
```
chmod u+x script.sh 
# Adds execute permission for the file owner.

chmod g-w file.txt 
# Removes write permission from the group.

chmod o+r file.txt 
# Adds read permission for others.
```

### Using Numeric (Octal) Mode
| Number | Permission  |
| ------ | ----------- |
| 4      | read (r)    |
| 2      | write (w)   |
| 1      | execute (e) |

Example:
```
chmod 755 script.sh
```
- User: read, write, execute
- Group: read, execute
- Others: read, execute

### Using the chown Command 
The chown command changes the owner of a file or directory.

#### Basic Syntax
```
chown user file

sudo chown alice file.txt
# Changes the owner of file.txt to alice.

sudo chown alice:developers file.txt 
# Sets the owner to alice and the group to developers.

sudo chown -R alice myfolder/ 
# Changes ownership of a directory and all its contents (RECURSIVELY).
```

### Using the chgrp Command
The chgrp command changes the group ownership of a file or directory.

#### Basic Syntax
```
chgrp group file 


sudo chgrp staff report.txt
# Assigns the file to the staff group.

sudo chgrp -R staff shared_folder/
# Changes group ownership for a directory and all subdirectories (RECURSIVELY).
```

## First Script - Script1.sh 
```
#!/bin/bash
# ^ this is known as the shabang! and allows you to define the environment to run your script in﻿
# Author : Mike Lyons
# Hashtags are used here to ig﻿nore the line so 
 
class="CS100"
echo "What is your name?"
read PERSON
echo "Hello, $PERSON and welcome to $class"
# Note that UNIX/Linux/BSD are case sensitive﻿
```

## Setting Variables 

### Using Variables in Bash
In Bash, variables are used to store values that can be referenced and reused later in a script or command line session. Variables do not require a data type and are assigned using the = operator (with no spaces).

### Assigning and Displaying a Variable
```
foo=bar
echo $foo

# outputs: "bar"
```

### Assigning Command Output to a Variable 
```
foo=$(whoami)
echo $foo

# outputs: <your username>
```

### Assigning a Numeric Value
```
foo=1
echo $foo

# outputs: 1
```

### Performing Arithmetic with Variables
```
foo=$(( foo + 5 ))
echo $foo

# outputs: 6
```

### Key Notes
- Do not use spaces around the = sign when assigning variables
- Use $variable to reference a variable’s value
- Use $(command) to store command output
- Use $(( )) for arithmetic operations

## Script2.sh - setting a variable as a command
```
#!/bin/bash
greeting="Welcome"
user=$(whoami)
day=$(date +%A)
echo "$greeting back $user!"
echo "Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is:"
bash --version
```
We are setting variables at the top. \
We are defining a variable to be a command. I had mentioned we could do this with an alias, but now, in BASH, we can set it similar to how we did it in PowerShell. \
We can also call on the Bash command and its options to provide information.

## Script3.sh - an illustration of positional variables 
```
#!/bin/bash
echo "File Name: $0" # Positional variable, gives us the name
echo "First Argument: $1"
echo "Second Argument: $2"
echo "Quoted Values: $@" # @ represent an array, all the argumnets we give the script, we can use this to run any code we write in this file
echo "Quoted Values: $*" # everything that we passed in as arguments
echo "Total Number of Arguments: $#"
echo "Error code: $?"
exit 10 # edits the exit code, only shows up after you run the script and type echo $?
# when we come out of a script, $?, exit state, 0 is clean, error number otherwise

# The $ character represents the process ID number, or PID, of the current shell Ã¢Ë†â€™
# $echo $$
# The above command writes the PID of the current shell
 
# The following shows a number of special variables that you can use in your shell scripts
# $0
# The filename of the current script.
 
# $n
# These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is 
# $1, the second argument is $2, and so on).
 
# $?
# Will display the exit code on the script.
 
# $#
# The number of arguments supplied to a script.
 	
# $*
# All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
 	
# $@
# All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
 	
# $?
# The exit status of the last command executed.
 	
# $$
# The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
 	
# $!
# The process number of the last background command.
```

## Bash Data Types

### Strings 
```
name="Michael"
echo "Hello $name"
```

### Quoting Strings 
- Double quotes (" ") allow variable expansion
- Single quotes (' ') treat text literally
```
echo "$name"
echo '$name'
```

### Integers (Numeric Values) 
```
count=5
count=$((count + 3))
echo $count
```
Arithmetic operations are performed inside $(( )).

### Arrays
```
colors=("red" "green" "blue")
echo ${colors[0]} # displays "red"
echo ${colors[@]} # displays all the elements in the array
echo ${#colors[@]} # displays the length of the array
```

## Boolean Values (True/False)
```
if [ -f "/etc/passwd" ]; then
  echo "File exists"
fi
```

## Command Substitution
```
user=$(whoami)
echo "Current user: $user"
```

## Special Variables

| Variable | Description                 |
| -------- | --------------------------- |
| $0       | Script name                 |
| $1-$9    | Positional parameters       |
| $#       | Number of arguments         |
| $?       | Exit status of last command |
| $$       | Process ID of the script    |

## Environment Variables
Environment variables store system-wide values and are typically written in uppercase.
```
echo $HOME
echo $PATH
```
To create one:
```
export MY_VAR="example"
```

## Best Practices 
- Treat all variables as strings unless performing arithmetic
- Use $(( )) for math operations
- Quote variables to prevent unexpected behavior
- Use arrays for lists of related values
- Check exit statuses to control logic flow

## PS 
The ps command in Linux is used to display information about currently running processes on a system. It provides a snapshot of active processes at the moment the command is executed and is commonly used for system monitoring, troubleshooting, and process management. \
Each process shown by ps includes details such as the process ID (PID), the user running the process, CPU usage, memory usage, and the command that started the process.

### Basic Syntax
```
ps [options]
```

### Common ps Command Options
```

# Display Processes for the Current User
ps
# Shows processes associated with the current terminal session.

# Display All Running Processes
ps -e
# OR 
ps -A 
# Displays all processes running on the system.

# Display Detailed Process Information 
ps -ef 
# - -e shows all processes
# -f displays full-format output
# This is one of the most commonly used ps commands.
```

### BSD-Style Output (Commonly Used)
```
ps aux
```
- a shows processes for all users
- u displays user-oriented output
- x includes processes without a controlling terminal

## Top 
The top command in Linux is an interactive, real-time system monitoring tool used to display information about running processes and system performance. Unlike the ps command, which provides a snapshot in time, top continuously updates its output, making it ideal for monitoring system activity as it happens. \
top is commonly used by system administrators and users to identify high CPU or memory usage, monitor system load, and troubleshoot performance issues.

### Process List (Bottom Section)
| Field        | Description                                            |
| ------------ | ------------------------------------------------------ |
| Uptime       | How long the system has been running                   |
| Load Average | System load over the last 1, 5, and 15 minute          |
| Tasks        | Total, running, sleeping, stopped, and zombie processe |
| %CPU         | CPU usage breakdown                                    |
| Memory       | Total, used, and free RAM                              |
| Swap         | Swap memory usage                                      |

### Useful Interactive Commands 
While top is running, you can press keys to change the display:
| Key | Action                          |
| --- | ------------------------------- |
| P   | Sort by CPU usage                 |
| M   | Sort by memory usage            |
| T   | Sort by run time                |
| k   | Kill a process (prompt for PID) |
| r   | Change process priority         |
| 1   | Show CPU usage per core         |
| h   | Display help                    |
| q   | Quit top                        |

### Why Use top?
- Monitor system performance in real time
- Identify resource-heavy processes
- Troubleshoot slow or unresponsive systems
- Manage processes interactively

The top command is a powerful and essential Linux monitoring tool that provides a live view of system activity. By understanding its layout and interactive commands, users can quickly diagnose performance issues and manage running processes effectively.


## Kill 
The kill command in Linux is used to send signals to running processes. While its name suggests that it always stops a process, kill can actually send many different signals that control how a process behaves. It is most commonly used to terminate processes that are unresponsive or consuming excessive system resources. \
To use kill, you must know the process ID (PID) of the target process, which can be found using commands such as ps or top.
```
# Basic Syntax 
kill [options] PID 

# Gracefully Terminate a Process 
kill PID 

# Forcefully Terminate a Process 
kill -9 PID 

# Kill Multiple Processes 
kill PID1 PID2 PID3 

# Kill Processes by Name
killall processname 
```
### Common Signals 
| Signal  | Number | Description                                      |
| ------- | ------ | ------------------------------------------------ |
| SIGTERM | 15     | Graceful termination (default)                   |
| SIGKILL | 9      | Forceful termination                             |
| SIGSTOP | 19     | Pause a process                                  |
| SIGCONT | 18     | Resume a paused process                          |
| SIGHUP  | 1      | Reload configuration (commonly used by services) |

### Finding a Process Id 
```
ps -ef | grep processname
# or 
ps aux | grep processname 
```

### Why Use kill?
- Stop frozen or unresponsive programs
- Manage system performance
- Control background and runaway processes
- Restart services after configuration changes
### Best Practices
- Always try SIGTERM before using SIGKILL
- Confirm the PID before sending a signal
- Use administrative privileges (sudo) when required

## Script4.sh - background processes and kill 
```
#!/bin/bash
while true
do
	echo "Press [CTRL+C] to stop.."
echo "Hello World"
	sleep 1
done
```
### Running the Script in the Background 
When you append "&" to your script command, like this, the shell starts the script in the background. You will get a job number and a process ID (PID) for the script, and the command prompt returns immediately, allowing you to continue using the terminal for other tasks.
### Managing Background Processes 
- To bring the script back to the foreground: Use the fg command. If you have multiple background jobs, use fg %jobnumber to specify which job to bring to the foreground.
- To list jobs: Use the jobs command to see a list of all jobs. You will see the job number, the state of the job (Running, Stopped, etc.), and the command that started the job.
- To stop (pause) a background process: You can use the kill command with the -STOP option and the PID of the process or kill -STOP %jobnumber.
- To terminate a background process: Use the kill command with the process's PID or kill %jobnumber. If the process does not terminate with a regular kill command (which sends SIGTERM), you might need to use kill -9 followed by the PID or %jobnumber to send SIGKILL, which forcibly terminates the process.

## df 
The df command in Linux is used to display information about disk space usage on file systems. The name df stands for disk free, and it reports how much disk space is used, available, and total on mounted file systems. \
The df command is commonly used by system administrators and users to monitor storage usage and ensure that disks are not running out of space.
```
# basic syntax 
df [options] 

# Display Disk Usage for All File Systems 
df 

# Display Human-Readable output 
df -h 

# Display Disk Usage for a Specific File System 
df -h /home 

# Include File System Type 
df -T 

# Display Inode Usage 
df -i 
```
### Understanding df output 
| Column     | Description                   |
| ---------- | ----------------------------- |
| Filesystem | Name of the file system       |
| Size       | Total size of the file system |
| Used       | Space currently used          |
| Avail      | Available space               |
| Use%       | Percentage of disk used       |
| Mounted on | Mount point                   |

### Why Use df?
- Monitor disk space usage
- Prevent disks from filling up
- Troubleshoot storage-related issues
- Verify available space before installing software or copying files
### Best Practices
- Use df -h for quick and readable output
- Monitor critical file systems such as /, /home, and /var
- Combine df with tools like du for detailed directory-level analysis

## du 
The du command in Linux is used to display disk usage for files and directories. The name du stands for disk usage, and it reports how much disk space is consumed by directories and files, rather than showing free space like the df command. \
du is commonly used to identify large directories, track down storage issues, and analyze disk usage at a more detailed level.

```
# basic syntax 
du [options] [file or directory] 

# Display Disk Usage for the Current Directory
du 

# Display Human-Readable Output 
du -h 

# Display Total Size of a directory 
du -sh directoryname 

# Display Disk Usage for All Files and directories 
du -h * 

# Limit Directory Depth 
du -h --max-depth=1 

# Using du with Sorting 
du -h * | sort -h 
```

### Common du Options
| Option      | Description                          |
| ----------- | ------------------------------------ |
| -h          | Human-readable output                |
| -s          | Summary total                        |
| --max-depth | Limit directory depth                |
| -a          | Include files as well as directories |

### Why Use du?
- Identify large files and directories
- Analyze disk usage at the directory level
- Troubleshoot storage consumption
- Manage disk space more effectively
### du vs df
- du shows how much space files and directories use
- df shows how much space is available on file systems
Both commands are often used together for complete disk analysis.


## free 
The free command in Linux is used to display information about system memory usage. It shows how much RAM and swap space is currently in use, free, or available, helping users and system administrators monitor memory consumption and diagnose performance issues. \
The free command provides a quick snapshot of memory usage at the time it is run.

```
# basic syntax 
free [options] 

# Display Memory Usage
free 

# Display Human-Readable Output
free -h 

# Continuously Update Memory usage
free -s 5 
# Refreshes the memory display every 5 seconds. 

# Display Total Memory Only 
free -t 
```

### Understanding free output
| Column     | Description                           |
| ---------- | ------------------------------------- |
| total      | Total installed memory                |
| used       | Memory currently in use               |
| free       | Unused memory                         |
| shared     | Memory used by tmpfs                  |
| buff/cache | Memory used for buffers and cache     |
| available  | Memory available for new applications |

### Important Note on Memory Usage
Linux uses unused memory as cache to improve performance. \  
Seeing low "free" memory is normal as long as sufficient memory is listed under available.

### Swap Memory
Swap is disk space used as an extension of RAM when physical memory is full. \
The free command shows both total and used swap space.
```
free -h 
```
### Why Use free?
- Monitor RAM and swap usage
- Diagnose slow system performance
- Identify memory pressure issues
- Verify available memory before running applications
### Best Practices
- Use free -h for readability
- Focus on the available column rather than just free
- Combine with tools like top or htop for deeper analysis

## uptime 
The uptime command in Linux displays how long a system has been running since its last reboot. In addition to system runtime, it also provides information about the number of logged-in users and the system load averages. This command is commonly used to quickly assess system stability and workload. 
```
# basic syntax 
uptime
```
### Understanding uptime Output
A typical uptime output looks similar to this:
``` 
14:32:10 up 12 days, 4:18, 3 users, load average: 0.15, 0.10, 0.08
```
### Output Breakdown 
| Field        | Description                                    |
| ------------ | ---------------------------------------------- |
| Current time | The current system time                        |
| Up time      | How long the system has been running           |
| Users        | Number of users currently logged in            |
| Load average | System load over the last 1, 5, and 15 minutes |

### Load Average Explained
Load average represents the average number of processes that are either:
- Actively using the CPU, or
- Waiting to use the CPU

### Interpreting Load Average
- Low load values indicate an idle or lightly used system
- High load values may indicate performance issues
As a general rule, a load average close to or lower than the number of CPU cores indicates healthy system performance.

### Common Options 
```
# Display System Boot Time 
uptime -s 

# Display Load Averages only 
uptime -p 
```

### Why Use uptime?
- Check how long a system has been running
- Determine if a system has recently rebooted
- Monitor system workload at a glance
- Assess overall system health

## Script5.sh - A while loop but we feed in a file 
```
echo Blue >> input.txt
echo Red >> input.txt
echo Green >> input.txt
 
 
#!/bin/bash
while read line
do
  echo $line
done < input.txt
```

## Script6.sh - while loop 
```
while [ condition ]
do
  command1
  command2
  command3
  ...
done
```
```
#!/bin/bash
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))
done
```

## Script7.sh - until loop 
```
until [ condition ]
do
  command1
  command2
  command3
  ...
done
```
```
#!/bin/bash
x=1
until [ $x -gt 5 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))
done
```
```
#!/bin/bash
file_path="/tmp/special_file"
 
echo "Waiting for $file_path to be created..."
 
until [ -f "$file_path" ]; do
  sleep 1
done
 
echo "$file_path exists. Proceeding with the script..."
```

## Script8.sh - for loop 
```
for variable in list
do
  command1
  command2
  command3
  ...
done 
```
```
#!/bin/bash
for n in a b c;
do
   echo $n
done 
```
### Example: Iterating Over a Range Using Brace Expansion
```
#!/bin/bash
# Using brace expansion to generate a sequence of numbers
for number in {1..5}
do
  echo "Number: $number"
done 
```
### Example: Iterating Over Array Elements
```
#!/bin/bash
# Define an array
names=('Alice' 'Bob' 'Charlie')
 
# Iterate over the array elements
for name in "${names[@]}"
do
  echo "Hello, $name!"
done 
```
### Example: Iterating Over Files in a Directory
```
#!/bin/bash
# Iterate over all text files in the current directory
for file in *.txt
do
  echo "Processing $file..."
  # You can add commands here to process each file
done 
```

## Bash Conditional Statements 
### If Statements 
```
if [ condition ]; then 
   commands
fi
```
```
num=10

if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
fi
```

### If-Else Statements 
```
num=3

if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is 5 or less"
fi 
```
### If-Elif-Else Statements 
```
num=5

if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
elif [ $num -eq 5 ]; then
    echo "Number is exactly 5"
else
    echo "Number is less than 5"
fi 
```
### Common Test Operators 
#### Numeric operators:
- -eq : equal to
- -ne : not equal to
- -gt : greater than
- -lt : less than
- -ge : greater than or equal to
- -le : less than or equal to

#### String operators:
- = : equal to
- != : not equal to
- -z : string is empty
- -n : string is not empty

#### File test operators:
- -e : file exists
- -f : regular file
- -d : directory exists

### Combining Conditions 
```
if [ $age -ge 18 ] && [ $age -lt 65 ]; then
    echo "Working age"
fi
```
- && : logical AND
- || : logical OR
- ! : logical NOT

### Best Practices
- Always include spaces inside square brackets
- Quote variables when working with strings
- Indent code for readability
- Test scripts with different values

## Script9.sh - if statements 
```
#!/bin/bash
echo "Welcome to the Script"
echo "================================================="
echo "Options:"
echo ""
echo "Press 1 for Hello"
echo "Press 2 for Goodbye"
echo "Press 3 for Aloha"
echo "Press 4 for Toodaloo"
echo "================================================="
echo "Enter your choice: "
read input
if [ "$input" = 1 ]
then echo "Hello to you too"
        elif [ "$input" = 2 ]
        then echo "Bye bye!"
                elif [ "$input" = 3 ]
                then echo "Mahalo"
                        elif [ "$input" = 4 ]
                        then echo "ok"
        else
                echo "I don't understand"
fi 
```
```
if [ 5 -gt 10 ]
then  
# If variable less than 10  
   echo "number is greater than 10"
else
   echo "number is less than 10"
fi  
```
```
#!/bin/bash
 # Initializing the variable
 a=20
 if [ $a < 10 ] 
then  
      # If variable less than 10    
      echo "a is less than 10" 
elif [ $a < 25 ] 
then  
      # If variable less than 25  
      echo "a is less than 25" 
else   
     # If variable is greater than 25   
     echo "a is greater than 25"  
fi 
```
```
#!/bin/bash
 
if [ -d "/etc" ]; then
  echo "/etc is a directory."
else
  echo "/etc is not a directory."
fi 
```
```
#!/bin/bash
 
if [ -f "/etc" ]; then
  echo "/etc is a file."
else
  echo "/etc is not a file."
fi 
```

### File Tests
- `-d FILE`: True if FILE exists and is a directory.
- `-e FILE`: True if FILE exists.
- `-f FILE`: True if FILE exists and is a regular file.
- `-h FILE` or `-L FILE`: True if FILE exists and is a symbolic link.
- `-r FILE`: True if FILE exists and is readable.
- `-s FILE`: True if FILE exists and has a size greater than zero.
- `-w FILE`: True if FILE exists and is writable.
- `-x FILE`: True if FILE exists and is executable.

### String Tests
- `STRING1 = STRING2`: True if the strings are equal.
- `STRING1 != STRING2`: True if the strings are not equal.
- `-z STRING`: True if the string is empty.
- `-n STRING`: True if the string is not empty.

### Arithmetic Tests
- `NUM1 -eq NUM2`: True if NUM1 is equal to NUM2.
- `NUM1 -ne NUM2`: True if NUM1 is not equal to NUM2.
- `NUM1 -lt NUM2`: True if NUM1 is less than NUM2.
- `NUM1 -le NUM2`: True if NUM1 is less than or equal to NUM2.
- `NUM1 -gt NUM2`: True if NUM1 is greater than NUM2.
- `NUM1 -ge NUM2`: True if NUM1 is greater than or equal to NUM2.

## Case Statements 
A case statement in Bash provides a clean and efficient way to execute different blocks of code based on the value of a variable or expression. It is often used as an alternative to multiple if / elif statements, especially when comparing a single value against many possible options. \
Case statements improve readability, maintainability, and organization of scripts that rely on menu selections, user input, or predefined values.

```
case variable in
  pattern1)
    commands
    ;;
  pattern2)
    commands
    ;;
  *)
    default commands
    ;;
esac
```
### Key Components
- case begins the statement
- variable is the value being tested
- pattern) defines a match condition
- ;; ends each case block
- * acts as a default case (similar to else)
- esac ends the case statement
```
 
day="Monday"
 
case $day in
  Monday)
    echo "Start of the work week"
    ;;
  Friday)
    echo "Almost the weekend"
    ;;
  *)
    echo "Just another day"
    ;;
esac 
```
### Using Case Statements with User Input
Case statements are commonly used to process user input.
```
echo "Enter a number between 1 and 3:"
read choice
 
case $choice in
  1)
    echo "You selected option 1"
    ;;
  2)
    echo "You selected option 2"
    ;;
  3)
    echo "You selected option 3"
    ;;
  *)
    echo "Invalid selection"
    ;;
esac 
```
### Matching Multiple Patterns 
You can match multiple values using the pipe (|) symbol.
```
case $answer in
  y|Y|yes|YES)
    echo "You answered yes"
    ;;
  n|N|no|NO)
    echo "You answered no"
    ;;
  *)
    echo "Unknown response"
    ;;
esac
```
### Using Wildcards 
```
case $filename in
  *.txt)
    echo "Text file"
    ;;
  *.jpg|*.png)
    echo "Image file"
    ;;
  *)
    echo "Unknown file type"
    ;;
esac
```
### Best Practices
- Always include a default case
- End each case block with ;;
- Quote variables when handling user input
- Use case statements when comparing one variable to many values
- Keep patterns simple and readable

### When to Use Case Statements
Use case statements when:
- Handling menus or user selections
- Processing command-line arguments
- Matching file types or extensions
- Replacing long if / elif chains

## Script10.sh - case statement 
```
case EXPRESSION in
  Pattern_Case_1)
   STATEMENTS
   ;;
 Pattern_Case_1)
   STATEMENTS
   ;;
 Pattern_Case_N)
   STATEMENTS
   ;;
 *)
   STATEMENTS
   ;;
esac 
```
```
#!/bin/bash
echo "What would you like to do?"
echo "Pick One: code, sleep or exercise"
read action
case $action in
    "code")
        echo "Write some code"
    ;;
    "sleep")
        echo "Take some rest"
    ;;
    "exercise")
        echo "Time for gym"
    ;;
    *)
        echo "Do nothing"
    ;;
esac 
```
### Leveraging Exit codes
```
#!/bin/bash
echo "What would you like to do?"
echo "Pick One: code, sleep or exercise"
read action
case $action in
	"code")
        echo "Write some code"
	exit 10
﻿	;;
	"sleep")
	echo "Get some rest"
	exit 99
	;;
	"exercise")
        echo "Time for gym"
	exit 74
	;;
	*)
        echo "Do nothing"
    ;;
esac 
```
Exit codes in Bash (and in other programming and scripting environments) are numeric codes returned by commands, scripts, or applications to indicate their execution status to the shell or calling process. These codes serve as a form of communication about what happened during the execution process, allowing for conditional behavior in scripts or command-line operations based on previous outcomes.
### Conventions for Exit Codes
- 0: Success. An exit code of 0 typically means that the command, script, or application executed successfully without any errors.
- 1 - 255: Failure/Error. Non-zero exit codes indicate some form of failure or error. While an exit code of 1 is generally used to indicate general errors, specific non-zero values can be used by some programs to indicate specific types of errors or failures.
### How to Use Exit Codes
In Bash scripting, you can access the exit code of the last executed command through the special variable $?. This is particularly useful for conditional execution based on the success or failure of a command.
### Example Usage 
```
#!/bin/bash
 
 
# Attempt to copy a file
cp /tmp/nonexistentfile /home/user/
# Capture the exit code of the cp command
exit_code=$?
 
 
# Check the exit code
if [ $exit_code -eq 0 ]; then
  echo "The file was copied successfully."
else
  echo "The file could not be copied. Exit code: $exit_code"
fi
```
```
#!/bin/bash
# Check if a file exists
file="/path/to/your/file"
if [ -f "$file" ]; then
  echo "File exists."
  exit 0
else
  echo "File does not exist."
  exit 1
fi 
```

## Operators 
Bash scripting supports various operators for performing arithmetic, string comparison, file testing, and logical operations. Understanding these operators is essential for effective script writing and decision-making processes within your scripts. Here is a breakdown of the different categories of operators in Bash: 

### Arithmetic Operators
Used for performing basic arithmetic operations on numbers.
- + (Addition)
- - (Subtraction)
- * (Multiplication)
- / (Division)
- % (Modulus)
- ** (Exponentiation)
- += (Increment and assign)
- -= (Decrement and assign)
- *= (Multiply and assign)
- /= (Divide and assign)
- %= (Modulus and assign)

### String Operators
Used for comparing and manipulating strings.
- = (String equality)
- != (String inequality)
- < (Less than, in ASCII alphabetical order)
- > (Greater than, in ASCII alphabetical order)
- -z (String is null, that is, has zero length)
- -n (String is not null)

### File Test Operators
Used to test properties of files and directories.
- -e (File exists)
- -f (File exists and is a regular file)
- -d (File exists and is a directory)
- -r (File exists and read permission is granted)
- -w (File exists and write permission is granted)
- -x (File exists and execute permission is granted)
- -s (File exists and is not empty)
- -L (File exists and is a symbolic link)

### Logical Operators
Used for combining conditional expressions.
- && (Logical AND)
- || (Logical OR)
- ! (Logical NOT)

### Relational Operators
Used within arithmetic expressions to compare values.
- -eq (Equal to)
- -ne (Not equal to)
- -gt (Greater than)
- -ge (Greater than or equal to)
- -lt (Less than)
- -le (Less than or equal to)

### Conditional Expression Operators
Used within [[ ]] for advanced string comparison and pattern matching.
- == (String equality, with pattern matching)
- != (String inequality, with pattern matching)
- =~ (Regular expression match)

### Miscellaneous Operators
- (( )) for arithmetic expansion, allowing for using arithmetic operators without needing to prefix them with $ for variable referencing.
- [[ ]] for conditional expressions, providing advanced string testing and pattern-matching capabilities.
Understanding and using these operators correctly is key to writing efficient and effective Bash scripts, enabling you to perform complex data manipulation, arithmetic calculations, and logic-based decision-making.

## Script11.sh - Working with Arithmetic Operators 
```
x=10
y=20
echo "x=10, y=5"
echo "Addition of x and y"
echo $(( $x + $y ))
echo "Subtraction of x and y"
echo $(( $x - $y ))
echo "Multiplication of x and y"
echo $(( $x * $y ))
echo "Division of x by y"
echo $(( $x / $y ))
echo "Exponentiation of x,y"
echo $(( $x ** $y ))
echo "Modular Division of x,y"
echo $(( $x % $y ))
echo "Incrementing x by 10, then x= "
(( x += 10 ))
echo $x
echo "Decrementing x by 15, then x= "
(( x -= 15 ))
echo $x
echo "Multiply of x by 2, then x="
(( x *= 2 ))
echo $x
echo "Dividing x by 5, x= "
(( x /= 5 ))
echo $x
echo "Remainder of Dividing x by 5, x="
(( x %= 5 ))
echo $x
```

## Script12.sh - String Operator 
```
#!/bin/bash
 
 
# Ask for the user's name
echo "What is your name?"
read name
 
 
# Check if the name string is empty
if [ -z "$name" ]; then
  echo "You didn't enter your name."
else
  echo "Hello, $name!"
fi
 
 
# Ask for a greeting message
echo "Please enter a greeting message:"
read greeting
 
 
# Check if the greeting message is not empty
if [ -n "$greeting" ]; then
  echo "Your greeting message is: $greeting"
else
  echo "You didn't enter a greeting message."
fi
 
 
# Predefined greeting for comparison
expected_greeting="Hello"
 
 
# Compare the entered greeting with the expected greeting
if [ "$greeting" = "$expected_greeting" ]; then
  echo "Your greeting matches the expected greeting."
else
  echo "Your greeting does not match the expected greeting."
fi

```
In this script:
- The -z string operator checks if the name string has a zero length (i.e., is empty).
- The -n string operator checks if the greeting string has a nonzero length (i.e., is not empty).
- The = operator within the [ ] test command checks if the two strings are equal.
- The script uses read to get user input and echo to display messages or results based on the conditions evaluated by the string operators.

## Script13.sh - File Test Operators 
```
#!/bin/bash
 
 
# Specify the file or directory to check
file="/path/to/your/file"
directory="/path/to/your/directory"
 
 
# Check if the file exists
if [ -e "$file" ]; then
    echo "The file exists."
else
    echo "The file does not exist."
fi
 
 
# Check if the file is a regular file
if [ -f "$file" ]; then
    echo "This is a regular file."
else
    echo "This is not a regular file."
fi
 
 
# Check if the directory exists and is indeed a directory
if [ -d "$directory" ]; then
    echo "This is a directory."
else
    echo "This is not a directory."
fi
 
 
# Check if the file has read permission
if [ -r "$file" ]; then
    echo "The file has read permission."
else
    echo "The file does not have read permission."
fi
 
 
# Check if the file has write permission
if [ -w "$file" ]; then
    echo "The file has write permission."
else
    echo "The file does not have write permission."
fi
 
 
# Check if the file has execute permission
if [ -x "$file" ]; then
    echo "The file has execute permission."
else
    echo "The file does not have execute permission."
fi
```
In this script:
- The -e operator checks if the specified file exists.
- The -f operator checks if the specified path points to a regular file (not a directory, symbolic link, etc.).
- The -d operator checks if the specified path is a directory.
- The -r, -w, and -x operators check if the file has read, write, and execute permissions, respectively.
Before running this script, replace "/path/to/your/file" and "/path/to/your/directory" with the actual paths you want to check.

## Script14.sh - Logical Operators 
```
#!/bin/bash
 
# Variables
file="/path/to/your/file"
min_size=10000 # Minimum file size in bytes
 
 
# Check if file exists and has a size greater than min_size
if [ -f "$file" ] && [ $(stat -c %s "$file") -gt $min_size ]; then
  echo "The file exists and is larger than $min_size bytes."
else
  echo "The file does not exist or is smaller than $min_size bytes."
fi
 
 
# Check if file does not exist or is not writable
if [ ! -f "$file" ] || [ ! -w "$file" ]; then
  echo "The file does not exist or is not writable."
else
  echo "The file exists and is writable."
fi
 
 
# Inverting the logic using !
user_input="no"
if [ ! "$user_input" = "yes" ]; then
  echo "You did not say yes."
else
  echo "You said yes."
fi 
```
In this script:
- The first if statement uses && to check two conditions: if the file exists (-f "$file") and if its size is greater than a specified minimum size. The command inside the condition executes only if both conditions are true.
- The second if statement uses || to check if either of two conditions is true: if the file does not exist (! -f "$file") or if the file is not writable (! -w "$file"). The command executes if either condition is true.
- The third example demonstrates the use of ! to invert the logic of the condition. It checks if the user input is not equal to "yes". If the condition is true (meaning anything other than "yes"), it executes the first echo statement.
This script showcases how logical operators can be used to create more complex conditional logic in your Bash scripts, enabling you to execute commands based on multiple conditions or the negation of a condition.

## Functions 
Functions in Bash allow you to group commands into a reusable block of code. They help make scripts more organized, easier to read, and simpler to maintain. By using functions, you can avoid repeating the same code multiple times and improve the overall structure of your scripts. 
```
# basic syntax
function_name() {
  commands
}

# example 
my_function() {
  echo "Hello, World!"
}

# calling a function 
my_function

```

## Script15.sh - functions 
```
#!/bin/bash
# Define a function to display a greeting message
function greet {
    echo "Hello, $1! Welcome to the bash scripting world."
}
 
# Main script starts here
echo "Please enter your name:"
read name
 
# Call the greet function with the user's input as an argument
greet "$name"
``` 

## Arrays 
Arrays in Bash allow you to store multiple values in a single variable. Instead of managing many separate variables, arrays make it easier to organize, access, and process related data. Arrays are especially useful when working with lists, command output, files, or repeated operations in scripts. \
In Bash, array indexing starts at zero, meaning the first element is at index 0.
```
# basic syntax 
array_name=(value1 value2 value3)

# example 
my_array=("value1" "value2" "value3")

# Access an Element
echo ${my_array[0]}

# Displaying All Elements 
echo ${my_array[@]} 

# Getting the Array length
echo ${#my_array[@]} 

# Looping Through an Array 
for item in "${my_array[@]}"; do
  echo $item
done

# Adding Elements to an Array
my_array[3]="value4"

# Update an Element 
my_array[1]="new_value" 

# Remove an Element 
unset my_array[2] 
```

## Script16.sh - arrays 
```
#!/bin/bash
 
 
# Define an array
fruits=("Apple" "Banana" "Cherry" "Date" "Elderberry")
 
 
# Display the entire array
echo "All fruits in the array: ${fruits[@]}"
 
 
# Display the length of the array
echo "The number of fruits in the array: ${#fruits[@]}"
 
 
# Display each element using a loop
echo "List of fruits:"
for fruit in "${fruits[@]}"; do
  echo "- $fruit"
done
 
 
# Access an element by index
echo "The first fruit in the array: ${fruits[0]}"
echo "The last fruit in the array: ${fruits[-1]}
```

## Using zip, unzip, and tar 
Linux provides several tools for archiving and compressing files. The most commonly used commands are zip, unzip, and tar. These tools allow users to bundle multiple files into a single archive, reduce file size, and make files easier to store or transfer. 
### Using the zip Command
The zip command creates compressed .zip archive files. Zip files are widely supported across operating systems, including Windows, macOS, and Linux.

```
# basic syntax
zip archive.zip file1 file2

# Create a Zip Archive 
zip myfiles.zip file1.txt file2.txt 

# Zip an Entire Directory 
zip -r myfolder.zip myfolder/ 
# -r means recursive and includes all files and subdirectories.
```

### Using the unzip Command 
The unzip command extracts files from a .zip archive.
```
# Extract a Zip File  
unzip myfiles.zip
# Extracts all files into the current directory.

# Extract to a Specific Directory 
unzip myfiles.zip -d extracted_files/

# List Contents Without Extracting 
unzip -l myfiles.zip 

```
### Using the tar Command 
The tar command (short for tape archive) is used to bundle multiple files into a single archive. By itself, tar does not compress files, but it is commonly combined with compression tools such as gzip or bzip2. 
```
# Create a Tar Archive
tar -cvf archive.tar file1 file2
# -c create archive
# -v verbose output
# -f specify filename

# Extract a Tar Archive 
tar -xvf archive.tar
# -x extract files

# Create a Compressed Tar Archive (gzip)
tar -czvf archive.tar.gz myfolder/
# -z enables gzip compression

# Extract a Compressed Tar Archive
tar -xzvf archive.tar.gz


```
### Common tar Options
| Option | Description           |
| ------ | --------------------- |
| -c     | Create archive        |
| -x     | Extract archive       |
| -v     | Verbose output        |
| -f     | Specify filename      |
| -z     | Use gzip compression  |
| -j     | Use bzip2 compression |

### When to Use Each Tool
| Tool  | Best Used For                          |
| ----- | -------------------------------------- |
| zip   | Cross-platform file sharing            |
| unzip | Extracting zip archives                |
| tar   | Archiving large directories or backups |

## Script17.sh - Using tar 
```
#!/bin/bash
# This bash script is used to backup a user's home directory to /tmp/.
user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output 
```
The Linux ‘tar’ stands for tape archive and is used to create an archive and extract the archive files. tar command in Linux is one of the essential commands that provides archiving functionality in Linux. We can use the Linux tar command to create compressed or uncompressed Archive files and maintain and modify them. \ 
In this script, we are defining the locations to back up.\ 
Destination for the backup.\ 
Running the backup and sending any stray output that would show up on the screen into null.\ 
We then list the directory of the destination folder.\ 
z options is for zipping in with gnu zip, hence the gz ending.\ 

If you want to add complexity
```
#!/bin/bash
# This bash script is used to backup a user's home directory to /tmp/.
user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
# The function total_files reports a total number of files for a given directory. 
function total_files {
        find $1 -type f | wc -l
}
# The function total_directories reports a total number of directories
# for a given directory. 
function total_directories {
        find $1 -type d | wc -l
}
tar -czf $output $input 2> /dev/null
echo -n "Files to be included:"
total_files $input
echo -n "Directories to be included:"
total_directories $input
echo "Backup of $input completed!"
echo "Details about the output backup file:"
ls -l $output
```

## Script18.sh - Calling a Script from a Script 

foo.sh: 
```
#!/bin/bash
echo "Hello World"
```

bar.sh: 
```
#!/bin/bash
echo "Testing calling another script"
sh foo.sh
echo
echo "second test"
./foo.sh
echo
echo "third test"
sh ./foo.sh
```
Run bar.sh to see outcomes.

## DNS 
DNS, which stands for Domain Name System. Imagine you're trying to find a specific house in a big city. Each house has a unique address, right? Well, on the internet, every website or server also has a unique address. Instead of numbers like a house address, these addresses are called IP addresses, and they look something like 192.0.2.1. \
Now, imagine if you had to remember all these numbers to visit your favorite websites. It would be like trying to remember the IP address of every house in a city! That's where DNS comes in. DNS acts like a giant phone book for the internet. Instead of typing in the IP address of a website, like 192.0.2.1, you just type in the domain name, like "example.com". \
When you type in a domain name, your computer sends a request to a DNS server, asking, "Hey, what's the IP address for this domain?" The DNS server looks it up in its giant phone book, finds the IP address, and then tells your computer, "Oh, that website is located at 192.0.2.1." Your computer then uses that IP address to connect to the website's server and load the webpage you requested. \
So, in simple terms, DNS helps us navigate the internet by translating easy-to-remember domain names into the numerical IP addresses that computers use to communicate with each other. It's like the internet's address system, making it much easier for us to find and access the websites we want to visit. \

## PORTS 
The top 1000 ports and their associated services on a UNIX system can be pretty extensive, as they cover a wide range of applications and protocols used in networking and communication. Instead of listing all 1000, which would be impractical here, I will highlight some of the most well-known and frequently used ports and their services. For a comprehensive list, you might want to refer to the /etc/services file on a UNIX system or consult the IANA (Internet Assigned Numbers Authority) official registry.

### Well-Known Ports (0-1023)
- Port 20/21: FTP (File Transfer Protocol) for data and control.
- Port 22: SSH (Secure Shell) for secure logins, file transfers (scp, sftp), and port forwarding.
- Port 23: Telnet for unencrypted text communications.
- Port 25: SMTP (Simple Mail Transfer Protocol) for email sending.
- Port 53: DNS (Domain Name System) for domain name resolution.
- Port 80: HTTP (Hypertext Transfer Protocol) for unsecured web traffic.
- Port 110: POP3 (Post Office Protocol version 3) for email retrieval.
- - Port 143: IMAP (Internet Message Access Protocol) for managing email on a server.
- Port 443: HTTPS (HTTP Secure) for secure web traffic.
- Port 993: IMAPS (IMAP Secure) is used to manage email on a server securely.
- Port 995: POP3S (POP3 Secure) for secure email retrieval.

### Registered Ports (1024-49151)
IANA does not assign these ports, and are used for user or application purposes. Some well-known applications and services might use these ports by convention.

### Dynamic/Private Ports (49152-65535)
These are typically used for client-side communication and can be chosen randomly by the operating system for temporary communication endpoints. \
For a complete list of the top 1000 ports and their services, it is best to consult the IANA registry or the /etc/services file on a UNIX system. These sources provide a detailed and authoritative reference for all registered port numbers and their commonly associated services. If you need information on a specific port not listed here or detailed information on all 1000, accessing these resources directly or using tools like Nmap, which provides detailed port scanning and identification capabilities, would be the best approach.

### List of TCP and UDP port numbers
https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers

### TCP versus UDP
TCP (Transmission Control Protocol) and UDP (User Datagram Protocol) are two of the core protocols of the Internet Protocol Suite, often referred to as TCP/IP. Both play crucial roles in how data is communicated across the internet but do so in fundamentally different ways. Understanding the differences between TCP and UDP is essential for grasping how online communication works and for making informed decisions about which protocol to use for various applications.

### TCP (Transmission Control Protocol)
- Connection-Oriented: TCP establishes a connection between the sender and receiver before data can be sent. This involves a handshake process to ensure both parties are ready to communicate, enhancing reliability.
- Reliable: It guarantees the delivery of data packets in the same order they were sent. If a packet is lost, TCP will retransmit it.
- Ordered: It ensures that data is read in the same order it was written and sent. This is crucial for applications where data order affects meaning.
- Error-Checked: Every packet of data sent is acknowledged by the receiver. If an acknowledgement is not received within a certain timeframe, the data is retransmitted.
- Congestion Control: TCP has built-in mechanisms to avoid overwhelming the network or the recipient by adjusting the data transmission rate.
- Use Cases: Due to its reliability and order, TCP is used for applications where data integrity and order are critical, such as web browsing (HTTP/HTTPS), email (SMTP, POP3, IMAP), and file transfers (FTP).

### UDP (User Datagram Protocol)
- Connectionless: UDP does not establish a connection before sending data. It sends packets ("datagrams") independently of each other, making it simpler and faster.
- Unreliable: There is no guarantee that packets will arrive at their destination, arrive in the same order they were sent, or even arrive only once.
- No Error Recovery: UDP does not perform error checking for packet delivery. It is up to the application to manage and recover from lost, duplicated, or out-of-order packets.
- Efficient: Without the overhead of establishing connections, error checking, and congestion control, UDP is faster and more efficient for certain types of communication.
- Use Cases: Its speed and efficiency make it suitable for time-sensitive applications where some data loss is acceptable, such as live audio and video streaming, online gaming, and DNS lookups.

### Choosing Between TCP and UDP
The choice between TCP and UDP depends on the requirements of the application:
- TCP is chosen for applications where reliability and order are paramount, and the slight overhead of establishing a connection and ensuring packet delivery is acceptable.
- UDP is chosen for applications where speed is critical and the application can tolerate some loss of data. UDP is often used in scenarios where the application itself can handle error correction or where timeliness is more critical than absolute reliability.

In summary, TCP is about reliability and ordered data delivery, making it ideal for most web applications. In contrast, UDP offers speed and efficiency at the cost of reliability and order, making it suitable for streaming, gaming, and other real-time applications.

## Excluded IP Ranges 
Excluded IP addresses typically refer to IP addresses that are reserved for specific purposes and should not be assigned to devices on a network. These reserved IP addresses include: \
Loopback addresses: These are IP addresses within the range 127.0.0.0 to 127.255.255.255, commonly represented as 127.0.0.1. They are used by a device to refer to itself, allowing testing of network connectivity on the local machine without actually connecting to a network. \
Private IP addresses: These are IP addresses reserved for use within private networks and are not routable over the internet. There are three blocks of private IP addresses defined in the IPv4 standard: \
- 10.0.0.0 to 10.255.255.255 (10.0.0.0/8)
- 172.16.0.0 to 172.31.255.255 (172.16.0.0/12)
- 192.168.0.0 to 192.168.255.255 (192.168.0.0/16)

Broadcast addresses: These are IP addresses that allow communication to all devices on a network segment. In IPv4, the broadcast address typically ends in ".255" within a subnet. For example, if a network has the IP range 192.168.1.0/24, the broadcast address for that network would be 192.168.1.255. \
Network addresses: These are the addresses that identify a network itself rather than individual devices on that network. In IPv4, the network address is typically the first address in a subnet. For example, in the subnet 192.168.1.0/24, the network address is 192.168.1.0. \
These excluded IP addresses are reserved to prevent conflicts and ensure that certain types of communication behave as expected on networks. \


## Network Commands
```
ping [option] [hostname] or [IP address]
 
 
ping 0 - quick way to ping local host
 
ping localhost
 
ping 127.0.0.1 - this is pinging the loopback address
 
 
ping defaults to IPv4 but you can force it with
 
ping -4
or switch to IPv6
ping -6
 
IPv4 is composed of 32-bit address length and is the fourth version of the Internet Protocol (IP). IPv6 is composed of 128-bit address length and is the latest updated version of the Internet Protocol (IP)

```
```
# You can set the interval between pings. The default is one second you can lower or increase it.

ping -i 0.5 google.com

# You can set the size of the packet that is communicated. Default is 56 bytes

ping -s 1000 google.com

# Ping flood -f option requires root to execute. Otherwise, apply sudo to your ping command to flood a host. This command sends a large number of packets as soon as possible.

sudo ping -f www.google.com

# Ping defaults to pinging non-stop until acted on. To limit this like we did above we use -c with a number. In the example this pings three times.

ping -c3 dns.google.com

# Or you can limit how long it does it in seconds

ping -w 25 google.com

# And if you want to hear the ping

ping -a dns.google.com

# You can extend further by adding in ifdown, ifup

#First to see the network ports on a computer:

ip a show

#This will provide a list of the ports

#To confirm a particular port

ip a show eth0

#To add ifdown and ifup

sudo apt update

sudo apt install ifupdown

ifup -a

# Bring up all the interfaces defined with auto in /etc/network/interfaces

ifup eth0

# Bring up interface eth0

ifup eth0=home

# Bring up interface eth0 as logical interface home

ifdown -a

# Bring down all interfaces that are currently up.

ifquery -l

# Print names of all interfaces specified with the auto keyword.

ifquery -l --allow=hotplug

# Print names of all interfaces specified with the allow-hotplug keyword.

ifquery eth0

# Display the interface options as specified in the ifupdown configuration. Each key-value pair is printed out on individual line using ": " as separator.
```
Most people still ususally use IPv4, 


## Script19.sh - Ping 
```
#!/bin/bash
 
# Prompting the user to enter a hostname or IP address to ping
read -p "Enter the hostname or IP address to ping: " target_host
 
 
# Pinging the specified host
ping -c 4 "$target_host"
 
 
# Checking the exit status of the ping command
if [ $? -eq 0 ]; then
    echo "Ping successful: $target_host is reachable."
else
    echo "Ping failed: $target_host is unreachable."
fi 
```
Here's a breakdown of what the script does:
- It prompts the user to enter a hostname or IP address to ping using the read command.
- It then pings the specified host using the ping command with the -c option, which limits the number of ping requests to 4.
- After the ping command finishes, it checks the exit status ($?) to determine whether the ping was successful or not.
- If the exit status is 0, it prints a message indicating that the ping was successful, and the specified host is reachable. Otherwise, it prints a message indicating that the ping failed, and the specified host is unreachable.

Save this script to a file (e.g., script18.sh), make it executable (chmod +x script18.sh), and then run it (./script18.sh). It will prompt you to enter a hostname or IP address, ping that target, and then provide feedback on whether the ping was successful or not.

## script20.sh ifconfig versus ip 
ifconfig stands for "interface configuration" and is a command-line utility used in Unix-like operating systems, including Linux and macOS. It allows users to configure and display information about network interfaces on a system. \
When you run ifconfig without any arguments, it displays details about all active network interfaces on your system, including their IP addresses, MAC addresses, network masks, and other relevant information. \
Here's a brief overview of some of the common uses of ifconfig:
1. Displaying Interface Information: Running ifconfig with no arguments shows information about all active network interfaces.
2. Configuring Interfaces: ifconfig can be used to configure network interfaces, including setting IP addresses, netmasks, and enabling or disabling interfaces.
3. Activating and Deactivating Interfaces: You can use ifconfig to bring an interface up (activate) or down (deactivate) using the up or down parameters respectively.
4. Setting MAC Addresses: ifconfig can be used to set or change the MAC address of a network interface.

However, it's worth noting that ifconfig has largely been deprecated in favor of ip command in newer Linux distributions. The ip command provides more advanced functionality for network configuration and is recommended for most modern networking tasks. \
The ip command is a powerful utility in Unix-like operating systems, including Linux, used for configuring and displaying network interfaces and routing tables. It is a replacement for older commands like ifconfig, route, and arp. \
Here are some common uses of the ip command:

1. Displaying Interface Information: To display information about all network interfaces on your system, you can use ip addr show or ip a.
2. Bringing an Interface Up or Down: To activate (bring up) or deactivate (bring down) a network interface, you can use ip link set [interface] up or ip link set [interface] down, respectively.
3. Assigning IP Addresses: To assign an IP address to a network interface, you can use ip addr add [IP_address]/[subnet_mask] dev [interface]. For example, ip addr add 192.168.1.2/24 dev eth0.
4. Removing IP Addresses: To remove an IP address from a network interface, you can use ip addr del [IP_address]/[subnet_mask] dev [interface].
5. Displaying Routing Table: To display the routing table, you can use ip route show or simply ip r.
6. Adding Routes: To add a route to the routing table, you can use ip route add [network_address]/[subnet_mask] via [gateway_address] dev [interface].
7. Deleting Routes: To delete a route from the routing table, you can use ip route del [network_address]/[subnet_mask].
These are just a few examples of what you can do with the ip command. It provides extensive functionality for configuring and managing network interfaces and routing in Linux systems. You can find more details and options by checking the manual page with man ip or consulting online resources.

```
#!/bin/bash
 
# Displaying information about all network interfaces
echo "=== Network Interfaces ==="
ip addr show
 
# Bringing up a hypothetical network interface named eth0
echo "=== Bringing up eth0 ==="
ip link set eth0 up
sleep 1  # Wait for 1 second for the interface to come up
 
# Assigning an IP address to eth0
echo "=== Assigning IP address to eth0 ==="
ip addr add 192.168.1.2/24 dev eth0
 
# Displaying the routing table
echo "=== Routing Table ==="
ip route show
 
# Adding a hypothetical route to a network via a gateway
echo "=== Adding Route ==="
ip route add 10.0.0.0/24 via 192.168.1.1 dev eth0
 
# Displaying the updated routing table
echo "=== Updated Routing Table ==="
ip route show 
```
This script performs the following actions:
- Displays information about all network interfaces using ip addr show.
- Brings up a hypothetical network interface named eth0 using ip link set eth0 up.
- Assigns the IP address 192.168.1.2 with subnet mask 24 to eth0 using ip addr add.
- Displays the routing table using ip route show.
- Adds a hypothetical route to the 10.0.0.0/24 network via gateway 192.168.1.1 using ip route add.
- Displays the updated routing table to show the added route.

Note: This script assumes the existence of a network interface named eth0, which may not exist on all systems. Please adjust the interface name according to your system's configuration. Additionally, running some of these commands may require superuser privileges.

## script21.sh - traceroute and traceroute6 
traceroute and traceroute6 are network diagnostic tools commonly found on Unix-like operating systems. They are used to trace the route that packets take from your computer to a destination host on a network. The primary difference between them is that traceroute6 is specifically designed to work with IPv6 addresses. \

Here's how they work:
1. traceroute: When you run traceroute followed by a destination hostname or IP address, the tool sends a series of UDP or ICMP packets to the destination with increasing Time-to-Live (TTL) values. Each router along the path to the destination decrements the TTL value of the packet. When the TTL reaches zero, the router sends an ICMP Time Exceeded message back to the sender, indicating that the packet was discarded. traceroute records the IP address of the router that sent the Time Exceeded message. By repeating this process with increasing TTL values, traceroute can map out the path packets take to reach the destination.
2. traceroute6: This works similarly to traceroute, but it's specifically designed for IPv6 addresses. It sends IPv6 packets with increasing hop limits and listens for ICMPv6 Time Exceeded messages to determine the routers along the path to the destination. It's essentially the IPv6 counterpart of traceroute.

Both traceroute and traceroute6 provide valuable information for network troubleshooting and performance analysis. They can help identify network congestion, routing issues, and latency problems by showing the sequence of routers (or hops) that packets traverse to reach their destination.
```
sudo apt install traceroute 
```
```
#!/bin/bash
 
 
# Prompting the user to enter a destination hostname or IP address
read -p "Enter the destination hostname or IP address: " destination
 
 
# Performing traceroute to the destination
echo "=== Traceroute to $destination ==="
traceroute "$destination"
```
You can save this script to a file (e.g., script20.sh), make it executable using chmod +x script20.sh, and then run it (./script20.sh). It will prompt you to enter a destination hostname or IP address and then perform a traceroute to that destination. \
for IPv6:
```
#!/bin/bash
 
# Prompting the user to enter a destination hostname or IPv6 address
read -p "Enter the destination hostname or IPv6 address: " destination
 
# Performing traceroute6 to the destination
echo "=== Traceroute6 to $destination ==="
traceroute6 "$destination"
```
## Script22.sh - netstat and ss 
In Unix-like operating systems, netstat is a command-line network utility used to display network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. It stands for "network statistics." \
The netstat command without any options will typically display a list of open sockets (both listening and established connections), along with the protocol, local and remote addresses, and state of each connection. \

Here are some common uses of the netstat command:

1. Displaying Network Connections: netstat -a or netstat --all will display all active connections (both listening and non-listening) on the system.
2. Displaying Listening Ports: netstat -l or netstat --listening will show only listening sockets.
3. Displaying Routing Table: netstat -r or netstat --route will display the routing table.
4. Displaying Interface Statistics: netstat -i or netstat --interfaces will show statistics for each network interface.
5. Displaying Masqueraded Connections: netstat -M or netstat --masquerade will display masqueraded connections.
6. Displaying Multicast Group Memberships: netstat -g or netstat --groups will display multicast group memberships.
7. Displaying Kernel Interface Table Information: netstat -K or netstat --interface-info will display the kernel interface table.

These are just a few examples of how netstat can be used to gather information about the network configuration and connections on a Unix-like system. It's a versatile tool for network troubleshooting and monitoring.

```
#!/bin/bash
 
# Displaying all active network connections
echo "=== Active Network Connections ==="
netstat -a
 
# Displaying listening ports
echo "=== Listening Ports ==="
netstat -l
 
# Displaying routing table
echo "=== Routing Table ==="
netstat -r
 
# Displaying interface statistics
echo "=== Interface Statistics ==="
netstat -i
```
Save this script to a file (Script21.sh), make it executable, and then run it. It will execute netstat commands to display various network statistics, including active network connections, listening ports, routing table, and interface statistics. \
Feel free to modify the script to include additional netstat options or customize the output according to your needs. \
In Unix-like operating systems, ss is a command-line utility used for displaying detailed information about network sockets and connections. It stands for "socket statistics" or "socket summary." ss is often considered a replacement for the older netstat command, providing more detailed and comprehensive information in a more efficient manner. \
The ss command can display information about TCP, UDP, Unix domain sockets, raw sockets, and more. It can show various aspects of socket connections, including state, address and port information, timers, and more. \

Here are some common uses of the ss command:

1. Displaying All Sockets: ss -a or ss --all will display all sockets.
2. Displaying Listening Sockets: ss -l or ss --listening will display listening sockets.
3. Displaying Established Connections: ss -e or ss --established will display established connections.
4. Displaying Detailed Information: ss -tulwn or ss --tcp --udp --listening --numeric will display detailed information about TCP and UDP sockets, including listening sockets, with numeric addresses and ports.
5. Filtering by State: You can filter the output based on socket state, such as ss -t state established to display only established TCP connections.
6. Displaying Summary Statistics: ss -s or ss --summary will display summary statistics of socket usage.
7. Displaying Process Information: ss -p or ss --processes will display process information associated with sockets.

ss provides a powerful and flexible interface for inspecting network sockets and connections, making it a valuable tool for network diagnostics, troubleshooting, and monitoring on Unix-like systems.
```
#!/bin/bash
 
# Displaying all sockets
echo "=== All Sockets ==="
ss -a
 
# Displaying listening sockets
echo "=== Listening Sockets ==="
ss -l
 
# Displaying established connections
echo "=== Established Connections ==="
ss -e
 
# Displaying summary statistics
echo "=== Summary Statistics ==="
ss -s 
```
ss is a replacement for netstat, used to display detailed socket statistics, including listening ports, established connections, and more.

## Script22.sh - curl 
curl is a command-line tool used in Unix, Linux, and other Unix-like operating systems for transferring data to or from a server. It supports various protocols, including HTTP, HTTPS, FTP, FTPS, SCP, SFTP, TFTP, LDAP, LDAPS, DICT, FILE, IMAP, SMTP, POP3, and others. The versatility of curl makes it a valuable tool for many tasks, such as downloading files, uploading data, making API requests, and automating interactions with websites or web services. \
One of the key features of curl is its ability to perform requests with a variety of options, allowing users to specify request methods (e.g., GET, POST), headers, user authentication, and much more. This makes it particularly useful for testing and interacting with web APIs. \
curl is widely used by developers, system administrators, and automation scripts due to its powerful capabilities and the fact that it is usually pre-installed or easily available in most Unix-based systems. \
Using the command: \
Get the Weather

``` 
curl wttr.in/Boston 
```
wttr.in is a console-oriented weather forecast service that supports various information representation methods like terminal-oriented ANSI-sequences for console HTTP clients (curl, httpie, or wget), HTML for web browsers, or PNG for graphical viewers \

Services like https://t.ly/ take URLs and make them short, but what if you want to know what they are before you open them. \

Example: https://t.ly/yl2nb \

```
curl --head --location "https://t.ly/yl2nb"
```
```
HTTP/2 302

date: Wed, 13 Mar 2024 17:38:05 GMT

content-type: text/html; charset=UTF-8

location: https://www.massbay.edu/

cache-control: no-cache, private

x-ratelimit-limit: 30

x-ratelimit-remaining: 29

set-cookie: XSRF-TOKEN=eyJpdiI6Ik9VQ1l4MDFpOVhVSy9DclpSRVNqd0E9PSIsInZhbHVlIjoiZ2oxOGNuaEZSSUgrakJFeTNRU2ViaDZSaWJ2QjBkSTd5K0VFWXRKRlhxQ2kxQkpoemxJTlcvK1lOWE5BSUV0cHNWYk1vajlKcUNsVFQ5UHR2RVJNZkszZFA0c1NJRWFRcUsvOFFNVmlCeTU3OXd5M1BQV2U1N3lVNVNadER2YmYiLCJtYWMiOiJiYTNhYTRiODljZGVhYmM2ZTQyNThhNjU1NDI1M2ZjODVmM2I0OTk5NTA0NmFmYTQxMDU2YzA0MTdkYjdlZmRiIiwidGFnIjoiIn0%3D; expires=Wed, 27 Mar 2024 17:38:05 GMT; Max-Age=1209600; path=/; secure; samesite=lax

set-cookie: tly_session=eyJpdiI6IlpZYmlUYXRxS0xFMXVVMTBoZ2krU2c9PSIsInZhbHVlIjoibHVSMEk3anlxVXBzUEZ4bzU2Vk0xZ3lxOTRFYXdlYmExTG11bHZHOHU1Mkpya0pSTEpzZzNhOWNHdTJsUnhTM1J0YTFDOVE0RVk2Lzh1cjF4U0N2THI4bmtKcStLTlpzTlVqUmdWdTRJNndyTXBwTHZ2eVZ3RVdPc2kwaGJuYUYiLCJtYWMiOiIzZTk3Mzk0NjU2NDc2NThjNDA1NTZiNzZhNTcyMGZkNzJiYzdmYWYwZGM4M2QxZjk4MDIxYTYyMDNhNDhjYzU4IiwidGFnIjoiIn0%3D; expires=Wed, 27 Mar 2024 17:38:05 GMT; Max-Age=1209600; path=/; secure; httponly; samesite=lax

x-frame-options: SAMEORIGIN

x-xss-protection: 1; mode=block

x-content-type-options: nosniff

x-whom: tly-4

cf-cache-status: DYNAMIC

report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v4?s=%2F8wfWktQebukJEKLmmuy7kODpl6lGHyqpE6AAsM86M56BthvGdZCnzbRY68053NsGuHVuMKo11Q62t3hzvpnCqvfAJyRyvkEarjCBGm0%2B0YcrRvw7m0%3D"}],"group":"cf-nel","max_age":604800}

nel: {"success_fraction":0,"report_to":"cf-nel","max_age":604800}

strict-transport-security: max-age=15552000; includeSubDomains; preload

server: cloudflare

cf-ray: 863dcbb09a381871-EWR

alt-svc: h3=":443"; ma=86400



HTTP/2 200

cache-control: public, max-age=900

content-language: en

content-type: text/html; charset=utf-8

etag: W/"1710351402-0"

expires: Sun, 19 Nov 1978 05:00:00 GMT

last-modified: Wed, 13 Mar 2024 17:36:42 GMT

link: <https://www.massbay.edu/>; rel="canonical",<https://www.massbay.edu/>; rel="shortlink"

server: nginx

strict-transport-security: max-age=300

x-content-type-options: nosniff

x-drupal-cache: HIT

x-frame-options: SAMEORIGIN

x-generator: Drupal 7 (https://www.drupal.org)

x-pantheon-styx-hostname: styx-fe2-b-5994d8cbcb-fmmcf

x-styx-req-id: 73026f27-e160-11ee-a873-9ab9d57cfb22

date: Wed, 13 Mar 2024 17:38:05 GMT

x-served-by: cache-chi-kigq8000029-CHI, cache-bos4665-BOS

x-cache: MISS, MISS

x-cache-hits: 0, 0

x-timer: S1710351486.752049,VS0,VE137

vary: Accept-Encoding, Cookie, Cookie, Cookie

age: 0

accept-ranges: bytes

via: 1.1 varnish, 1.1 varnish

content-length: 203830

```
```
curl --head --location "https://t.ly/yl2nb" | grep location 
```
Check the Status of a Website to see if it up
```
curl -Is https://www.massbay.edu
```
```
HTTP/2 200

cache-control: public, max-age=900

content-language: en

content-type: text/html; charset=utf-8

etag: W/"1710351536-0"

expires: Sun, 19 Nov 1978 05:00:00 GMT

last-modified: Wed, 13 Mar 2024 17:38:56 GMT

link: <https://www.massbay.edu/>; rel="canonical",<https://www.massbay.edu/>; rel="shortlink"

server: nginx

strict-transport-security: max-age=300

x-content-type-options: nosniff

x-drupal-cache: HIT

x-frame-options: SAMEORIGIN

x-generator: Drupal 7 (https://www.drupal.org)

x-pantheon-styx-hostname: styx-fe2-a-6467c48564-ss6b5

x-styx-req-id: b8e4621a-e160-11ee-b044-26ae5baec4c8

date: Wed, 13 Mar 2024 17:42:42 GMT

x-served-by: cache-chi-kigq8000029-CHI, cache-bos4633-BOS

x-cache: MISS, HIT

x-cache-hits: 0, 1

x-timer: S1710351762.062847,VS0,VE3

vary: Accept-Encoding, Cookie, Cookie, Cookie

age: 159

accept-ranges: bytes

via: 1.1 varnish, 1.1 varnish

content-length: 203854
```
What is my public IP address: \
You can use a website - https://www.ipchicken.com/ or https://checkip.amazonaws.com/ \
OR \
```
curl checkip.amazonaws.com
```
Create a QR Code
```
curl qrenco.de/https://www.massbay.edu
```
Check for the latest video on YouTube
```
curl -s https://decapi.me/youtube/latest_video?user=mrbeast
```
Or check twitter
```
curl -s https://decapi.me/twitter/latest?user=networkchuck
```
Look up Word
```
curl dict.org/d:bigly
```
You can access ChatGPT: \

Using curl to access ChatGPT via the OpenAI API involves making an HTTP POST request to the OpenAI API endpoint, including setting the appropriate headers for authentication and content type. This example will show you how to make a basic request to the OpenAI API to send a prompt to ChatGPT and receive a response. Before you start, ensure you have an API key from OpenAI. \

Important: Replace "YOUR_API_KEY_HERE" with your actual OpenAI API key.
```
curl -X POST "https://api.openai.com/v1/completions" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer YOUR_API_KEY_HERE" \
     --data '{
       "model": "text-davinci-003",
       "prompt": "What is the capital of France?",
       "temperature": 0.7,
       "max_tokens": 150,
       "top_p": 1.0,
       "frequency_penalty": 0.0,
       "presence_penalty": 0.0
     }'
```
Here is what each part does:

- -X POST: Specifies that this is a POST request.
- -H "Content-Type: application/json": Sets the Content-Type header to application/json, indicating that the data sent is in JSON format.
- -H "Authorization: Bearer YOUR_API_KEY_HERE": Adds the Authorization header with your Bearer token (API key) for authentication.
    - --data '{...}': Includes the data to be sent in the request. This data is a JSON object that specifies:model: The version of the model you want to use (e.g., "text-davinci-003"). Check the OpenAI API documentation for the latest models.
    - prompt: The prompt or question you are asking ChatGPT.
    - temperature: Controls randomness in the response. A lower temperature makes the model more deterministic.
    - max_tokens: The maximum length of the generated response.
    - Other parameters like top_p, frequency_penalty, and presence_penalty can further customize the behavior of the model's response.
This command sends a request to the OpenAI API asking, "What is the capital of France?" the API will return a JSON response that includes the model's answer. \
Please note that using the API requires an internet connection and that API requests are rate-limited and billed according to OpenAI's pricing structure. Always secure your API key and be mindful of the cost associated with API usage. \
Bash scripts utilizing curl can range from simple data retrieval tasks to complex interactions with web APIs. Here are a few fun and useful bash curl scripts examples. Remember to replace URLs and data with your own as needed, and ensure you have the necessary permissions to interact with the API or website: \
Weather Information Script: \
Fetch the current weather using the OpenWeatherMap API. Replace YOUR_API_KEY with your actual API key and adjust the city name as needed. \
```
#!/bin/bash
CITY="London"
API_KEY="YOUR_API_KEY"
RESPONSE=$(curl -s "http://api.openweathermap.org/data/2.5/weather?q=$CITY&appid=$API_KEY&units=metric")
echo "Current weather in $CITY: $(echo $RESPONSE | jq '.weather[0].description'), temperature: $(echo $RESPONSE | jq '.main.temp')°C"
```
Website Status Check: \
Simple script to check if a website is up and responding. Replace example.com with the website you want to check. \
```
#!/bin/bash
URL="http://example.com"
STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)
if [ $STATUS -eq 200 ]; then
    echo "Website $URL is up."
else
    echo "Website $URL is down or unreachable."
fi
```
Download and Extract a Tarball: \
Download a tar.gz file and extract it to a specified directory. Replace the URL with the one you need. \
```
#!/bin/bash
URL="http://example.com/example.tar.gz"
DESTINATION="/path/to/extract/"
curl -s $URL | tar xz -C $DESTINATION
```
 
Post Data to a Web Form: \
Use curl to POST data to a web form. This can be useful for testing web forms or automating data entry. \
```
#!/bin/bash
URL="http://example.com/form"
DATA="name=John+Doe&email=john@example.com"
curl -X POST -d $DATA $URL
```
 
Interacting with GitHub API: \
List your repositories on GitHub. Replace YOUR_GITHUB_TOKEN with your personal GitHub token. \
```
#!/bin/bash
TOKEN="YOUR_GITHUB_TOKEN"
curl -s -H "Authorization: token $TOKEN" https://api.github.com/user/repos | jq '.[].name'
```
Remember to make your script executable by running chmod +x before executing it. Also, these scripts might require additional tools like jq for JSON parsing. You can install jq using your system's package manager if it's not already installed.

## Script23.sh - cron 
Cron is a time-based job scheduler in Unix-like operating systems, including Linux and macOS. It enables users to automate the execution of scripts, commands, or software at specified times, dates, or intervals. Cron is commonly used for system maintenance or administration tasks, such as backups, system updates, or checking and managing processes. \
A cron job is a scheduled task itself, defined by a cron expression that specifies when the job should be run. These expressions consist of five or six fields, depending on the system, representing minute, hour, day of the month, month, day of the week, and optionally, the year. \
Cron jobs are managed through a crontab (cron table) file for each user on the system. Users can edit their own crontab files to add, modify, or remove tasks. The crontab command is used to edit these files, and it provides a list of cron jobs scheduled under the user's account. System-wide cron jobs can also be defined, typically found in directories like /etc/crontab or /etc/cron.*/*. \
Cron is known for its simplicity and effectiveness in scheduling periodic tasks, making it a staple tool for system administrators and power users. \
Here's a simple Bash script that prompts the user for their name and then echoes it back. You can save this script to a file, for example, ask_name.sh. Remember to make the script executable by running chmod +x ask_name.sh before executing it.
```
#!/bin/bash
 
# Prompt the user for their name
echo "Please enter your name:"
 
# Read the name into a variable
read name
 
# Echo the name back to the user
echo "Hello, $name!"
```

When you run this script, it waits for you to enter your name. Once you do, it greets you by name. The read command reads the input from the user and assigns it to the name variable, which is then used in the greeting echoed back. \

To schedule your Bash script to run at specific times using cron, you would follow these steps: \
Open the Crontab File for Editing: Each user on a system can have their own crontab file. To edit your crontab file, use the command crontab -e in your terminal. This opens your crontab file in the default text editor. \
Add a Cron Job: In the crontab file, you add a line that specifies when you want your script to run and the command to be executed. The syntax for a cron job is: \
```
* * * * * /path/to/command arg1 arg2 
```
Each of the first five fields represents a unit of time:
- Minute (0 - 59)
- Hour (0 - 23)
- Day of the month (1 - 31)
- Month (1 - 12)
- Day of the week (0 - 6) (Sunday to Saturday; 7 is also Sunday on some systems)

The sixth part (/path/to/command arg1 arg2) is the command to run, and any arguments the command requires. \

For example, to run your script every day at 8:00 AM, you would add a line like this, assuming your script ask_name.sh is located in your home directory at /home/yourusername/ask_name.sh:

```
0 8 * * * /bin/bash /home/yourusername/ask_name.sh
```

Save and Exit: After adding the line for your cron job, save the file and exit the editor. Cron will automatically install the new crontab and begin to use it. \
Verify Your Cron Job: You can verify that your cron job is scheduled by listing your crontab entries with crontab -l. \

Important Notes:
- Ensure your script is executable (chmod +x /home/yourusername/ask_name.sh).
- The environment for cron jobs is typically more limited than your user environment, so it's a good practice to use absolute paths to commands inside scripts scheduled with cron.
- Depending on your script's actions, you might need to consider where output goes. For a script that expects input (like yours), scheduling it in cron might not work as expected since cron jobs are designed to run without user interaction. If your script primarily performs tasks that don't require user input, or if you modify it to read from a predefined source instead of interactive input, it will be more suited to scheduling with cron.

To see the list of cron jobs scheduled for the current user, you can use the command crontab -l in the terminal. This command displays all the cron jobs listed in the crontab file for the user who runs the command. Each line in the output represents a separate cron job, with its schedule and the command to be executed. \
If you want to see the cron jobs for another user (assuming you have the necessary permissions), you can use crontab -u username -l, where username is the name of the user whose cron jobs you want to view. For example: \
```
crontab -u john -l
```
This requires superuser privileges in most cases, so you might need to prefix the command with sudo:
```
sudo crontab -u john -l
```
For system-wide cron jobs, you can look into directories that hold system-wide cron tasks and configurations. These include:

- /etc/crontab: The system-wide crontab file.
- /etc/cron.d/: A directory that contains system-wide cron jobs. Each file in this directory is treated as a separate set of cron jobs.
- /etc/cron.daily/, /etc/cron.hourly/, /etc/cron.weekly/, and /etc/cron.monthly/: Directories that contain scripts to be run daily, hourly, weekly, or monthly, respectively.
The files and scripts in these directories are managed directly by the system administrator rather than being scheduled via crontab -e. To view these, you would typically use ls and cat or a text editor to list and view the contents of these files and directories. For example, to list all jobs in /etc/cron.d/, you could use:
```
ls /etc/cron.d/
```
And to view a specific system-wide cron job file:
```
cat /etc/cron.d/filename
```
Remember, accessing these system-wide configuration files and directories requires superuser privileges, so you might need to prefix commands with sudo.


## Script24.sh - wget
In Linux, wget is a free utility for non-interactive downloading of files from the web. It supports HTTP, HTTPS, and FTP protocols, as well as retrieval through HTTP proxies. wget is designed to be a robust command-line tool that can handle downloads in various situations, including poor network conditions. It offers features like the ability to resume broken downloads, recursively download files from directories, and limit the bandwidth used for downloads. \

Here are some key features and capabilities of wget:
- Recursive Downloading: wget can traverse web directories to download entire websites or specified parts, making it ideal for mirroring websites or retrieving multiple files from directory listings.
- Non-Interactive Downloads: wget can run in the background, without user intervention. This makes it suitable for use in scripts and cron jobs to automate file retrieval tasks.
- Support for Proxy Servers: It can be configured to use proxy servers, which is useful for users behind corporate firewalls or wanting to anonymize their requests.
- Bandwidth Throttling: Users can limit the amount of bandwidth wget consumes, ensuring that your internet connection remains usable for other tasks while downloading large files.
- Header Modification: It allows for the modification of HTTP headers sent in requests, enabling users to mimic different browsers or referers, which can be useful for troubleshooting or accessing content that requires specific headers.

Here is a simple example of how to use wget to download a file:
```
wget http://example.com/somefile.zip
```
This command will download the file somefile.zip from the specified URL to the current directory. wget will show the progress, download speed, and estimated time to completion during the download process. \
wget is widely used for its versatility and efficiency in handling downloads, especially in scripts, backup solutions, and situations where a GUI-based browser is not available or practical. \
Below is a simple Bash script example that uses wget to download a file from a specified URL. This script checks if a URL was provided as an argument, prompts the user to enter one if not, and then uses wget to download the file to the current directory. \
First, create a file for the script, for example, download.sh, and then paste the following content into it: \
```
#!/bin/bash
 
 
# Check if a URL was passed as an argument
if [ "$#" -ne 1 ]; then
    echo "This script requires a URL as an argument."
    read -p "Please enter the URL to download: " url
else
    url=$1
fi
 
 
# Use wget to download the file
echo "Downloading file from $url"
wget $url
 
 
echo "Download completed."
```
Make sure to give execute permissions to your script by running:
```
chmod +x download.sh
```


You can run this script in two ways: \
Providing a URL directly as an argument:
```
./download.sh http://example.com/somefile.zip
```

Running the script without arguments, which will prompt you to enter a URL:
```
./download.sh
```

This script demonstrates basic usage of wget within a Bash script, including conditional logic and handling user input. Adjustments can be made to incorporate more advanced wget options or to refine the script's behavior. \
Borrowed ideas from - https://askubuntu.com/questions/1262493/how-do-you-download-zip-files-using-wget-and-curl-commands-i-tried-and-both-way

## Script25.sh - tcpdump
tcpdump is a powerful command-line packet analyzer tool used in Unix and Unix-like operating systems. It allows users to capture, filter, and inspect network packets that pass through a network interface. tcpdump can be used to monitor incoming and outgoing network traffic, troubleshoot network issues, analyze network performance, and more. It works on most Unix-based systems, including Linux, macOS, and BSD variants.

Here are some key features of tcpdump:
- Capture Packets: tcpdump captures packets on a network interface, allowing you to see the traffic that is being sent and received by the system.
- Filtering: It provides a flexible filtering system that allows users to specify exactly which packets should be captured. Filters can be based on various criteria, such as IP addresses, port numbers, protocol types, and more.
- Protocol Analysis: tcpdump understands a wide range of network protocols, enabling it to display detailed information about the packets it captures, including headers for protocols like IP, TCP, UDP, and many others.
- Saving Captures: Captured packets can be saved to a file for later analysis. This file can then be opened with packet analysis tools like Wireshark for more detailed inspection.
- Command-Line Interface: As a command-line tool, tcpdump is highly scriptable, allowing it to be used in automated tasks, scripts, and cron jobs for regular monitoring or specific analyses.

A basic tcpdump command might look like this:
```
tcpdump -i eth0
```
This command starts capturing all packets on the eth0 network interface. There are many options available to refine the capture, such as -c to limit the number of packets captured, -w to write the capture to a file, or specifying a filter expression to capture only certain types of traffic. \
Because tcpdump can capture potentially sensitive network traffic, running it typically requires root privileges or equivalent permissions through capabilities or system policy adjustments. \
Below is a simple bash script example that uses tcpdump to capture a specified number of packets on a specified network interface and then saves them to a file. The script takes two arguments: the first is the network interface to capture packets on, and the second is the number of packets to capture. It then constructs a tcpdump command to perform the capture and save the packets to a file named with the current date and time for easy identification. \

```
#!/bin/bash
 
 
# Check if the correct number of arguments was passed
if [ $# -ne 2 ]; then
    echo "Usage: $0 <network-interface> <number-of-packets>"
    exit 1
fi
 
 
# Assign command line arguments to variables
INTERFACE=$1
PACKET_COUNT=$2
 
 
# Construct the output file name
OUTPUT_FILE="capture-$(date +%Y-%m-%d_%H-%M-%S).pcap"
 
 
# Use tcpdump to capture the packets
sudo tcpdump -i $INTERFACE -c $PACKET_COUNT -w $OUTPUT_FILE
 
 
echo "Packet capture complete. Saved to $OUTPUT_FILE"
```

Here's a breakdown of the script:
- The script starts by checking if two arguments were provided. If not, it prints a usage message and exits.
- It then assigns the command line arguments to the INTERFACE and PACKET_COUNT variables.
- A unique output file name is constructed using the date command to append the current date and time to the filename, ensuring each capture file is uniquely named.
- The script uses sudo to run tcpdump with the -i option to specify the interface, -c to limit the capture to the specified number of packets, and -w to write the captured packets to the specified output file.
- Finally, it prints a message indicating that the capture is complete and shows the name of the file where the packets were saved.

To use this script:
- Save the script to a file, for example, capture_packets.sh.
- Make the script executable by running chmod +x capture_packets.sh.
- Run the script with the desired network interface and number of packets to capture, for example: ./capture_packets.sh eth0 100.
This script requires sudo privileges to run tcpdump, as capturing packets from a network interface typically requires root permissions.


## SSH 

uhhhh it had content about arrays 

## SCP 
The scp command, short for Secure Copy, is used to securely transfer files and directories between systems over a network. It uses SSH (Secure Shell) for authentication and encryption, ensuring that data is transferred safely. \
scp is commonly used to copy files between a local system and a remote server, or between two remote systems, making it an essential tool for system administrators, developers, and Linux users. \
```
# basic syntax
scp [options] source destination
# source – The file or directory to copy
# destination – Where the file or directory should be copied

# Copy a File from Local to Remote
scp file.txt user@remote_host:/path/to/destination/

# Copy a File from Remote to Local
scp user@remote_host:/path/to/file.txt . 

# Copy a File Between Two Remote Systems 
scp user1@host1:/path/file.txt user2@host2:/path/ 

# Copying Directories Recursively 
scp -r myfolder user@remote_host:/path/to/destination/
```
### Common scp Options
| Option | Description                              |
| ------ | ---------------------------------------- |
| -r     | Copy directories recursively             |
| -p     | Preserve file timestamps and permissions |
| -C     | Enable compression                       |
| -P     | Specify SSH port (uppercase P)           |
| -v     | Verbose output                           |

```
# Example: Using a Custom SSH Port 
scp -P 2222 file.txt user@remote_host:/path/ 

# Using scp with SSH Keys 
# When SSH keys are configured, scp can be used without entering a password each time. 
scp file.txt user@remote_host:/path/ 
# This improves security and automation in scripts.
```

### Why Use scp?
- Secure file transfers using encryption
- Works on most Unix/Linux systems by default
- Easy integration with scripts and automation
- Supports copying files and directories

### Best Practices
- Verify destination paths before copying
- Use -r cautiously with large directories
- Prefer SSH keys over passwords
- Use rsync for large or incremental transfers

### Summary
The scp command provides a secure and reliable way to transfer files between systems over a network. By leveraging SSH encryption, scp ensures data confidentiality while remaining simple to use. Mastery of scp is essential for secure system administration and remote file management.

## rsync
The rsync command is a powerful tool used to copy and synchronize files and directories between locations. It works for both local and remote transfers and is especially efficient because it only copies changes between the source and destination rather than transferring entire files each time. \
rsync is commonly used for backups, mirroring directories, system migrations, and synchronizing files between servers. 
### Key Features of rsync 
- Transfers only changed portions of files
- Preserves file permissions, ownership, and timestamps
- Works locally or over SSH for secure remote transfers
- Supports compression for faster transfers
- Can resume interrupted transfers
```
# Basic Syntax
rsync [options] source destination

# Copying Files Locally 
rsync file.txt /path/to/destination/ 

# Copying Directories Locally 
rsync -r myfolder /path/to/destination/

# Copying Files to a Remote System 
rsync file.txt user@remote_host:/path/to/destination/ 
# Copies a file from the local system to a remote system using SSH. 

# Copying Files from a Remote System 
rsync user@remote_host:/path/to/file.txt .

# Copying Directories with Common options
rsync -av myfolder user@remote_host:/path/ 
# -a archive mode (preserves permissions, ownership, timestamps)
# -v verbose output

# Using compression
rsync -avz myfolder user@remote_host:/path/
# -z enables compression, which is useful for slower networks

# Synchronizing Directories
rsync -av --delete source/ destination/
# Ensures destination matches source exactly
# Deletes files in the destination that no longer exist in the source
# Warning: Use --delete with caution.

# Dry Run (Preview Changes) 
rsync -av --dry-run source/ destination/
# Shows what would happen without making changes.
# Highly recommended before real sync operations.

```

### Common rsync Options
| Option    | Description                       |
| --------- | --------------------------------- |
| -a        | Archive mode                      |
| -v        | Verbose output                    |
| -z        | Compression                       |
| -r        | Recursive copy                    |
| --delete  | Remove extra files in destination |
| --dry-run | Preview changes                   |
| -e ssh    | Use SSH explicitly                |


### rsync vs scp
| Feature               | rsync    | scp         |
| --------------------- | -------- | ----------- |
| Incremental transfers | Yes      | No          |
| Resume transfers      | Yes      | No          |
| Compression           | Yes      | Optional    |
| Best for backups      | Yes      | No          |
| Simplicity            | Moderate | Very simple |

### Best Practices
- Always test with --dry-run first
- Use trailing slashes (source/) intentionally
- Prefer rsync over scp for large or repeated transfers
- Use SSH keys for automation
### Summary
The rsync command is one of the most efficient and flexible file-copying tools available in Linux. Its ability to synchronize data incrementally makes it ideal for backups, system administration, and secure remote file transfers. Mastering rsync is a critical skill for any Linux user or system administrator.


## Best Practices
1. Input Validation: Always validate input from users or external sources. Ensure that input is within expected bounds and does not contain unexpected characters that could be used for injection attacks. Use tools like grep, awk, or regular expressions to validate input.
2. Sanitize Input: Even after validation, sanitize input to remove any potentially harmful characters. Avoid using eval with user input, as it can execute arbitrary code.
3. Use Quoting: Always quote variables to prevent unintended word splitting and globbing. For example, use "$variable" instead of $variable to ensure that spaces and special characters are preserved.
4. Avoid eval: Minimize the use of eval and similar constructs, as they can lead to code injection vulnerabilities if not used carefully.
5. Avoid rm -rf: Be cautious when using commands like rm -rf, especially with variables or user input, as it can lead to unintended file deletion. Consider using safer alternatives like rm -r --.
6. Privilege Escalation: Minimize privilege escalation within scripts. Avoid running scripts with elevated privileges unless absolutely necessary, and use tools like sudo with caution, ensuring that only necessary commands are executed with elevated privileges.
7. Use set -e: Set the errexit option (set -e) to exit immediately if any command fails. This helps catch errors early and prevents the script from continuing execution with potentially invalid state.
8. Secure Variables: Avoid storing sensitive information like passwords directly in scripts. If you must use sensitive information, consider storing it in environment variables or encrypted files, and ensure that access to these resources is restricted.
9. Use Official Repositories: Whenever possible, use official repositories or trusted sources for downloading scripts and dependencies to minimize the risk of downloading malicious code.
10. Regular Updates: Regularly update your scripts and dependencies to patch security vulnerabilities and ensure that you're using the latest, most secure versions of software.
11. Logging and Monitoring: Implement logging and monitoring within your scripts to track activity and detect any suspicious behavior.
12. Code Reviews: Conduct regular code reviews to identify and address security issues in your scripts. Peer review can help catch vulnerabilities that may be overlooked during development.
13. Run as Non-Privileged User: Whenever feasible, run scripts with the least privileges necessary to perform their tasks. This limits the potential impact of security breaches.
14. Use shellcheck: Utilize tools like shellcheck to statically analyze your scripts for common issues and security vulnerabilities.
15. Secure File Permissions: Ensure that script files have appropriate permissions set to prevent unauthorized access or modification.

ShellCheck is a static analysis tool for shell scripts. It's designed to identify common issues, pitfalls, and vulnerabilities in shell scripts, particularly those written in Bash and other POSIX-compliant shells. ShellCheck analyzes shell scripts and provides feedback on potential problems, suggesting improvements to make the scripts more robust, secure, and efficient.

Key features of ShellCheck include:

1. Syntax Checking: ShellCheck checks shell scripts for syntax errors and common mistakes that can lead to unexpected behavior or vulnerabilities.
2. Best Practices: It provides recommendations based on best practices for shell scripting, helping developers write cleaner, more maintainable code.
3. Security Checks: ShellCheck identifies security vulnerabilities such as command injection, variable quoting issues, and unsafe shell constructs that could be exploited by attackers.
4. Cross-Platform Compatibility: It ensures that scripts are compatible with various shell environments, including Bash, Dash, Zsh, and others.
5. Integration: ShellCheck can be integrated into various development environments, editors, and continuous integration pipelines, making it easy to incorporate shell script analysis into the development workflow.
6. Customizable: It allows users to customize the severity levels of certain checks and disable specific checks if necessary.
7. Open Source: ShellCheck is an open-source project, available under the GNU General Public License (GPL), which means it's freely available for anyone to use, modify, and contribute to.
By using ShellCheck, developers can catch potential issues in their shell scripts early in the development process, improving code quality, reliability, and security. It's a valuable tool for anyone working with shell scripts, from beginners to experienced developers.

```
shellcheck script.sh
```

## What is Open-Source Software? 

Open source software (OSS) is software released with its source code made available for anyone to inspect, modify, and enhance. This open availability encourages a collaborative approach to software development, where developers from around the globe can contribute improvements, fix bugs, or adapt the software to meet new needs. Open-source software distribution is governed by open-source licenses, which stipulate how the software can be freely used, modified, and shared.

### Critical Characteristics of Open Source Software:
- Accessibility of Source Code: The source code of open-source software must be readily available, allowing users and developers to study how the software works and modify it to fit their requirements.
- Freedom to Modify: Users have the right to modify the software's source code, either to improve its functionality, fix errors, or customize it for personal use or within their organization.
- Free Redistribution: Open-source software can be freely redistributed to anyone. This can include the original and modified versions of the software.
- Community Collaboration: The development and improvement of open-source software are often driven by an active community of contributors. This community model promotes continuous innovation and support.
- Variety of Licenses: Open source software is released under various licenses, such as the GNU General Public License (GPL), Apache License, and MIT License, among others. These licenses differ in how the software can be used, modified, and distributed, but they all adhere to the basic principles of open source.
### Advantages of Open Source Software:
- Cost-Effectiveness: Open-source software is usually free, reducing the financial barrier to access and use.
- Flexibility and Customization: Since the source code is accessible, it can be modified to meet specific needs, offering high flexibility and customization.
- Quality and Reliability: With numerous developers contributing to the project, open-source software often benefits from robust development, thorough testing, and quick bug fixes, enhancing its quality and reliability.
- Security: The transparency of open source code allows for continuous inspection by a global community, potentially leading to more secure software as vulnerabilities can be identified and addressed promptly.
- Interoperability: Open source projects often adhere to open standards, promoting interoperability with other software and systems.
### Examples of Open Source Software:
- Linux: An open-source kernel that is the foundation for various Linux distributions.
- Apache HTTP Server: A widely used web server software.
- Mozilla Firefox: A popular web browser known for its speed and privacy features.
- LibreOffice: A comprehensive office suite that serves as an alternative to Microsoft Office.
- Python: A high-level programming language known for its readability and broad applicability in various domains.

Open-source software is crucial in technology, powering everything from individual projects to enterprise solutions. It fosters innovation through collaboration, making technology more accessible and adaptable to a wide range of users and applications.

## NMAP 

Nmap, short for Network Mapper, is an open-source network scanner created by Gordon Lyon (also known by his pseudonym, Fyodor Vaskovich). It was designed to discover hosts and services on a computer network, thereby building a "map" of the network. Using IP packets, Nmap sends specially crafted packets to target hosts and then analyzes the responses to discover host availability and running services, along with their versions, types of devices, operating systems, and firewall configurations.

### Key Features of Nmap:
- Host Discovery: Identifies hosts on a network. For instance, it can determine which hosts are available, their IP addresses, and whether they respond to requests.
- Port Scanning: Determining which ports are open on a target host is crucial for understanding the network's attack surface.
- Version Detection: Attempts to identify the software version of the services running on open ports. This is useful for identifying potential vulnerabilities.
- OS Detection: Uses various techniques to determine networked devices' operating system and hardware characteristics.
- Scriptable Interaction: Comes with a scripting engine (Nmap Scripting Engine, or NSE) that allows developers to write scripts to automate a wide range of networking tasks, from network discovery to vulnerability detection.
- Network Inventory: This can create a detailed inventory of the network's connected devices and services.
- Auditing the Network's Security: Helps identify open ports and services that attackers could potentially exploit.
- Flexible: Supports a wide range of scanning techniques, such as UDP, TCP connect(), TCP SYN (half open), and ICMP (for example, ping scans).
- GUI Version: Besides the command-line interface, Nmap can be used through Zenmap, a graphical user interface designed for interactive scanning.
### Common Use Cases:
- Security Auditing: Nmap is widely used in the security industry to audit the security of networks and detect open ports and vulnerabilities.
- Network Inventory: It is used by network administrators to keep an inventory of devices and services on their networks.
- Monitoring Network Hosts: These are useful for monitoring which devices are up and running at any given time on a network.
- Firewall Testing: Administrators use it to test network firewalls, identifying open ports and the rules allowing or blocking traffic.
- Finding Unauthorized Servers: Helps identify rogue servers or devices on a network.
- Despite its powerful capabilities, users of Nmap should always seek permission before scanning networks they do not own, as unauthorized scanning can be considered illegal or intrusive by network owners.

### Using NMAP:
First, make sure you are current on your system \
```
sudo apt update

sudo apt upgrade
```
Second, make sure it is installed
```
nmap --version
```
If not install it:
```
sudo apt install nmap
```
Then verify it
```
nmap --version
```
Review help and switches:
```
nmap -h
```
Scan an IP address:
```
nmap 192.168.23.38
```
Scan a range:
```
nmap 192.168.23.1-100
```
Scan Multiple IPs or Subnets. You can scan multiple targets by separating them with spaces:
```
nmap 192.168.23.1 10.10.10.1-50
```
Or scan the entire VLAN:
```
nmap -sP 192.168.23.0/24
```
Scan a Domain. To scan a domain instead of an IP address:
```
www.example.com
```
Find Open Ports. To detect open ports on a host and identify the associated services:
```
nmap -p 1-65535 192.168.23.38
```
Scan for Specific Services. To scan for specific services (e.g., HTTP or FTP), specify the port numbers:
```
nmap -p 80,21 192.168.23.38

sudo nmap -sT -p 80,442 192.168.1.0/24
```
Scan Using TCP Connect. TCP connect scan (also known as a full open scan) is the default TCP scan without any special privileges:
```
nmap -sT 192.168.23.38
```
This leverages the 3-way handshake. \
The client sends a SYN packet or synchronization packet. On the port, you want to talk. \
The server responds that it can talk on that port. Send back SYN ACK or synchronization acknowledge packet. \
The client returns an ACK packet (acknowledge), and systems can start talking. \
Since I do not specify a port it will scan for the top 1000 ports by default. \
This is an intrusive scan that could trigger the IDS. \

Stealthy Scan. A SYN scan is less intrusive and stealthier than a TCP connect scan:
```
nmap -sS 192.168.23.38
```
Called a half-open scan or syn scan \
Only the first two handshakes \

Scan for the operating system:
```
nmap -O 192.168.23.38
```
Aggressive Scan. An aggressive scan provides more detailed information about the host, including the OS, service versions, etc. Use with caution:
```
nmap -A 192.168.1.1
```
Choosing Between -A and -sT
Use nmap -A when you need a comprehensive overview of the target system, including services, operating system details, and potential vulnerabilities. It is best used in authorized penetration testing or auditing environments where thoroughness is more important than stealth. \
Use nmap -sT for basic checks to see which TCP ports are open on a target. It is suitable when you do not need detailed information about the target's services or when running scans from a non-privileged user account. \

Save Scan Results. To save the scan results to a file:
```
nmap -oN output.txt 192.168.1.1
```
Scan with OS and Service Detection. To attempt to identify the operating system and services running on target machines:
```
nmap -A -T4 192.168.1.1
```
### nmap -A
The -A option in Nmap enables what is known as "aggressive scanning." This mode is a combination of several advanced scanning features that are designed to provide a comprehensive overview of the target host. Specifically, the -A option enables: 

- OS detection (-O), which attempts to identify the operating system of the target.
- Version detection (-sV), which tries to determine the version numbers of the services running on open ports.
- Script scanning (--script=default), which uses the default set of Nmap Scripting Engine (NSE) scripts for additional discovery and exploitation. This can reveal a wealth of information such as vulnerabilities, misconfigurations, and more.
- Traceroute (--traceroute), which traces the path packets take from the host to the target.
In essence, nmap -A is a thorough scanning option that can provide a detailed view of the target's configuration, services, and potential vulnerabilities. However, it is more intrusive and likely to be detected by intrusion detection systems (IDS). \

#### What is obfuscation in cybersecurity?
Data obfuscation is the process of hiding original data with modified content, such as characters or other data. This process is used to safeguard information classified as personally identifiable information (PII) or other sensitive data (e.g. commercially competitive). \

Use a decoy
```
nmap -sS -D 192.168.1.2 192.168.1.1
```
It stills sends the packet from me but sends a second decoy packet to try to hide me. \

The Nmap Scripting Engine (NSE) is an advanced feature of Nmap that extends its capabilities beyond simple network scanning and port detection. It allows users to perform a wide range of network tasks, including more sophisticated activities like vulnerability detection, exploitation, and network discovery using scripts. NSE makes Nmap not just a scanning tool but a powerful network exploration and security auditing tool.


### Core Features of NSE:
- Flexibility: NSE scripts can perform various tasks, from network discovery and vulnerability scanning to more advanced functions like exploitation and brute-forcing of services.
- Script-Based: The scripts are written in Lua, a powerful, fast, and lightweight programming language. Lua's simplicity and efficiency make it ideal for writing custom scripts running within Nmap.
- Extensive Script Library: Nmap comes with hundreds of pre-written scripts that cover many common use cases, such as finding specific vulnerabilities, detecting misconfigurations, and gathering information about network hosts.
- Integration with Nmap: Scripts can leverage the robust host discovery and port scanning features of Nmap, allowing them to operate on a well-defined set of targets identified by the initial network scans.
- Categorization: NSE scripts are organized into categories such as safe, vuln, intrusive, etc., allowing users to quickly select scripts based on their scanning goals and the risk level they are prepared to accept.

#### How It Works:
NSE allows for the execution of scripts during various stages of the scanning process. This integration enables scripts to use the data gathered by Nmap's standard scanning capabilities to perform more targeted and sophisticated analyses. The scripts can query ports and services Nmap identifies, send and receive custom network packets, and process the responses.

#### Example Use Case:
For instance, if you want to scan a server for common vulnerabilities, you could use the following command:
```
nmap --script vuln 192.168.1.1
```
This command would run all scripts categorized under "vuln" against target.host.com, identifying potential vulnerabilities based on known signatures and behaviors.

### Writing Custom Scripts:
Users are not limited to the scripts that come with Nmap. Since NSE uses Lua, it's relatively straightforward for those with programming skills to write their own scripts tailored to specific needs or scenarios. The Nmap scripting API provides a rich set of functions that script writers can use to interact with network hosts, manipulate packets, and integrate seamlessly with the rest of the Nmap scanning process. \
NSE Website: https://nmap.org/book/nse.html

### Using nmap with BASH:
Using Nmap within a Bash shell allows you to leverage the power of shell scripting along with Nmap's robust network scanning capabilities. This can be especially useful for automating repetitive tasks, processing scan results programmatically, or integrating Nmap scans into larger security assessment workflows. Below are several examples of how you might use Nmap in a Bash script: \

Basic Host Discovery \
This script pings hosts in a subnet to see which ones are up.
```
#!/bin/bash

subnet="192.168.1.0/24"

echo "Scanning for live hosts in the subnet $subnet"

nmap -sn $subnet 
```
Scan Multiple Hosts from a List \
This script reads a list of hosts from a file and performs a basic port scan on each.
```
#!/bin/bash

while IFS= read -r host

do

  echo "Scanning $host"

  nmap -p 80,443 $host

done < "hosts.txt"
```
In this example, `hosts.txt` should contain one host (IP address or domain name) per line. \
Automated Vulnerability Scan \
Scan hosts for vulnerabilities and output results to separate files.
```
#!/bin/bash

for host in 192.168.1.10 192.168.1.11 192.168.1.12; do

  echo "Performing an aggressive scan on $host"

  nmap -A $host -oN "scan_$host.txt"

done
```
Checking for Specific Service \
This script checks if a web server is running on port 80 for a list of hosts.
```
#!/bin/bash

hosts=("192.168.1.10" "192.168.1.11" "192.168.1.12")




for host in "${hosts[@]}"; do

  echo "Checking HTTP service on $host"

  nmap -p 80 --script http-title $host

done
```


Sequential Port Scanning with Output Processing \
Scan a range of ports on a host and process the output to find open ports.
```
#!/bin/bash
 
host="192.168.1.10"
 
ports=$(seq 1 100)
 
 
 
 
for port in $ports; do
 
  result=$(nmap -p $port $host | grep open)
 
  if [[ -n $result ]]; then
 
    echo "Port $port is open on $host"
 
  fi
 
done
```
These examples showcase the versatility of combining Nmap with Bash scripting. They range from simple scans to complex operations involving loops, conditionals, and output processing. Remember, these scripts should be used responsibly and ethically, ensuring you have permission to scan the network and hosts targeted by these scripts.

### Using nmap with BASH:
Using Nmap within a Bash shell allows you to leverage the power of shell scripting along with Nmap's robust network scanning capabilities. This can be especially useful for automating repetitive tasks, processing scan results programmatically, or integrating Nmap scans into larger security assessment workflows. Below are several examples of how you might use Nmap in a Bash script: \
Basic Host Discovery \
This script pings hosts in a subnet to see which ones are up.
```
#!/bin/bash

subnet="192.168.1.0/24"

echo "Scanning for live hosts in the subnet $subnet"

nmap -sn $subnet
```
Scan Multiple Hosts from a List \
This script reads a list of hosts from a file and performs a basic port scan on each.
```
#!/bin/bash

while IFS= read -r host

do

  echo "Scanning $host"

  nmap -p 80,443 $host

done < "hosts.txt"
```
In this example, `hosts.txt` should contain one host (IP address or domain name) per line. \
Automated Vulnerability Scan \
Scan hosts for vulnerabilities and output results to separate files.
```
#!/bin/bash

for host in 192.168.1.10 192.168.1.11 192.168.1.12; do

  echo "Performing an aggressive scan on $host"

  nmap -A $host -oN "scan_$host.txt"

done
```
Checking for Specific Service \
This script checks if a web server is running on port 80 for a list of hosts.
```
#!/bin/bash

hosts=("192.168.1.10" "192.168.1.11" "192.168.1.12")




for host in "${hosts[@]}"; do

  echo "Checking HTTP service on $host"

  nmap -p 80 --script http-title $host

done
```
Sequential Port Scanning with Output Processing \
Scan a range of ports on a host and process the output to find open ports.
```
#!/bin/bash

host="192.168.1.10"

ports=$(seq 1 100)




for port in $ports; do

  result=$(nmap -p $port $host | grep open)

  if [[ -n $result ]]; then

    echo "Port $port is open on $host"

  fi

done
```
These examples showcase the versatility of combining Nmap with Bash scripting. They range from simple scans to complex operations involving loops, conditionals, and output processing. Remember, these scripts should be used responsibly and ethically, ensuring you have permission to scan the network and hosts targeted by these scripts.


# Practice/Lab


