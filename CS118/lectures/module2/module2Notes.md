# Module 2 Notes

## Misc Notes 
- C: is the windows root, A and B were floppy discs.
- The command prompt is an .exe program, extensions MATTER in windows powershell. 
- x86, for all the old legacy installs. if i install an application, it gets installed in here. like the /bin file in linux.
- command file is like the /etc file in linux.
- registry is a database of your computer, every program has a record in the registry. each user as a profile in the registry.
- whenever we script, we want to push to a test box, so we can see how it reacts before pushing out updates on a larger scale.

## Windows Command Line - Cheat Sheet
### Opening Command Prompt
- cmd – Open Command Prompt
- Run as Administrator:
- Start Menu → type cmd → right-click → Run as administrator

### Basic Navigation
| Command       | Description                                        |
| ------------- | -------------------------------------------------- | 
| dir           | List files and folders in the current directory    |
| cd foldername | Change to a folder                                 |
| cd ..         | Move up one directory                              |
| cd \          | Go to the root of the drive                        |
| cls           | Clear the screen                                   |
| exit          | Close Command Prompt                               |

### Example
``` 
cd Documents
cd ..
```

### Working with Files
| Command                  | Description                     |
| ------------------------ | ------------------------------- |
| type file.txt            | Display contents of a text file |
| copy source.txt dest.txt | Copy a file                     |
| move file.txt folder\    | Move a file                     |
| del file.txt             | Delete a file                   |
| ren old.txt new.txt      | Rename a file                   |

### Example
``` 
copy report.txt backup.txt
del temp.txt
```

### Working with Directories (Folders)
| Command             | Description                  |
| ------------------- | ---------------------------- |
| mkdir foldername    | Create a folder              |
| rmdir foldername    | Delete an empty folder       |
| rmdir /s foldername | Delete a folder and contents |
| tree                | Display directory structure  |

### Example
``` 
mkdir Projects
rmdir /s OldProjects
```

### Viewing System Information
| Command    | Description             |
| ---------- | ----------------------- |
| hostname   | Show computer name      |
| whoami     | Show logged-in user     |
| systeminfo | Detailed system info    |
| ver        | Display Windows version |
| date       | Show or set the date    |
| time       | Show or set the time    |

### Disk and Drive Commands
| Command  | Description                          |
| -------- | ------------------------------------ |
| diskpart | Disk management utility (admin only) |
| chkdsk   | Check disk for errors                |
| vol      | Show disk volume label               |
| format   | Format a drive (use carefully!)      |

### Networking Commands
| Command            | Description               |
| ------------------ | ------------------------- |
| ipconfig           | Show IP address info      |
| ipconfig /all      | Detailed network info     |
| ping google.com    | Test network connectivity |
| tracert google.com | Trace network path        |
| netstat -an        | View network connections  |
| nslookup           | DNS lookup tool           |


### User and Account Commands
| Command                       | Description              |
| ----------------------------- | ------------------------ |
| net user                      | List user accounts       |
| net user username             | View user details        |
| net localgroup                | List local groups        |
| net localgroup administrators | Show admin group members |

### Process and Task Management
| Command              | Description            |
| -------------------- | ---------------------- |
| tasklist             | List running processes |
| taskkill /IM app.exe | Kill a process by name |
| taskkill /PID 1234 | Kill a process by ID     |

### File Permissions
| Command                       | Description        | 
| ----------------------------- | ------------------ |
| icacls file.txt               | View permissions   | 
| icacls file.txt /grant user:F | Grant full control |


### Command Help
| Command    | Description                 |
| ---------- | --------------------------- |
| help       | List all CMD commands       | 
| command /? | Help for a specific command |



#### Example
``` 
dir /?
```

#### Useful Command Shortcuts
 - Up Arrow – Scroll through previous commands
 - Tab – Auto-complete file/folder names
 - Ctrl + C – Stop a running command
 - Ctrl + V – Paste (newer Windows versions)
#### Common Best Practices
 - Be careful with del, rmdir /s, and format – they are destructive
 - Use Tab completion to avoid typing mistakes
 - Run Command Prompt as Administrator when working with system settings
 - Use / ? before unfamiliar commands

## Windows Batch Scripting Cheat Sheet

### What Is Batch Scripting?
- Batch files are plain text scripts executed by Command Prompt
- File extensions: .bat or .cmd
- Used for automation, legacy scripts, and simple system tasks

### Basic Batch File Structure
``` 
@echo off
echo Hello, World!
pause
```


| Line | Purpose |
| --------- | ----------------------- |
| @echo off | Hides command execution |
| echo | Prints text | 
| pause | Waits for key press |


### Comments
``` 
REM This is a comment
:: This is also a comment
```
Use REM for reliability inside scripts.

### Variables
#### Setting Variables
```
set NAME=Michael
```
#### Using Variables
``` 
echo %NAME%
```
#### User Input
```
set /p USERNAME=Enter your name:
echo Hello %USERNAME%
```

#### Environment Variables
| Variable | Meaning | 
| -------- | ------- |
| %USERNAME% | Logged-in user |
| %COMPUTERNAME% | Computer name |
| %USERPROFILE% | User home folder |
| %PATH% | Executable search path |

#### File & Folder Commands
| Task | Command | 
| ---- | ------- |
| List files | dir | 
| Change folder | cd folder |
| Create folder | mkdir Test |
| Delete file | del file.txt |
| Delete folder | rmdir /s Test |
| Copy file | copy a.txt b.txt |
| Move file | move a.txt folder | 
| Check file exists | if exist file.txt echo Found |

### Conditional Statements (IF)
``` 
if exist file.txt (
    echo File exists
) else (
    echo File not found
)
```
### String Comparison
```
if "%ANSWER%"=="yes" echo You said yes
```
### Loops (FOR)
#### Basic FOR Loop
``` 
for %%i in (1 2 3) do echo %%i
```
#### Loop Through Files
``` 
for %%f in (*.txt) do echo %%f
```
#### Loop with Command Output
``` 
for /f %%i in ('dir /b') do echo %%i
```

#### Delayed Variable Expansion
Required when variables change inside loops.
``` 
setlocal enabledelayedexpansion
set COUNT=0
 
for %%i in (a b c) do (
    set /a COUNT+=1
    echo !COUNT!
)
```
### Math Operations
```
set /a TOTAL=5+3
set /a COUNT+=1
```

### Input & Output Redirection
| Symbol | Purpose                  |
| ------ | ------------------------ |
| >      | Write output (overwrite) | 
| >>     | Append output            |
| <      | Input from file          | 
| `      | `                        |

```
dir > files.txt
echo Done >> log.txt
```

### Error Handling

#### Check Last Command Result
``` 
if errorlevel 1 echo Command failed
```

#### Calling Other Scripts
```
call otherscript.bat
```
Without call, the current script stops.

### Labels & GOTO (Use Sparingly)
``` 
:start
echo Running
goto end
 
:end
echo Done
```

### Useful Commands in Scripts
| Command | Purpose |
| ------- | ------- |
| timeout /t 5 | Wait 5 seconds |
| cls | Clear screen | 
| title My Script | Set window title |
| exit /b | Exit script safely |

### Sample Practical Script
#### Backup Files Script
``` 
@echo off
set SOURCE=C:\Data
set DEST=C:\Backup

if not exist %DEST% mkdir %DEST%
copy %SOURCE%\*.txt %DEST%
echo Backup complete
pause
```

### Best Practices
- Always start with @echo off
- Use full paths when possible
- Avoid GOTO unless necessary
- Test with sample files first
- Comment your scripts clearly

### When to Use Batch vs PowerShell
| Task | Batch | PowerShell | 
| Simple automation | ✅ | ✅ |
| Legacy systems | ✅ | Warning |
| Complex logic | ❌ | ✅ |
| Object handling | ❌ | ✅ |

## Common Windows Command Line Tools
Windows includes a powerful set of built-in command-line tools that allow users and administrators to navigate files, manage systems, troubleshoot networking, and automate tasks. These tools are primarily used in Command Prompt (CMD) and PowerShell, and many are shared between both environments. 
Understanding these commands builds foundational skills for IT support, cybersecurity, scripting, and system administration.

### File and Directory Management
#### dir
Lists files and folders in the current directory.
``` 
dir
```

#### cd 
Changes the current working directory.
```
cd Documents 
```
Move up one level: 
```
cd ..
```
#### mkdir
Creates a new directory.
```
mkdir Projects
```
#### rmdir
Deletes a directory.
``` 
rmdir OldFolder
```
#### Delete folder and contents:
``` 
rmdir /s OldFolder
```
 
#### copy
Copies files from one location to another.
``` 
copy report.txt backup.txt
``` 
#### move
Moves files or renames them.
```
move report.txt Archive\
```
#### del
Deletes files.
```
del temp.txt
```
### Viewing and Working with Text 
#### type
Displays the contents of a text file.
```
type notes.txt
```
#### more
Displays long output one screen at a time.
```
type largefile.txt | more
```
### System Information
#### hostname
Displays the computer’s name.
```
hostname
```
#### whoami
Shows the currently logged-in user.
```
whoami
```
#### systeminfo
Displays detailed system information including OS version, memory, and installed updates.
```
systeminfo
```
#### ver
Shows the Windows version.
```
ver
```

### Networking and Connectivity
#### ipconfig
Displays IP address and network configuration.
```
ipconfig
```
Detailed output:
```
ipconfig /all
```
 
#### ping
Tests connectivity to another system.
```
ping google.com
```
 
#### tracert
Shows the network path packets take to reach a destination.
```
tracert google.com
```
 
#### netstat
Displays active network connections.
```
netstat -an
```
 
#### nslookup
Queries DNS servers to resolve hostnames.
```
nslookup google.com
``` 
### Process and Task Management
#### tasklist
Lists running processes.
```
tasklist
```
 
### taskkill
Stops a running process.
Example (by name):
``` 
taskkill /IM notepad.exe
```
By process ID:
```
taskkill /PID 1234
```

### Disk and Storage Tools
#### chkdsk
Checks disks for errors.
```
chkdsk C:
```
 
#### vol
Displays the volume label and serial number.
```
vol C:
```
 
#### diskpart
Advanced disk management tool (administrator only).
```
diskpart
```
 
### User and Account Management

#### net user
Displays user accounts or account details.
Example:
``` 
net user
```
Specific user:
```
net user username
```
#### net localgroup
Displays local groups.
Example:
``` 
net localgroup
```
View administrators:
```
net localgroup administrators
```

### Command Control and Help

#### cls
Clears the screen.
```
cls
```
 
#### exit
Closes Command Prompt.
```
exit
```
 
#### help
Lists all available commands.
```
help
```
Command-specific help:
```
dir /?
```

### Redirection and Piping
#### Output Redirection
Sends command output to a file.
```
dir > files.txt
```
Append instead of overwrite:
```
dir >> files.txt
```
 
#### Piping
Sends output from one command to another.
```
tasklist | more
```

## Dates and Times
```
@echo off 
echo %DATE%
 
 
@echo off 
echo %TIME%
 
 
Something to experiment with:
 
@echo off 
echo/Today is: %year%-%month%-%day% 
goto :EOF 
setlocal ENABLEEXTENSIONS 
set t = 2&if "%date%z" LSS "A" set t = 1 
 
for /f "skip=1 tokens = 2-4 delims = (-)" %%a in ('echo/^|date') do ( 
   for /f "tokens = %t%-4 delims=.-/ " %%d in ('date/t') do ( 
      set %%a=%%d&set %%b=%%e&set %%c=%%f)) 
endlocal&set %1=%yy%&set %2=%mm%&set %3=%dd%&goto :EOF
```

## Working with the Registry - BE VERY CAREFUL!

## First Batch File (First.bat)
these files have to either end in .bat or .cmd
```
REM the following line makes it so that these lines do not show on the terminal when this script runs
@echo off

:PleaseStop

REM Do not run this line

dir c:\windows\system32

color A1

dir c:\windows\system32

color B2

dir c:\windows\system32

color C3

dir c:\windows\system32

color D4

dir c:\windows\system32

color E5

dir c:\windows\system32

color F6

dir c:\windows\system32

color 79

dir c:\windows\system32

color 90

GOTO PleaseStop
```

## Playing with Echo and Command Line Variables

1. Open notepad
2. Add in the content below
3. Save as SecondScript.bat
4. Run it by typing SecondScript.bat red green blue

```
@echo off

echo %1

echo %2

echo %3

echo %0
```

In batch scripting, `$1` typically represents the first command line argument passed to a script or a batch file. When you run a batch file and provide arguments, they are assigned to variables like `$1`, `$2`, and so on.

In the batch file, `$1` would be equivalent to `red,` and `green` would be equivalent to `arg2`. These variables allow the script to access and use the values passed as arguments.

## Setting up Variables in Windows Command Line

In the Windows command line (CMD), you can set a variable using the set command. Here is the basic syntax:
```
set variable_name=value
```


For example, to set a variable named myVar with the value Hello, World!, you would do:
```
set myVar=Hello, World!
```


To access the value of the variable, you prefix the variable name with %:
```
echo %myVar%
```


This would output:
```
Hello, World!
```

Remember that variables set in a CMD session are local to that session. If you want to set environment variables that persist across sessions, you can use the setx command:
```
setx variable_name value
```
Keep in mind that changes made with setx won't take effect in the current CMD session; you need to open a new CMD window to see the updated environment variable.

```
@echo off 
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
echo %c% 
SET /A c = %a% - %b% 
echo %c% 
SET /A c = %b% / %a% 
echo %c% 
SET /A c = %b% * %a% 
echo %c%
```

## Using Batch to Create Shortcuts

Let's create a desktop shortcut to www.boston.com

Save as ThirdScript.cmd


```
@echo off
setlocal
 
REM Create an Internet Shortcut (.url) in the TEMP folder
set "ShortcutFile=%TEMP%\Boston.url"
 
echo Creating shortcut at: %ShortcutFile%
echo.
 
REM Write the .url file (first line uses > to create/overwrite the file)
echo [InternetShortcut] > "%ShortcutFile%"
 
REM Append the URL line (uses >> to add to the file)
echo URL=https://www.boston.com/ >> "%ShortcutFile%"
 
echo You created an internet shortcut:
echo "%ShortcutFile%"
echo.
 
REM Optional: open the folder so students can see it
explorer "%TEMP%"
 
pause
endlocal
```

### How can students move it anywhere
Example: move it to the Desktop (safe, common)

``` 
move "%TEMP%\Boston.url" "%USERPROFILE%\Desktop\Boston.url"
```

### Quick explanation of redirection (your teaching notes)
> creates/overwrites a file with command output
- Example: echo hello > file.txt (file.txt becomes only “hello”)
>> appends output to the end of a file
- Example: echo again >> file.txt (adds a new line at the bottom)
| (pipe) sends output of one command into another command
- Example: dir | more (shows directory listing one page at a time)


## Output Redirection in Windows Command line

### Output Redirection in Windows Command Line
Windows command-line programs use three standard data streams:

- Standard Output (Stdout) – normal command results
- Standard Error (Stderr) – error messages
- Standard Input (Stdin) – data provided to a command
Redirection allows you to send these streams somewhere else, such as a file.

### Redirecting Standard Output (Stdout)

```
dir C:\ > list.txt
```

What this does:

- Runs the dir command on C:\
- Sends the normal output (Stdout) into a file called list.txt
- Overwrites the file if it already exists
### Redirecting Standard Error (Stderr)
 
```
dir C:\pickles 2> error.txt
```
What this does:

- Attempts to list a folder that does not exist
- Sends the error message (Stderr) into error.txt
- The number 2 represents the error stream
### Combining Stdout and Stderr
 
```
dir C:\ > lists.txt 2>&1
```
What this does:

- Redirects normal output (Stdout) to lists.txt
- Redirects error output (Stderr) to the same place
- 2>&1 means “send error output to wherever Stdout is going”
This is commonly used for logging and troubleshooting.

### Working with Standard Input (Stdin)
Standard Input normally comes from the keyboard.

In Windows, the keyboard is represented by a special device called CON.

Redirecting Keyboard Input to a File
 
```
type CON > lists.txt
```
What this does:

- Takes everything you type at the keyboard
- Writes it to lists.txt
- Continues until an EOF (End-Of-File) signal is entered
To end input:

- Press Ctrl + Z
- Then press Enter
### Example Session
 
```
type CON > lists.txt
This is line one
This is line two
^Z
```
The file lists.txt will contain:

```
This is line one
This is line two
```

### Quick Reference Summary
| Symbol | Meaning                     |
| ------ | --------------------------- |
| >      | Redirect output (overwrite) |
| >>     | Redirect output (append)    |
| 2>     | Redirect error output       |
| 2>&1   | Combine output and error    |
| CON    | Keyboard input device       |

## Creating loops

### Example 1: Simple (Infinite) Loop
This loop will continue running until the user stops it (Ctrl + C).
 
```
@echo off
cls
 
:start
echo Example of a loop
pause
goto start
```
 
#### How it works
- :start is a label
- goto start sends execution back to the label
- The script repeats forever unless interrupted
Use case:
- Menu systems, waiting for user input, or testing behavior.

### Example 2: Counting Loop (Conditional Exit)
This example runs until a counter reaches a specific value, then exits cleanly.

``` 
@echo off
set count=0
 
:a
if %count% gtr 10 goto b
 
set /a count+=1
echo I am running %count% time
rem dir > %random%.txt
goto a
 
:b
echo I have finished my journey
pause
exit /b
```

#### How it works
- set count=0 initializes the counter
- if %count% gtr 10 goto b checks the exit condition
- set /a count+=1 increments the counter
- goto a repeats the loop
- When the condition is met, execution jumps to :b

### Bonus: Using %RANDOM% for Unique Filenames
%RANDOM% generates a random number between 0 and 32767.

This is useful for creating unique file names.

 
```
dir > %RANDOM%.txt
```
Why this is useful
- Prevents overwriting existing files
- Useful for logging or testing
- Common in automation scripts
In the example script, the line is commented out using rem.

Try removing rem to see multiple randomly named files created.

### Key Concepts Summary
| Concept | Purpose |
| ------- | ------- |
| Labels (:a) | Mark positions in a script |
| goto | Control script flow |
| set /a | Perform math |
| %RANDOM% | Generate random numbers |
| rem | Comment out a line |

## Arrays with Command line

FOR Loops and Arrays in Batch Scripting
Batch scripting does not have true arrays like modern languages, but we can simulate arrays using variable naming conventions and loops.

### Example 1: FOR Loop with a List
 
 ```
@echo off
set list=1 2 3 4
 
for %%a in (%list%) do (
    echo %%a
)
```
 
What this demonstrates
- set list= creates a space-separated list
- for %%a in (...) loops through each value
- %%a represents the current item in the loop
Output:

``` 
1
2
3
4
```

### Simulating an Array (Single Element)
Batch arrays are simulated by naming variables with an index.

``` 
@echo off
set a[0]=1
echo %a[0]%
```
Key idea
- a[0] acts like the first element of an array
- Values are retrieved using %variable%

### Expanding the Array
 
```
@echo off
set a[0]=1
set a[1]=2
set a[2]=3
 
echo The first element of the array is %a[0]%
echo The second element of the array is %a[1]%
echo The third element of the array is %a[2]%
```
This simulates an array with three elements.

### Modifying the Array (Adding an Element)
 
```
@echo off
set a[0]=1
set a[1]=2
set a[2]=3
 
rem Adding an element at the end of the array
set a[3]=4
 
echo The last element of the array is %a[3]%
```

### Finding the Length of an Array
Batch scripting does not track array length automatically.

We determine it by looping until an element is undefined.

``` 
@echo off
set Arr[0]=1
set Arr[1]=2
set Arr[2]=3
set Arr[3]=4
 
set x=0
 
:OWEN
if defined Arr[%x%] (
    call echo %%Arr[%x%]%%
    set /a x+=1
    goto OWEN
)
 
echo The length of the array is %x%
pause
```
#### How this works
- if defined checks whether the array index exists
- call forces delayed expansion
- The loop stops when an index is missing

### Creating Structured Arrays (Simulated Objects)
Batch scripting can simulate simple structures by combining names and indexes.

``` 
@echo off
set obj[0].Name=Joe
set obj[0].ID=1
 
set obj[1].Name=Mark
set obj[1].ID=2
 
set obj[2].Name=Mohan
set obj[2].ID=3
 
for /L %%i in (0,1,2) do (
    call echo Name  = %%obj[%%i].Name%%
    call echo ID    = %%obj[%%i].ID%%
)
pause
```

#### What this demonstrates
Each object has multiple properties (Name, ID)
/L loop controls the index range
call is required for variable expansion inside loops

### Key Concepts Summary
| Concept | Purpose |
| ------- | ------- |
| for %%a in (...) | Loop through a list |
| Indexed variables | Simulate arrays |
| if defined | Check for array existence | 
| call | Enable runtime variable expansion |
| /L loop | Loop over numeric ranges |

### Important Notes for Students
- Batch arrays are not true arrays
- Variable expansion can be tricky inside loops
- PowerShell handles arrays much more cleanly
- These techniques are useful for legacy scripts and understanding older automation

## IF Statements - Used to Test Condtions

### IF Statements in Batch Scripting
An IF statement tests a condition. If the condition is true, the script takes an action.

Batch supports several useful forms:

- IF (comparison)
- IF ... ELSE ... (branching)
- IF DEFINED (variable exists)
- IF EXIST (file/folder exists)
- Nested IF statements
In more advanced languages you’ll see additional branching patterns (ELSEIF, switch/case, etc.). Batch keeps it simpler.

### 1) IF with Integers (Numbers)
 
```
@echo off
set /a a=5
set /a b=10
set /a c=a+b
 
if %c%==15 echo The value of c is 15
if %c%==10 echo The value of c is 10
pause
```
 
Notes
- set /a is for math
- You do not need % inside set /a expressions (c=a+b is best practice)

### 2) IF with Strings (Text)
 
```
@echo off
set "str1=String1"
set "str2=String2"
 
if "%str1%"=="String1" echo str1 is String1
if "%str2%"=="String3" echo str2 is String3
pause
```
Notes
- Use quotes around variables in comparisons: if "%var%"=="value"
- The set "name=value" style prevents accidental spaces

### 3) IF with Command-Line Arguments
Save as Script3.bat

``` 
@echo off
echo Argument 1: %1
echo Argument 2: %2
echo Argument 3: %3
 
if "%1"=="1" echo The first value is 1
if "%2"=="2" echo The second value is 2
if "%3"=="3" echo The third value is 3
 
pause
```
Run it
 
```
Script3.bat 1 2 3
```
Then:
 
```
Script3.bat 4 5 6
```
(Your original had a typo: Script3.bay → should be Script3.bat)


### 4) IF / ELSE (Branching)
Working with Numbers
``` 
@echo off
set /a a=5
set /a b=10
set /a c=a+b
 
if %c%==15 (
    echo The value of c is 15
) else (
    echo Unknown value
)
 
pause
```

### Working with Strings
 
```
@echo off
set "str1=String1"
set "str2=String2"
 
if "%str1%"=="String1" (
    echo str1 is String1
) else (
    echo str1 is not String1
)
 
if "%str2%"=="String3" (
    echo str2 is String3
) else (
    echo str2 is not String3
)
 
pause
```
### 5) IF DEFINED (Variable Exists)
 
```
@echo off
set "str1=String1"
set "str2=String2"
 
if defined str1 echo Variable str1 is defined
 
if defined str3 (
    echo Variable str3 is defined
) else (
    echo Variable str3 is not defined
)
 
pause
```

### 6) IF EXIST (File or Folder Exists)
 
```
@echo off
 
if exist "C:\admin\set2.txt" echo set2.txt exists
 
if exist "C:\admin\set3.txt" (
    echo set3.txt exists
) else (
    echo set3.txt does not exist
)
 
pause
```
Tip: Put paths in quotes to avoid issues with spaces.

### 7) Nested IF Statement
``` 
@echo off
set /a a=5
set /a b=10
 
if %a%==5 (
    if %b%==10 (
        echo The values of the variables are correct
    )
)
pause
``` 
### Quick Best Practices
- Prefer: set /a c=a+b instead of set /a c=%a%+%b%
- Always quote string comparisons: if "%var%"=="value"
- Use set "var=value" to avoid whitespace bugs
- Add a pause in student examples so the window doesn’t close immediately

## Operators 

### Arithmetic Operators
Batch script language supports the normal Arithmetic operators as any language. Following are the Arithmetic operators available.

| Operator | Description | Example |
| -------- | ----------- | ------- |
| + | Addition of two operands | 1 + 2 will give 3 |
| − | Subtracts second operand from the first | 2 − 1 will give 1 |
| * | Multiplication of both operands | 2 * 2 will give 4 |
| / | Division of the numerator by the denominator | 3 / 2 will give 1.5 |
| % | Modulus operator and remainder of after an integer/float division | 3 % 2 will give 1 |

### Relational Operators
Relational operators allow of the comparison of objects. Below are the relational operators available.

| Operator | Description | Example |
| -------- | ----------- | ------- |
| EQU | Tests the equality between two objects | 2 EQU 2 will give true |
| NEQ | Tests the difference between two objects | 3 NEQ 2 will give true |
| LSS | Checks to see if the left object is less than the right operand | 2 LSS 3 will give true |
| LEQ | Checks to see if the left object is less than or equal to the right operand | 2 LEQ 3 will give true |
| GTR | Checks to see if the left object is greater than the right operand | 3 GTR 2 will give true |
| GEQ | Checks to see if the left object is greater than or equal to the right operand | 3 GEQ 2 will give true |

### Logical Operators
Logical operators are used to evaluate Boolean expressions. Following are the logical operators available.

The batch language is equipped with a full set of Boolean logic operators like AND, OR, XOR, but only for binary numbers. Neither are there any values for TRUE or FALSE. The only logical operator available for conditions is the NOT operator.


| Operator | Description | 
| -------- | ----------- |
| AND | This is the logical “and” operator | 
| OR | This is the logical “or” operator |
| NOT | This is the logical “not” operator |

### Assignment Operators
Batch Script language also provides assignment operators. Following are the assignment operators available.


| Operator | Description | Example |
| -------- | ----------- | ------- |
| += | This adds right operand to the left operand and assigns the result to left operand | Set /A a = 5 \\ a += 3 \\ Output will be 8 |
| -= | This subtracts the right operand from the left operand and assigns the result to the left operand | Set /A a = 5 \\ a -= 3 \\ Output will be 2 |
| *= | This multiplies the right operand with the left operand and assigns the result to the left operand | Set /A a = 5 \\ a *= 3 \\ Output will be 15 |
| /= | This divides the left operand with the right operand and assigns the result to the left operand | Set /A a = 6 \\ a/ = 3 \\ Output will be 2 |
| %= | This takes modulus using two operands and assigns the result to the left operand | Set /A a = 5 \\ a% = 3 \\ Output will be 2 |











































## Powershell vs Powershell ISE
"PowerShell ISE" stands for PowerShell Integrated Scripting Environment.
Here’s a breakdown of the name:

- PowerShell: This is Microsoft's task automation and configuration management framework, consisting of a command-line shell and scripting language.
- Integrated Scripting Environment (ISE): This refers to a graphical user interface (GUI) that provides tools for writing, testing, and debugging PowerShell scripts. It's "integrated" because it brings multiple script development features into one application—like a script editor, syntax highlighting, a console, and debugging tools.
So, PowerShell ISE is named as such because it’s a GUI-based environment built specifically for creating and managing PowerShell scripts more efficiently than just using the PowerShell console.

Note: As of Windows PowerShell 5.1, ISE is no longer actively developed. Microsoft now recommends using Visual Studio Code with the PowerShell extension for scripting.

### PowerShell (Console)

What it is:

A command-line shell for executing PowerShell commands and scripts.

- Interface: Text-only command prompt window.
- Usage: Running commands, scripts, and automation tasks.
- Performance: Lightweight and faster to launch.
- Modern Support:
    - Actively supported (especially PowerShell 7+, aka PowerShell Core).
    - Cross-platform (Windows, macOS, Linux).
- Extensions: Typically used with editors like Visual Studio Code for script development.
Best for:
- Running scripts quickly
- Automation in servers or DevOps
- Use on all platforms


### PowerShell ISE (Integrated Scripting Environment)

What it is:

A GUI-based script editor and console built into Windows PowerShell.

- Interface: Windows GUI with a script pane, command pane, and output pane.
- Features:
    - Syntax highlighting
    - Tabbed editing
    - Intellisense (auto-complete)
    - Debugging tools (set breakpoints, step through code)
- Platform: Windows-only
- Version Limitation: Only works with Windows PowerShell 5.1 or earlier
- Status: No longer under active development (deprecated)
Best for:

- Beginners learning PowerShell
- Writing and debugging small-to-medium scripts
- Windows-only environments

### Summary Table

| Feature             | PowerShell (Console)   | PowerShell ISE                       |
| ------------------- | ---------------------- | ------------------------------------ |
| Interface           | Command-line           | Graphical (GUI)                      | 
| Scripting           | Yes                    | Yes                                  | 
| Debugging Tools     | Basic                  | Advanced (step-through, breakpoints) |
| Syntax Highlighting | No (unless in VS Code) | Yes                                  | 
| Intellisense        | No (unless in VS Code) | Yes                                  |
| Platform Support    | Cross-platform (v7+)   | Windows only                         |
| Current Support     | Actively maintained    | Deprecated                           |

### Modern Alternative to ISE
Microsoft recommends using Visual Studio Code + PowerShell Extension instead of ISE. It offers:

- Better performance
- Modern features
- Cross-platform support
- Active development
