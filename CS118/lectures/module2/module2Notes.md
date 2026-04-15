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
| ---- | ----- | ---------- |
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
| += | This adds right operand to the left operand and assigns the result to left operand | Set /A a = 5, a += 3, Output will be 8 |
| -= | This subtracts the right operand from the left operand and assigns the result to the left operand | Set /A a = 5, a -= 3, Output will be 2 |
| *= | This multiplies the right operand with the left operand and assigns the result to the left operand | Set /A a = 5, a *= 3, Output will be 15 |
| /= | This divides the left operand with the right operand and assigns the result to the left operand | Set /A a = 6, a/ = 3, Output will be 2 |
| %= | This takes modulus using two operands and assigns the result to the left operand | Set /A a = 5, a% = 3, Output will be 2 |

## Using GOTO

GOTO provides the ability to hop around your batch script.

But you can pair it with an IF statement.


```
@echo off 
SET /A a = 5 
 
if %a%==5 goto :labela 
if %a%==10 goto :labelb
 
:labela 
echo "The value of a is 5" 
 
exit /b 0
 
:labelb 
echo "The value of a is 10"
```

## Functions - Yeah they don't exist in Windows Command line

But you can hack it. This of GOTO in reverse. Instead of jumping to it you pull from it.

```
@echo off 
SETLOCAL 
CALL :Display 
EXIT /B %ERRORLEVEL% 
:Display 
SET /A index=2 
echo The value of index is %index% 
EXIT /B 
 
Key difference with BASH in Linux is you need to set you functions after your main script body.
 
You can also use CALL to call in and execute other batch scripts. So you function could be a completely separate file.
```

## Exercise - Creating Menus: MenuLab.bat 

```
@echo off
title Batch Menu Lab
setlocal
 
:home
cls
echo.
echo Select a task:
echo =============
echo.
echo 1) Open www.google.com
echo 2) List your TEMP folder (safe)
echo 3) Run ipconfig and save to a log file
echo 4) Run a "cleanup" demo (creates then deletes a test file)
echo 5) Exit
echo.
set /p choice=Type option (1-5):
 
if "%choice%"=="1" goto google
if "%choice%"=="2" goto listtemp
if "%choice%"=="3" goto ipconfiglog
if "%choice%"=="4" goto cleanupdemo
if "%choice%"=="5" goto end
 
echo.
echo Invalid choice. Try again.
pause
goto home
 
:google
start "" "https://www.google.com"
goto home
 
:listtemp
cls
echo Listing files in: %TEMP%
echo -------------------------
dir "%TEMP%" /b | more
echo.
pause
goto home
 
:ipconfiglog
cls
echo Running ipconfig and saving output...
ipconfig /all > "%TEMP%\ipconfig_log.txt"
echo.
echo Saved to: %TEMP%\ipconfig_log.txt
echo Opening the log file...
start "" notepad "%TEMP%\ipconfig_log.txt"
pause
goto home
 
:cleanupdemo
cls
echo Cleanup Demo (SAFE)
echo -------------------
echo This will create a test file in your TEMP folder and then delete it.
echo.
 
set "testfile=%TEMP%\BatchMenu_TestFile.txt"
echo This is a test file created by MenuLab.bat > "%testfile%"
 
echo Created: %testfile%
echo Now deleting it...
del "%testfile%"
 
echo Done. (No real files were harmed.)
pause
goto home
 
:end
endlocal
exit /b
```

## One Last Batch Script

```
@echo off

set "baseFolder=%CD%"

rem Create folders Murphy and Law

mkdir "%baseFolder%\Murphy"

mkdir "%baseFolder%\Law"

rem Create text and non-text files in Murphy

echo. > "%baseFolder%\Murphy\green.txt"

echo. > "%baseFolder%\Murphy\red.txt"

echo. > "%baseFolder%\Murphy\white.doc"

echo. > "%baseFolder%\Murphy\blue.csv"

rem Copy only text files from Murphy to Law

copy "%baseFolder%\Murphy\*.txt" "%baseFolder%\Law\"

echo Task completed.
```
## CMD vs PowerShell – Comparison Cheat Sheet

### What Are They?
| Tool | Description |
| Command Prompt (CMD) | Legacy Windows command-line shell based on DOS-style commands | 
| PowerShell | Modern automation shell and scripting language built on .NET |

### When to Use Each
| Use Case | CMD | PowerShell |
| -------- | --- | ---------- |
| Quick file navigation | ✅ | ✅ |
| Simple troubleshooting | ✅ | ✅ |
| Automation & scripting | ❌ | ✅ |
| Managing Windows services | Limited | ✅ |
| Working with objects & data | ❌ | ✅ |
| Enterprise administration | ❌ | ✅ |


### Command Style
| Feature | CMD | PowerShell |
| ------- | --- | ---------- |
| Output type | Plain text | Objects | 
| Command structure | Short commands | Verb-Noun format |
| Pipelining | Text-based | Object-based |
| Case sensitivity | No | No (by default) |

### File & Directory Commands
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| List files | dir | Get-ChildItem |
| Change directory | cd | Set-Location |
| Create folder | mkdir test | New-Item test -ItemType Directory |
| Delete file | del file.txt | Remove-Item file.txt |
| Copy file | copy a.txt b.txt | Copy-Item a.txt b.txt |
| Move file | move a.txt folder | Move-Item a.txt folder |

PowerShell supports CMD aliases (dir, cd, copy) for familiarity.

### Viewing File Contents
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| View text file | type file.txt | Get-Content file.txt |
| View first 10 lines | ❌ | Get-Content file.txt -TotalCount 10 |

### System Information
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| Computer name | hostname | $env:COMPUTERNAME |
| Logged-in user | whoami | $env:USERNAME |
| OS info | systeminfo | Get-ComputerInfo |


### Networking
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| IP configuration | ipconfig | Get-NetIPAddress |
| Test connectivity | ping google.com | Test-Connection google.com |
| DNS lookup | nslookup | Resolve-DnsName |

### Process Management
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| List processes | tasklist | Get-Process |
| Kill process | taskkill /IM app.exe | Stop-Process -Name app |



### Services
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| List services | sc query | Get-Service |
| Start service | net start servicename | Start-Service servicename |
| Stop service | net stop servicename | Stop-Service servicename |



### Help & Discovery
| Task | CMD | PowerShell |
| ---- | --- | ---------- |
| General help | help | Get-Help |
| Command help | dir /? | Get-Help Get-ChildItem |
| Examples | ❌ | Get-Help Get-Service -Examples |



### Scripting Capabilities
| Feature | CMD | PowerShell |
| ------- | --- | ---------- |
| Script extension | .bat, .cmd | .ps1 |
| Variables | Very limited | Strong & typed |
| Loops & logic | Basic | Advanced |
| Error handling | Minimal | Robust |
| Modules & APIs | ❌ | ✅ |


### Strengths Summary
CMD – Best For
- Simple, quick commands
- Legacy scripts
- Basic troubleshooting
- Older documentation and tools
PowerShell – Best For
- Automation and administration
- Managing users, services, and systems
- Working with structured data
- Enterprise and cloud environments
### Bottom Line
CMD is for quick tasks. PowerShell is for serious work.

Microsoft’s future investment is clearly in PowerShell.

## PowerShell Cheat Sheet

### Getting Help
| Command | What it does |
| ------- | ------------ |
| Get-Help | General help system |
| Get-Help Get-Process | Help for a command |
| Get-Help Get-Process -Examples | Examples only |
| Get-Command | List available commands |
| Get-Command *service* | Search commands by keyword |


### Basic Navigation
| Task | Command |
| ---- | ------- |
| Show current folder
| Get-Location |
| Change folder
| Set-Location C:\Users |
| List files/folders
| Get-ChildItem |
| Clear screen
| Clear-Host |


Handy aliases: cd, dir, ls, cls (they work in PowerShell)

### Working with Files & Folders
| Task | Command |
| ---- | ------- |
| Create folder | New-Item -ItemType Directory -Name Test |
| Create file | New-Item -ItemType File -Name notes.txt |
| Copy | Copy-Item file.txt C:\Temp\ |
| Move | Move-Item file.txt C:\Temp\ |
| Rename | Rename-Item file.txt newname.txt |
| Delete | Remove-Item file.txt |
| Delete folder + contents | Remove-Item .\Test -Recurse |



### Viewing & Searching Text
| Task | Command |
| ---- | ------- |
| Show file contents | Get-Content .\file.txt |
| First 10 lines | Get-Content .\file.txt -TotalCount 10 |
| Search text (like grep) | Select-String "error" .\file.txt |
| Search across many files | Select-String "error" .\*.log |


### Variables & Output
| Task | Command |
| ---- | ------- |
| Create variable | $name = "Michael" |
| Print variable | $name |
| Combine text | "Hello $name" |
| List variables | Get-Variable |



### Objects, Formatting, and the Pipeline
PowerShell passes objects, not plain text.
| Task | Command |
| ---- | ------- |
| View properties | `Get-Process |
| Select columns | `Get-Process |
| Filter results | `Get-Process |
| Sort | `Get-Process |
| Format table | `Get-Process |



### Processes
| Task | Command | 
| ---- | ------- |
| List processes | Get-Process | 
| Find one | Get-Process chrome | 
| Stop by name | Stop-Process -Name chrome | 
| Stop by ID | Stop-Process -Id 1234 |

### Services
| Task | Command |
| ---- | ------- |
| List services | Get-Service |
| Find by name | Get-Service *print* |
| Start | Start-Service spooler |
| Stop | Stop-Service spooler |
| Restart | Restart-Service spooler |


### Networking
| Task | Command |
| ---- | ------- |
| IP info | Get-NetIPAddress |
| Quick test ping | Test-Connection google.com -Count 4 |
| DNS lookup | Resolve-DnsName google.com |
| Active TCP connections | Get-NetTCPConnection |


### System Information
| Task | Command |
| ---- | ------- |
| Computer name | $env:COMPUTERNAME |
| Username | $env:USERNAME |
| OS info | Get-ComputerInfo |
| Disk space | Get-Volume |


### Working with CSV and Text Output
| Task | Command |
| ---- | ------- |
| Export to CSV | `Get-Process |
| Import CSV | $data = Import-Csv .\processes.csv |
| Save output to file | Get-Service > services.txt |
| Append output | Get-Service >> services.txt |

### Common One-Liners Students Love
List top 10 CPU-hungry processes:
 
```
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 Name, Id, CPU
```
 
List stopped services:
 
```
Get-Service | Where-Object Status -eq 'Stopped'
```
Find all .txt files recursively:
 
```
Get-ChildItem -Recurse -Filter *.txt
```
 
Safety Tips
Be cautious with: Remove-Item -Recurse
Use -WhatIf to preview changes (great habit):
```
Remove-Item .\Test -Recurse -WhatIf
```

## A cmdlet is a PowerShell command 
A cmdlet is a PowerShell command with a predeﬁned function, similar to an operator in a programming language. Here are some key things to know about cmdlets:

There are system, user, and custom cmdlets.



- Cmdlets output results as an object or as an array of objects.
- Cmdlets can get data for analysis or transfer data to another cmdlet using pipes (I will discuss pipes more in a moment).
- Cmdlets are case-insensitive. For example, it does not matter whether you type Get-ADUser, get-aduser, or gEt-AdUsEr.
- If you want to use several cmdlets in one string, you must separate them with a semicolon (;).

































## PDQ PowerShell Library 
https://www.pdq.com/powershell/ 

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

## Set-ExecutionPolicy

The Set-ExecutionPolicy cmdlet changes PowerShell execution policies for Windows computers. Beginning in PowerShell 6.0 for non-Windows computers, the default execution policy is Unrestricted and can't be changed. The Set-ExecutionPolicy cmdlet is available, but PowerShell displays a console message that it's not supported. An execution policy is part of the PowerShell security strategy. Execution policies determine whether you can load configuration files, such as your PowerShell profile, or run scripts. And, whether scripts must be digitally signed before they are run. The Set-ExecutionPolicy cmdlet's default scope is LocalMachine, which affects everyone who uses the computer. To change the execution policy for LocalMachine, start PowerShell with Run as Administrator.

To display the execution policies for each scope in the order of precedence, use Get-ExecutionPolicy -List.

```
Set-ExecutionPolicy -ExecutionPolicy Restricted 
(check only)
 
 
Set-ExecutionPolicy -ExecutionPolicy AllSigned 
(most secure)
 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned 
(medium secure)
 
Set-ExecutionPolicy -ExecutionPolicy Unrestricted 
(least secure)
```

## A cmdlet is a PowerShell command

A cmdlet always consists of a verb (or a word that functions as a verb) and a noun, separated with a hyphen (the “verb-noun” rule). For example, some of the verbs include:

Get — To get something Set — To deﬁne something Start — To run something

Stop — To stop something that is running

Out — To output something

New — To create something (“new” is not a verb, of course, but it functions as one)

===========================================================================

For practice, try executing the following cmdlets:

Get-Process — Shows the processes currently running on your computer:

Get-Service — Shows the list of services with their status

Get-Content — Shows the content of the file you specify (for example, Get-Content C:\Windows\System32\drivers\etc\hosts

Get-Command - Provides a full list of all cmdlets

Get-Alias - Pulls a list of aliases

Get-Help - Provides instructions on how to use the commands.

Example: get-help get-service

===========================================================================

Examples:

Get-Service -Name N*

start-process notepad

#Or you can use an alias

start notepad

#To stop it

stop-process notepad

#When there are several of them open it is a good option to combine cmdlets via a pipe

get-process note* | stop-process

#You also still can add on additional arguments as we did in the cmd line

start-process firefox www.massbay.edu

start-process notepad C:\Windows\System32\drivers\etc\hosts

===========================================================================

Reminder on Pipes 

A pipe passes data from one cmdlet to another. 

For example, if you execute the following script, you will get all services sorted by their status:

Get-Service | Sort-Object -property Status

You can also use a pipe to output text to a file using a script like the following:

"Hello, World!" | Out-File C:\admin\test.txt

You can use multiple pipes. For instance, the following script lists all services, with the first pipe excluding stopped services and the second pipe limiting the list to display names only:

Get-Service | WHERE {$_.status -eq "Running"} | SELECT displayname # “$_.” defines current element in the pipe

===========================================================================

PowerShell treats them case-insensitively. The module's name is purely a PowerShell concept and is treated case-insensitively. However, there is a strong mapping to a folder name, which can be case-sensitive in the underlying operating system

## Commonly Used PowerShell Cmdlets
### Overview
PowerShell cmdlets are lightweight commands that follow a Verb-Noun naming convention and return objects, not plain text. These cmdlets form the foundation of most PowerShell scripts used for administration, automation, and troubleshooting.

Key idea for students:

Most real PowerShell work is done by combining a small set of cmdlets using the pipeline (|).

### File and Folder Cmdlets 
#### Get-ChildItem
Lists files and folders (similar to dir).

``` 
Get-ChildItem
Get-ChildItem C:\Windows
Get-ChildItem *.txt
``` 
#### New-Item
Creates files or folders.

``` 
New-Item -ItemType Directory -Name TestFolder
New-Item -ItemType File -Name notes.txt
```

#### Copy-Item
Copies files or folders.

``` 
Copy-Item notes.txt Backup\
``` 
#### Move-Item
Moves or renames files and folders.

``` 
Move-Item notes.txt Archive\
``` 
#### Remove-Item
Deletes files or folders.

``` 
Remove-Item temp.txt -WhatIf
```
Always use -WhatIf first.

### System and Process Cmdlets
#### Get-Process
Shows running processes.

``` 
Get-Process
Get-Process chrome
```
#### Stop-Process
Stops a running process.

```
Stop-Process -Name notepad -WhatIf
```
#### Get-Service
Displays Windows services.

```
Get-Service
Get-Service | Where-Object Status -eq "Running"
```
#### Start-Service / Stop-Service
Controls services.

```
Start-Service Spooler
Stop-Service Spooler -WhatIf
```

### Object and Pipeline Cmdlets
#### Where-Object
Filters objects.

``` 
Get-Process | Where-Object CPU -gt 50
``` 
#### Select-Object
Chooses properties or limits output.

``` 
Get-Process | Select-Object Name, CPU -First 5
``` 
#### Sort-Object
Sorts objects.

``` 
Get-Process | Sort-Object CPU -Descending
``` 
#### ForEach-Object
Performs an action on each item.

``` 
Get-Service | ForEach-Object { $_.Name }
``` 
#### Measure-Object
Calculates statistics.

``` 
Get-Process | Measure-Object CPU -Average -Maximum
``` 
### Output and Display Cmdlets
#### Format-Table
Displays output in columns.

``` 
Get-Process | Format-Table Name, CPU
``` 
#### Format-List
Displays detailed output.

``` 
Get-Service | Format-List *
``` 
#### Write-Host
Writes directly to the console.

``` 
Write-Host "Hello, CS118!"
```
Not pipeline-friendly. Use sparingly.

#### Write-Warning
Displays a warning message.

 ```
Write-Warning "This action may take a few minutes."
```

### Input and Interaction Cmdlets
#### Read-Host
Prompts the user for input.

```
$name = Read-Host "Enter your name"
Write-Host "Hello, $name"
```
#### Start-Sleep
Pauses script execution.

 
```
Start-Sleep -Seconds 2
```
### File Content Cmdlets
#### Get-Content
Reads a file.

```
Get-Content notes.txt
```
#### Set-Content
Writes or overwrites file content.

 
```
"Hello World" | Set-Content notes.txt
```
#### Add-Content
Appends to a file.

 
```
"New line" | Add-Content notes.txt
```

### History and Help Cmdlets
#### Get-Help
Displays help information.

 
```
Get-Help Get-Process
Get-Help Get-Process -Examples
```
#### Get-History
Shows command history.

 
```
Get-History
```
 
#### Invoke-History
Re-runs a previous command.

 
```
Invoke-History 3
```
 
### Utility Cmdlets
#### Test-Path
Checks if a file or folder exists.

 
```
Test-Path C:\Windows
```
 
### Invoke-Item
Opens a file or folder.

 
```
Invoke-Item .
```
 
#### Get-Date
Displays the current date and time.

 
```
Get-Date
```
 
#### Common Pipeline Pattern (Very Important)
 
```
Get-Process |
Where-Object CPU -gt 10 |
Sort-Object CPU -Descending |
Select-Object -First 5 Name, CPU
```
This demonstrates:
- Retrieving objects
- Filtering
- Sorting
- Selecting output

### Summary Table
| Cmdlet | Purpose |
| ------ | ------- |
| Get-ChildItem | List files and folders |
| Get-Process | View running processes |
| Get-Service | View services |
| Where-Object | Filter objects |
| Select-Object | Choose properties |
| Sort-Object | Sort data |
| ForEach-Object | Process items |
| Measure-Object | Calculate statistics |
| Get-Content | Read files |
| Set-Content | Write files |
| Test-Path | Check existence |
| Get-Help | Learn cmdlets |

## Files and folders

### Safe Setup (Recommended)
Run this first so all examples work in a safe lab folder:

 
```
$LabRoot = Join-Path $env:TEMP "PS_FileFolder_Lab"
New-Item -Path $LabRoot -ItemType Directory -Force | Out-Null
Set-Location $LabRoot
"Lab folder: $LabRoot"
```
 
### 1) Creating Folders
Purpose: Create one or more directories.
 
```
New-Item -Path "$LabRoot\Reports" -ItemType Directory
New-Item -Path "$LabRoot\Logs" -ItemType Directory
```
Common use: Build project structure automatically.

### 2) Creating Files
Purpose: Create a new file (empty or with content).
 
```
New-Item -Path "$LabRoot\Reports\readme.txt" -ItemType File -Force
"Hello from PowerShell" | Set-Content -Path "$LabRoot\Reports\notes.txt"
```
Common use: Generate logs, placeholder files, or config files.

### 3) Copying Folders
Purpose: Copy an entire folder and everything inside it.
 
```
Copy-Item -Path "$LabRoot\Reports" -Destination "$LabRoot\Reports_Backup" -Recurse -Force
```
Common use: Backups before changes.

### 4) Copying Files
Purpose: Copy one or more files.

 
```
Copy-Item -Path "$LabRoot\Reports\notes.txt" -Destination "$LabRoot\Logs\notes_copy.txt" -Force
```
Copy multiple files by pattern:

 
```
Copy-Item -Path "$LabRoot\Reports\*.txt" -Destination "$LabRoot\Logs" -Force
```
 
### 5) Deleting Folders
Purpose: Delete a folder and its contents.

 
```
Remove-Item -Path "$LabRoot\Reports_Backup" -Recurse -Force
```
Safe tip: Preview with -WhatIf:

 
```
Remove-Item -Path "$LabRoot\Reports_Backup" -Recurse -Force -WhatIf
```
 
### 6) Deleting Files
Purpose: Delete a file.

 
```
Remove-Item -Path "$LabRoot\Logs\notes_copy.txt" -Force
```
Delete by pattern:

 
```
Remove-Item -Path "$LabRoot\Logs\*.txt" -Force
```
 
### 7) Moving Folders
Purpose: Move a folder to a new location.

 
```
Move-Item -Path "$LabRoot\Logs" -Destination "$LabRoot\Archive"
```
Common use: Archiving old data.

### 8) Moving Files
Purpose: Move one file (or many) to another folder.

 
```
Move-Item -Path "$LabRoot\Reports\notes.txt" -Destination "$LabRoot\Archive"
```
 
### 9) Rename Folders
Purpose: Rename a directory.

 
```
Rename-Item -Path "$LabRoot\Archive" -NewName "Archive_2025"
```
 
### 10) Rename Files
Purpose: Rename a file.

 
```
Rename-Item -Path "$LabRoot\Reports\readme.txt" -NewName "README_UPDATED.txt"
```
 
### 11) Retrieving Items
Purpose: List files/folders, optionally recursively or filtered.

List everything in the lab folder:

 
```
Get-ChildItem -Path $LabRoot
```
List only .txt files:

 
```
Get-ChildItem -Path $LabRoot -Recurse -Filter *.txt
```
Common use: Inventorying files for cleanup, auditing, or processing.

### 12) Check Folder Existence
Purpose: Confirm a folder exists before using it.

 
```
$FolderPath = "$LabRoot\Reports"
Test-Path -Path $FolderPath
```
Typical pattern:

 
```
if (-not (Test-Path "$LabRoot\Reports")) {
    New-Item -Path "$LabRoot\Reports" -ItemType Directory | Out-Null
}
```
### 13) Check File Existence
Purpose: Confirm a file exists before reading/copying/deleting.

 
```
$FilePath = "$LabRoot\Reports\README_UPDATED.txt"
Test-Path -Path $FilePath
```
Typical pattern:

 
```
if (Test-Path $FilePath) {
    Get-Content $FilePath
} else {
    "File not found: $FilePath"
}
```
### Optional Cleanup (End of Lab)
Deletes the entire safe lab folder:

 
```
Remove-Item -Path $LabRoot -Recurse -Force
```
(Use -WhatIf first if you want to preview.)


## Wildcards

### Overview
Wildcards are special characters used to represent one or more unknown characters in a string. In PowerShell, wildcards are commonly used to match file names, folder names, process names, and other text-based values.

Wildcards are simpler than regular expressions and are ideal for:

- File and folder operations
- Filtering output
- Searching by partial names
- Quick pattern matching

### Common Wildcard Characters
| Wildcard | Meaning | Example |
| -------- | ------- | ------- |
| * | Matches zero or more characters | *.txt |
| ? | Matches exactly one character | file?.txt |
| [] | Matches a range or set of characters | [a-c]*.txt |

### 1) The Asterisk *
#### Matches Zero or More Characters
``` 
Get-ChildItem *.txt
``` 
Lists all .txt files in the current directory.

#### Match Files That Start With a Pattern
``` 
Get-ChildItem report*
``` 
#### Match Files That Contain a Pattern
``` 
Get-ChildItem *log*
``` 

### 2) The Question Mark ?
Matches Exactly One Character
``` 
Get-ChildItem file?.txt
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

### 3) Character Sets and Ranges []
#### Match a Set of Characters
 
```
Get-ChildItem file[ab].txt
```
Matches:

``` 
filea.txt
fileb.txt
```
#### Match a Range of Characters
``` 
Get-ChildItem file[1-3].text 
```
Matches:

``` 
file1.txt
file2.txt
file3.txt 
```
#### Match Alphabet Ranges
```
Get-Process [r-s]*
```
Matches processes starting with R or S.

### Wildcards with Common Cmdlets
#### Get-ChildItem
 
```
Get-ChildItem C:\Logs\*.log
```
 
#### Remove-Item (Use Carefully)
 
```
Remove-Item *.tmp -WhatIf
```
Always use -WhatIf first to preview results.

#### Copy-Item
 
```
Copy-Item *.txt C:\Backup
```
 
#### Move-Item
 
```
Move-Item report*.csv C:\Archive
```

### Wildcards vs Regular Expressions
| Feature | Wildcards | Regex |
| ------- | --------- | ----- |
| Complexity | Simple | Advanced |
| Readability | High | Lower |
| Performance | Fast | Slower |
| Best for | File names, quick matching | Validation, parsing |

### Wildcards in Filters vs Pipelines
#### Using -Filter (Faster)
``` 
Get-ChildItem -Filter *.txt
``` 
 
#### Using Where-Object (More Flexible)
 
``` 
Get-ChildItem | Where-Object { $_.Name -like "*.txt" }
``` 
 
#### The -like and -notlike Operators
Wildcards are commonly used with -like.

 
``` 
"report2024.txt" -like "report*.txt"
 
"report2024.txt" -notlike "*.log"
``` 
 
#### Case Sensitivity
Wildcards in PowerShell are case-insensitive by default.

 
``` 
"FILE.txt" -like "*.txt"   # True
``` 
 
### Common Mistakes
- ❌ Using wildcards where regex is required
- ❌ Forgetting -WhatIf with destructive commands
- ❌ Confusing -like (wildcards) with -match (regex)

### Best Practices
- ✔ Use wildcards for file operations
- ✔ Use regex for validation or extraction
- ✔ Prefer -Filter for performance
- ✔ Test patterns before running destructive commands

## MyFirstPscript.ps1 
Save as MyFirstPscript.ps1

```
#Commenting out is now done with the hashtag

<#

You can now also have blocks of comments which can be multiple lines.

#>



#Prep - create a file called MyFirstPscript.ps1

#Place this inside it

$a = Read-Host "Enter your name"

Write-Host "Hello" $a



#Variables are defined in powershell by $

```

## MySecondPscript.ps1

```
#Writing a file

#Create a file called MySecondPscript.ps1

$a = "Hello World"

$a | out-file c:\admin\text.txt

#Redirectors working

Write-Host "Command Prompt"

dir > c:\admin\test1.txt



Write-Host "UNIX"

ls > c:\admin\test2.txt



Write-Host "PowerShell"

Get-ChildItem >> c:\admin\test2.txt 
```
In class example:
```
#Writing a file
#Create a file called MySecondPscript.ps1
 
$a = "Hello World"
$a | out-file c:\admin\ps1\test11.txt
 
#Redirectors working
Write-Host "Command Prompt"
dir > c:\admin\ps1\test111.txt
 
Write-Host "UNIX"
ls > c:\admin\ps1\test222.txt
 
Write-Host "PowerShell"
Get-ChildItem >> c:\admin\ps1\test222.txt
```

## FunWithBeeps.ps1 

```
[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(932,150)

Start-Sleep -m 150

[System.Console]::Beep(1047,150)

Start-Sleep -m 150

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[console]::Beep(699,150)

Start-Sleep -m 150

[System.Console]::Beep(740,150)

Start-Sleep -m 150

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(932,150)

Start-Sleep -m 150

[System.Console]::Beep(1047,150)

Start-Sleep -m 150

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(699,150)

Start-Sleep -m 150

[System.Console]::Beep(740,150)

Start-Sleep -m 150

[System.Console]::Beep(932,150)

[System.Console]::Beep(784,150)

[System.Console]::Beep(587,1200)

Start-Sleep -m 75

[System.Console]::Beep(932,150)

[System.Console]::Beep(784,150)

[System.Console]::Beep(554,1200)

Start-Sleep -m 75

[System.Console]::Beep(932,150)

[System.Console]::Beep(784,150)

[System.Console]::Beep(523,1200)

Start-Sleep -m 150

[System.Console]::Beep(466,150)

[System.Console]::Beep(523,150)
```

## Mega Collection of PowerShell Scripts
https://github.com/fleschutz/PowerShell 

## Briefing: .NET in PowerShell Overview
### Overview
PowerShell is built on top of .NET, Microsoft’s application framework.

This means PowerShell is not just a command shell, it is a full scripting language that can directly use .NET classes, methods, and properties.

### Key idea:

PowerShell commands return .NET objects, not plain text.

### What Is .NET?
.NET is a framework that provides:

- A large library of reusable classes
- Memory management and security
- Access to the operating system, files, networking, and hardware
PowerShell leverages these .NET libraries to perform tasks that would be difficult or impossible with traditional batch scripting.

### Why .NET Matters in PowerShell
Because PowerShell is built on .NET, it can:

- Work with objects instead of text
- Access system-level functionality
- Use advanced data types
- Call Windows APIs and system libraries directly
This is what makes PowerShell powerful for automation and administration.

### Accessing .NET in PowerShell
#### .NET Class Syntax
 
```
[Namespace.ClassName]
```
 
Example:

 
```
[System.DateTime]
```
 
#### Calling Static .NET Methods
 
```
[System.DateTime]::Now
```
What this does:

Returns the current date and time as a .NET object.

Common .NET Classes Used in PowerShell
#### 1) System.Console
Used for interacting with the console.

 
```
[System.Console]::Beep(800,200)
```
Use case: Sound alerts, demos, creative scripting.

#### 2) System.DateTime
Used for date and time operations.

 
```
[System.DateTime]::Now
 
[System.DateTime]::Today
```
Use case: Logging, scheduling, timestamps.

#### 3) System.IO.File
Used for file operations.

 
```
[System.IO.File]::Exists("C:\Temp\test.txt")
 
[System.IO.File]::ReadAllText("C:\Temp\test.txt")
```
Use case: File validation, reading configuration files.

#### 4) System.IO.Directory
Used for directory operations.

 
```
[System.IO.Directory]::Exists("C:\Temp")
 
[System.IO.Directory]::GetFiles("C:\Temp")
```
 
#### 5) System.Environment
Used to retrieve system information.

 
```
[System.Environment]::UserName
 
[System.Environment]::MachineName
```
Use case: Identifying the user or computer in scripts.

#### Objects, Properties, and Methods
PowerShell objects expose:

- Properties (data)
- Methods (actions)
Example:

``` 
$date = Get-Date
$date.Year
$date.AddDays(7)
``` 
Here:
- Year is a property
- AddDays() is a method

### PowerShell Cmdlets vs .NET Classes
| Feature | PowerShell Cmdlets | .NET Classes |
| ------- | ------------------ | ------------ |
| Ease of use | Easier | More advanced |
| Readability | High | Lower |
| Object handling | Native | Native |
| Flexibility | High | Very high |
| Best use | Administration | Advanced scenarios |

Best practice:

Use cmdlets first, then .NET when cmdlets don’t provide what you need.

### When to Use .NET Directly
- No cmdlet exists for the task
- You need advanced control or performance
- You are building reusable or complex logic
- You need direct access to system functionality

### CS118 Learning Concepts Demonstrated
| Concept | Explanation |
| Object-oriented scripting | Working with objects |
| .NET integration | Accessing system libraries |
| Properties & methods | Data vs behavior |
| Abstraction | | High-level scripting |
| Automation | Real-world administration |

### Safe Student Examples to Try
``` 
[System.Environment]::OSVersion
 
[System.DateTime]::Now.AddMinutes(10)
 
[System.IO.Directory]::GetCurrentDirectory()
```

### Key Takeaways for Students
- PowerShell is built on .NET
- PowerShell returns objects, not text
- .NET allows access to powerful system features
- Cmdlets are preferred, .NET is the backup plan
### One-sentence takeaway
PowerShell’s real power comes from .NET, which lets scripts interact with Windows using objects instead of text.

## Dates and Times 
### Overview
PowerShell provides built-in cmdlets and .NET methods to retrieve and modify the system date and time. These commands are commonly used in:

- System administration
- Logging and auditing
- Scripting and automation
- Troubleshooting time-sensitive issues
⚠ Important:

Setting the system date or time requires Administrator privileges and can affect system logs, authentication, and scheduled tasks.

### 1) Get System Date
#### Purpose
Retrieve the current system date.

#### Example Script
 
```
Get-Date
```
 
Example Output
 
```
Wednesday, January 15, 2026 10:32:45 AM
```
 
#### Get Only the Date (No Time)
 
```
(Get-Date).Date
```
 
#### Format the Date
 
```
Get-Date -Format "yyyy-MM-dd"
```
Output:

 
```
2026-01-15
```
 
#### Common Uses
- Timestamping logs
- Displaying today’s date in scripts
- Comparing dates



### 2) Set System Date
#### Purpose
Change the system date.

⚠ Requires PowerShell running as Administrator

Example Script
 
```
Set-Date -Date "01/20/2026"
```
 
#### Set Date and Time Together
 
```
Set-Date -Date "01/20/2026 09:00 AM"
```
 
#### Preview Change Without Applying (Safe Practice)
 
```
Set-Date -Date "01/20/2026" -WhatIf
```
 
#### Common Uses
- Lab testing
- Troubleshooting certificate or authentication issues
- Simulating time-based scenarios


### 3) Get System Time
#### Purpose
Retrieve the current system time.

Example Script
 
```
Get-Date -Format "HH:mm:ss"
```
Output:

 
10:32:45
 
#### Get Time in 12-Hour Format
 
```
Get-Date -Format "hh:mm tt"
```
Output:

 
10:32 AM
 
#### Common Uses
- Logging execution times
- Measuring script duration
- Displaying runtime information


### 4) Set System Time
#### Purpose
Modify the system time without changing the date.

⚠ Requires Administrator privileges

Example Script
 
```
Set-Date -Date (Get-Date "09:30 AM")
```
 
#### Set Time Using Current Date
 
```
$today = Get-Date -Format "MM/dd/yyyy"
Set-Date -Date "$today 14:00"
```
#### Preview the Change (Recommended)
 
```
Set-Date -Date "02:00 PM" -WhatIf
```
 
#### Common Uses
- Correcting clock drift
- Lab simulations
- Testing scheduled tasks

### Using .NET (Alternative Method)
PowerShell also allows access to .NET methods:

``` 
[System.DateTime]::Now
```
This retrieves the current date and time but does not change system settings.

### CS118 Safety Guidelines
- ✔ Prefer Get-Date for most scripts
- ✔ Use -WhatIf before setting date/time
- ✔ Never change date/time on production systems without approval
- ✔ Understand impacts on logs, security, and authentication


### Summary Table
| Operation | Cmdlet | Admin Required |
| --------- | ------ | -------------- |
| Get system date | Get-Date | No |
| Set system date | Set-Date | Yes |
| Get system time | Get-Date -Format | No |
| Set system time | Set-Date | Yes |

## MyThirdPscript.ps1 
```
# Create the 'MURPHY' directory

New-Item -ItemType Directory -Path "C:\admin\MURPHY"

# Create the 'LAW' directory

New-Item -ItemType Directory -Path "C:\admin\LAW"

# Create three files inside 'MURPHY'

New-Item -Path "C:\admin\MURPHY\RED.txt" -ItemType File

New-Item -Path "C:\admin\MURPHY\GREEN.txt" -ItemType File

New-Item -Path "C:\admin\MURPHY\BLUE.txt" -ItemType File

# Copy the files to the 'LAW' directory

Copy-Item -Path "C:\admin\MURPHY\*" -Destination "C:\Admin\LAW\"
```

## Working with CSV files 
### PowerShell Lab: Importing and Processing a CSV File
### Objective
In this lab, you will:

- Export file information to a CSV file
- Import that CSV file into PowerShell
- Use a foreach loop to process the data
- Display selected file properties to the screen
### Preparation
- Open PowerShell as Administrator
    - Start Menu → PowerShell → Right-click → Run as Administrator
- Set the execution policy (if required)
``` 
Set-ExecutionPolicy RemoteSigned -Scope Process
```
- (This applies only to the current session and is safe for labs.)
- Change to your working folder
```
cd C:\admin
```

### Step 1: Export File Information to a CSV
Run the following command to export file information from the current directory into a CSV file:

``` 
dir | Export-Csv example.csv -NoTypeInformation
```
This creates a file named example.csv in C:\admin.

### Step 2: Create the PowerShell Script
- Open a text editor
- Add the following code
- Save the file as TestingImport.ps1 in C:\admin

### TestingImport.ps1
```
Write-Host "Welcome to the demo of importing a CSV file in PowerShell"
Write-Host "---------------------------------------------------------"
 
$file = Import-Csv -Path "C:\admin\example.csv"
$i = 0
 
foreach ($f in $file) {
 
    if ($i -lt 10) {
 
        Write-Host "Base name is:" $f.BaseName
        Write-Host "Full name is:" $f.FullName
        Write-Host "Name is:" $f.Name
        Write-Host "Created date is:" $f.CreationTime
        Write-Host "Last modified date is:" $f.LastWriteTime
        Write-Host "Drive location is:" $f.PSDrive
        Write-Host "-----------------------------"
 
        $i++
    }
}
```

### Step 3: Run the Script
From PowerShell, run:

``` 
.\TestingImport.ps1
```
The script will display information for the first 10 files found in the directory.

How This Works
- Export-Csv converts PowerShell objects into a structured CSV file
- Import-Csv reads the file back into PowerShell as objects
- foreach loops through each row in the CSV
- $i -lt 10 limits output to the first 10 records
- Properties like BaseName, FullName, and CreationTime come from the file objects

### Key Concepts Used
| Concept | Purpose | 
| Export-Csv | Save object data to a file | 
| Import-Csv | Read structured data | 
| foreach | Loop through objects | 
| Variables | Store data and counters | 
| Execution Policy | Control script execution | 

## Call a powershell command from command shell or a batch file
### Using call in a Batch File
The call command in a Windows batch file is used to run another batch file or program from within the current batch file and then return execution back to the original script.

### Example: Calling One Batch File from Another
Assume you have two batch files:

- main.bat
- sub.bat

#### main.bat
``` 
@echo off
echo This is the main batch file.
echo Calling the sub batch file...
call sub.bat
echo Back in the main batch file.
pause
```
#### sub.bat
```
@echo off
echo This is the sub batch file.
```

### What Happens When You Run main.bat
- main.bat starts executing
- The call command runs sub.bat
- After sub.bat finishes, control returns to main.bat
Output
``` 
This is the main batch file.
Calling the sub batch file...
This is the sub batch file.
Back in the main batch file.
``` 
Important Note About call
- When calling another batch file, call is required
- Without call, execution will not return to the original batch file
- call is also useful when launching other scripts or programs and continuing execution

Running PowerShell from a Batch File
- You can launch PowerShell from a batch file using the powershell command and the -Command parameter.

### Example: Batch File Running a PowerShell Command
#### script.bat
``` 
@echo off
echo This is a batch file launching a PowerShell command.
powershell -Command "Write-Host 'Hello from PowerShell!'"
echo Batch file completed.
pause
``` 
#### Output
``` 
This is a batch file launching a PowerShell command.
Hello from PowerShell!
Batch file completed.
```
Notes
- The PowerShell command must be enclosed in quotes
- Use -Command (or -c) to pass commands directly
- This is useful for mixing legacy batch scripts with modern PowerShell commands

### Running a Batch File from PowerShell
There are two common ways to run a batch file from PowerShell.

#### Method 1: Using Start-Process (Recommended)

 
```
Start-Process -FilePath "C:\admin\main.bat" -NoNewWindow -Wait
```
Explanation:

- -NoNewWindow runs the batch file in the current console
- -Wait pauses PowerShell until the batch file finishes
#### Method 2: Calling the Batch File Directly
 
```
& "C:\Path\To\Your\Script.bat"
```
Explanation:

- The & call operator executes the batch file
- Runs in the current PowerShell session
- PowerShell automatically waits for completion

### Choosing the Right Method
| Scenario | Recommended Approach |
| -------- | -------------------- |
| Need to wait for completion | Start-Process -Wait |
| Simple execution | Call operator & |
| Control over window behavior | Start-Process |

### Quick Reference Summary
#### Call PowerShell from Batch
``` 
powershell -c Get-Process
```
#### Run Batch Script from PowerShell
```
Start-Process -FilePath "C:\admin\ScriptName.bat" -Wait 
```

### Key Takeaway
call allows batch scripts to work together, while PowerShell integration lets you modernize batch workflows without rewriting everything at once.

## My5thPscript.ps1

n the first class we created a script that would set the arguments run with the script as variables
```
echotest.bat red green blue:

echo %o

echo %1

echo %2

echo %3
```

The output of that script was"

```
echotest.bat

red

green

blue
```
===================================================

We can do similar work in powershell. Below illustrated that powershell is an object oriented scripting language. Each object has properties. Similar to when we use the CSV files the properties are each column. Here we have properties for the arguments plus this illustrates an ARRAY which is a list of values in a programming language.
```
# My5thPscript.ps1

# Check if there is at least one argument

if ($args.Length -eq 0) {

  Write-Host "Error: Missing arguments. Please provide at least one argument."

  exit

}

# Get the script name from $MyInvocation

$scriptName = $MyInvocation.MyCommand.Name



# Write the script name

Write-Host "Script Name: $scriptName"



# Loop through all arguments

foreach ($arg in $args) {

  Write-Host $arg

}



# Check if there is at least two arguments

if ($args.Length -lt 2) {

  Write-Host "Error: Missing arguments. Please provide at least two arguments."

  exit

}



# Get the second argument

$secondArgument = $args[1]



# Write the second argument

Write-Host "Second Argument: $secondArgument"



# Write the First Argument

Write-Host $args[0]
```

Here is what is happening:

- Check if any arguments were provided when the script was run.
- Display the script name.
- Loop through and display all the arguments.
- Check if at least two arguments were provided.
- Display the second and first arguments specifically.


### Step-by-Step Breakdown

#### 1. Argument Check #1
```
if ($args.Length -eq 0) {
  Write-Host "Error: Missing arguments. Please provide at least one argument."
  exit
}
```
 
- Checks if no arguments were passed.
- If so, it prints an error and exits the script.
#### 2. Get and Display Script Name
```
$scriptName = $MyInvocation.MyCommand.Name
Write-Host "Script Name: $scriptName"
```
- Uses $MyInvocation to get the name of the running script.
- Displays it.
#### 3. Loop Through All Arguments
```
foreach ($arg in $args) {
  Write-Host $arg
}
```
- Iterates through all arguments provided.
- Prints each one individually.
#### 4. Argument Check #2
```
if ($args.Length -lt 2) {
  Write-Host "Error: Missing arguments. Please provide at least two arguments."
  exit
}
```
- Checks if there are fewer than two arguments.
- If so, it prints an error and exits.
#### 5. Access and Display Specific Arguments
```
powershell
CopyEdit
$secondArgument = $args[1]
Write-Host "Second Argument: $secondArgument"
Write-Host $args[0]
```
- Gets the second argument (index 1) and stores it in a variable.
- Prints the second and then the first argument (index 0).
#### ✅ Summary
This script ensures that it receives enough input to continue, shows the script’s own name, prints all inputs, and highlights the first two arguments individually. It's a basic demonstration of:
- Input validation
- Script introspection
- Argument parsing and indexing

## Arrays 

```
$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123
 
write-host("Print all the array elements")
$myList
 
write-host("Get the length of array")
$myList.Length
 
write-host("Get Second element of array")
$myList[1]
 
write-host("Get partial array")
$subList = $myList[1..3]
 
write-host("print subList")
$subList
 
write-host("using for loop")
for ($i = 0; $i -le ($myList.length - 1); $i += 1) {
  $myList[$i]
}
 
write-host("using forEach Loop")
foreach ($element in $myList) {
  $element
}
 
write-host("using while Loop")
$i = 0
while($i -lt 4) {
  $myList[$i];
  $i++
}
 
write-host("Assign values")
$myList[1] = 10
$myList 
```
output:
```
Print all the array elements
5.6
4.5
3.3
13.2
4
34.33
34
45.45
99.993
11123
Get the length of array
10
Get Second element of array
4.5
Get partial array
print subList
4.5
3.3
13.2
using for loop
5.6
4.5
3.3
13.2
4
34.33
34
45.45
99.993
11123
using forEach Loop
5.6
4.5
3.3
13.2
4
34.33
34
45.45
99.993
11123
using while Loop
5.6
4.5
3.3
13.2
Assign values
5.6
10
3.3
13.2
4
34.33
34
45.45
99.993
11123
```
```
$myList = @(0..4)
 
write-host("Print array")
$myList
 
$myList = @(0..4)
 
write-host("Assign values")
$myList[1]  = 10
$myList
```

output:
```
Print array
0
1
2
3
4
Assign values
0
10
2
3
4
```

## Starting and Stopping Processes

### Starting Stuff

```
#Open PowerShell

start-process notepad

#This will launch Notepad

#If you change it, you can have it open a file. Make a file called c:\admin\example.txt

start-process notepad c:\admin\example.txt

#or you could

invoke-item c:\admin\example.txt

#You could read in a variable for a file 

# Prompt the user for input

$userInput = Read-Host "Enter file to open:"

invoke-item $userInput

# Let's switch it up to open a website

Start-Process www.nfl.com

#Or

start-process firefox www.nfl.com
```

### Stopping a process

```
# Get the Firefox process(es)

$firefoxProcesses = Get-Process -Name "firefox"



# Check if Firefox process(es) exist

if ($firefoxProcesses) {

  # Stop the Firefox process(es)

  Stop-Process -Name "firefox" -Force

  Write-Output "Firefox process stopped successfully."

} else {

  Write-Output "No Firefox process found."

}
```

This script first uses Get-Process to retrieve the " firefox " process (es). Then, it checks if any Firefox processes are running. If found, it uses Stop-Process to stop the Firefox process(es) forcefully. The -Force parameter is used to forcefully terminate the process without prompting for confirmation.

Remember that forcibly terminating a process can result in data loss or other issues, so use it judiciously. If you prefer a more graceful approach, consider using the browser's built-in mechanisms to close or exit.

Adjust the process name and details based on your specific environment and requirements.

### Stopping Services

To stop the Print Spooler service using PowerShell, you can use the Stop-Service cmdlet. Here is an example:

```
# Stop the Print Spooler service

Stop-Service -Name "Spooler" -Force



# Check if the service is stopped

$serviceStatus = Get-Service -Name "Spooler"

if ($serviceStatus.Status -eq 'Stopped') {

  Write-Output "Print Spooler service stopped successfully."

} else {

  Write-Output "Failed to stop the Print Spooler service."

}
```

In this example, the Stop-Service cmdlet stops the Print Spooler service (Spooler). The -Force parameter is used to forcefully stop the service without prompting for confirmation.

After stopping the service, it checks the status of the service using Get-Service and outputs a message based on whether the service is stopped or not.

Remember that stopping the Print Spooler service will temporarily halt print operations on your system. Be sure to start the service again when needed using Start-Service:

```
# Start the Print Spooler service

Start-Service -Name "Spooler"

Write-Output "Print Spooler service started."

```
Adjust the service name and details based on your specific environment and requirements.

## Working with Network Drives

To map the network drive \\fileserver1\cs118 to the letter A: using PowerShell, you can use the New-PSDrive cmdlet or net use. However, note that A: and B: are traditionally reserved for floppy drives, so many systems restrict their use. If you're sure you want to use A:, here’s how:

### Option 1: Using New-PSDrive (PowerShell-native)
```
New-PSDrive -Name A -PSProvider FileSystem -Root "\\fileserver1\cs118" -Persist
```
- -Name A specifies the drive letter.
- -PSProvider FileSystem tells it you're mapping a file system.
- -Root is the network path.
- -Persist makes it available in File Explorer and across sessions.
### Option 2: Using net use (more traditional)
```
net use A: \\fileserver1\cs118 /persistent:yes
```
- /persistent:yes ensures the mapping persists after reboot.
### Important Notes:
- If you encounter an error using A:, try a different drive letter (e.g., Z:) unless you're on a system where A: is confirmed available.
- If credentials are required:
```
net use A: \\fileserver1\cs118 /user:DOMAIN\username YourPassword /persistent:yes
```

## Playing with Printers 
To add a network printer in PowerShell, you can use the Add-Printer powershell function along with the -ConnectionName parameter. Here's an example to add a network printer called \\PAPERCUTPQ\w322-ptr01:
```
# Map network printer and set as default
$printerPath = "\\PAPERCUTPQ\w322-ptr01"
 
try {
    # Add the network printer
    Add-Printer -ConnectionName $printerPath
    Write-Host "Successfully mapped printer: $printerPath" -ForegroundColor Green
    
    # Set as default printer
    (Get-Printer -Name $printerPath).SetDefaultPrinter
    Write-Host "Set as default printer" -ForegroundColor Green
}
catch {
    Write-Host "Error: $_" -ForegroundColor Red
}

```
In this script, the Add-Printer function is used with the -ConnectionName parameter to add a printer by specifying its network path. The Get-Printer cmdlet is then used to check if the printer has been successfully added and a corresponding message has been outputted.

Make sure to replace "\\PAPERCUTPQ\w322-ptr01" with the actual network path of your printer. Adjust the printer name and details based on your specific environment and requirements.

## Environmental Variables In Powershell

You can list the environmental variables in PowerShell using the following command:

Get-ChildItem Env:

This command will display a list of all the environmental variables on your system along with their values.

Here are a few common environmental variables you might find when you run this command:

- `PATH`: Contains a list of directories where executable files are located. It is used to find and run executables.
- `USERPROFILE`: Points to the user's profile folder.
- `SystemRoot`: Refers to the Windows system directory (typically `C:\Windows`).
- `TEMP` and `TMP`: Point to temporary directories used for storing temporary files.
- `USERNAME`: Stores the username of the currently logged-in user.
- `COMPUTERNAME`: Contains the name of the computer.
- `OS`: Describes the name of the operating system.
- `PSModulePath`: Lists the directories where PowerShell modules are located.
- `ProgramFiles` and `ProgramFiles(x86)`: Contain the path to the Program Files directory and the Program Files (x86) directory for 32-bit applications on a 64-bit system.

The list of environmental variables can be quite extensive, and it may include various variables depending on your system configuration and installed software. You can use the `Get-ChildItem Env:` command to explore the complete list on your system via file.

Get-ChildItem Env: > env.doc



## Special Variables

### Overview
PowerShell includes a set of automatic variables (also called special variables) that are created and maintained by PowerShell itself. These variables provide information about:

- The current session
- Script execution
- Errors and events
- The pipeline
- The PowerShell environment
Key idea for students:
- You do not create these variables. PowerShell creates and updates them automatically.

### Pipeline and Execution Context Variables
#### $_ and $PSItem
Represents the current object in the pipeline. These two variables are equivalent.

```
Get-Process | Where-Object { $_.CPU -gt 100 }
```
 
Used whenever you process items one at a time in a pipeline.

#### $FOREACH
Represents the enumerator of a ForEach loop.

 
```
foreach ($item in 1..3) {
    $ForEach.Current
}
```
#### $INPUT
Contains all input passed to a function or script through the pipeline.

 
```
function Test-Input {
    $input
}
1,2,3 | Test-Input
```
### Execution Status and Error Handling
#### $?
Indicates whether the last command succeeded.

- $true = success
- $false = failure
 
```
Get-Item C:\Windows
$?
```
#### $LASTEXITCODE
Stores the exit code of the last external (non-PowerShell) program.

 
```
ping localhost
$LASTEXITCODE
```
#### $ERROR
An array containing the most recent error objects.

 
```
$ERROR[0]
```
 
#### $STACKTRACE
Shows a stack trace for the most recent error.

#### $NULL
Represents a null or empty value.

 
```
$value = $null
```
Used to test for missing or undefined data.

### Boolean and Logical Variables
#### $TRUE and $FALSE
Boolean values used in scripts and conditions.

 
```
if ($true) { "This always runs" }
```
 
### Script and Invocation Information
#### $MyInvocation
Contains information about how a script or function was called.

Useful properties:

- $MyInvocation.MyCommand
- $MyInvocation.PSCommandPath
- $MyInvocation.PSScriptRoot
#### $PSSCRIPTROOT
The directory where the current script is located.

```
$PSScriptRoot
```
 
#### $PSCOMMANDPATH
The full path of the script currently running.

#### $PROFILE
The path to the current user’s PowerShell profile script.

### Environment and Host Information
#### $HOME
The user’s home directory.

 
```
$HOME
```
 
#### $HOST
Represents the PowerShell host application (Console, ISE, VS Code).

 
```
$HOST.Name
```
 
#### $PSHOME
The installation directory of PowerShell.

#### $SHELLID
Identifies the current PowerShell shell.

#### $PID
The process ID of the current PowerShell session.

 
```
$PID
```
 
### Culture and Localization
#### $PSCULTURE
The system culture (dates, numbers).

#### $PSUICULTURE
The user interface culture (language).

#### $PSVERSIONTABLE
A read-only table with PowerShell version information.

 
```
$PSVersionTable
```
 
### Parameter and Argument Handling
#### $ARGS
Contains undeclared parameters passed to a script or function.

 
```
Write-Host $args
```
 
### Comparison and Pattern Matching
#### $MATCHES
Used with the -match and -notmatch operators to store regex matches.

 
```
"CS118" -match "\d+"
$Matches[0]
```
#### Event Handling Variables
These variables are populated only when working with events.

- $EVENT
- $EVENTARGS
- $EVENTSUBSCRIBER
- $SENDER
- $PSSENDERINFO
Used primarily in advanced scripting and automation.

### Debugging and Execution Context
#### $EXECUTIONCONTEXT
Provides information about the PowerShell execution engine.

#### $PSDEBUGCONTEXT
Contains debugging information when debugging is enabled.

#### $NESTEDPROMPTLEVEL
Indicates how deeply nested the current prompt is.

Token Variables (Rarely Used)
#### $$
Last token in the last line entered.

#### $^
First token in the last line entered.

These are rarely used and mostly of historical interest.

#### $THIS
Used inside script blocks that define script methods or properties.

Refers to the object being extended.


### Summary Table (High-Value Variables for CS118)
| Variable | Purpose |
| -------- | ------- |
| $_ / $PSItem | Current pipeline object
| $? | Success/failure of last command |
| $ERROR | Recent errors |
| $LASTEXITCODE | External program exit code |
| $HOME | User home directory |
| $PID | Process ID |
| $PSVERSIONTABLE | PowerShell version info |
| $PSSCRIPTROOT | Script directory |
| $NULL | Empty value |

## Working with the Registry

The PowerShell Registry provider lets you get, add, change, clear, and delete registry keys, entries, and values in PowerShell.

The Registry drives are a hierarchical namespace containing the registry keys and subkeys on your computer. Registry entries and values are not components of that hierarchy. Instead, they are properties of each of the keys.

Here is a simple example of a PowerShell script that works with the Windows Registry. This script creates a new registry key and sets a string value within it:

```
# Define the registry key path

$registryKeyPath = "HKCU:\Software\MyRegistryKey"



# Define the value name and data

$valueName = "MyStringValue"

$valueData = "Hello, Registry!"



# Check if the registry key already exists

if (-not (Test-Path $registryKeyPath)) {

  # Create the registry key if it does not exist

  New-Item -Path $registryKeyPath -Force

  Write-Host "Registry key created: $registryKeyPath"

}



# Set the string value in the registry key

Set-ItemProperty -Path $registryKeyPath -Name $valueName -Value $valueData

Write-Host "Registry value set: $valueName=$valueData"
```

This script uses the New-Item cmdlet to create a new registry key at the specified path (HKCU:\Software\MyRegistryKey). It then uses the Set-ItemProperty cmdlet to set a string value (MyStringValue) within the registry key.

Remember to run PowerShell scripts with appropriate permissions, and be cautious when working with the registry as it contains important system information. Always back up the registry before making changes.

## If Statements

Here's an example of a simple if statement in PowerShell:

```
# Example variable

$number = 42



# Check if the number is greater than 50

if ($number -gt 50) {

  Write-Host "The number is greater than 50."

} else {

  Write-Host "The number is not greater than 50."

}
```

In this example, the script defines a variable $number with the value 42. The if statement checks whether the value of $number is greater than 50. If it is, it prints a message saying "The number is greater than 50." If the condition is not met (i.e., the number is not greater than 50), it prints "The number is not greater than 50."

You can modify the conditions and messages based on your specific use case.

```
# Define the file path
$filePath = "C:\Admin\example.txt"
 
 
# Check if the file exists
if (Test-Path $filePath) {
    Write-Output "The file exists."
} else {
    Write-Output "The file does not exist."
}
```



## Switch Statement
Here's an example of a PowerShell script that uses a switch statement with Read-Host to ask the user for input:
```
# Prompt the user for input

$userInput = Read-Host "Enter a fruit name"



# Use a switch statement to handle different cases

switch ($userInput.ToLower()) {

  "apple" {

    Write-Host "You selected an apple."

  }

  "banana" {

    Write-Host "You selected a banana."

  }

  "orange" {

    Write-Host "You selected an orange."

  }

  default {

    Write-Host "You selected something else or an invalid input."

  }

}
```

In this example, the script prompts the user to enter a fruit name using Read-Host. The switch statement then checks the value entered by the user and performs different actions based on the input. The default case is executed if none of the specific cases match the user input.

Note: I added .ToLower() to ensure case-insensitive comparison so that "Apple," "apple," and "APPLE" are treated as the same input. You can adjust the cases and actions based on your specific requirements.

```
# ===== SECTION 1: Get the Computer Name =====
# This retrieves the name of the computer running the script
$computerName = $env:COMPUTERNAME
Write-Host "Computer Name: $computerName" -ForegroundColor Cyan
 
 
# Explanation:
# - $env:COMPUTERNAME is an environment variable that stores the computer's name
# - We save it to the $computerName variable so we can use it later
# - Write-Host displays a message on screen
# - -ForegroundColor Cyan makes the text appear in cyan (light blue) color
 
 
 
 
# ===== SECTION 2: Match Computer Name to Printer (SWITCH Statement) =====
$printerPath = switch -Wildcard ($computerName) {
    "WL322*" { "\\PAPERCUTPQ\w322-ptr01" }
    "WL320*" { "\\PAPERCUTPQ\w320-ptr01" }
    "WL422*" { "\\PAPERCUTPQ\w422-ptr01" }
    default  { 
        Write-Host "No printer mapping found for this computer name" -ForegroundColor Yellow
        exit
    }
}
 
 
# Explanation:
# - switch is like a multi-way if statement - it checks multiple conditions
# - -Wildcard allows us to use the * symbol (asterisk means "anything after this")
# - Each line checks if the computer name matches a pattern:
#     * "WL322*" means "starts with WL322 followed by anything"
#     * If it matches, it returns the printer path in the curly braces { }
# - default runs if none of the patterns match
# - exit stops the script if no match is found
# - The result (printer path) is stored in $printerPath variable
 
 
 
 
Write-Host "Mapping printer: $printerPath" -ForegroundColor Cyan
# This displays which printer we're about to map
 
 
 
 
# ===== SECTION 3: Error Handling with Try/Catch =====
try {
    # Code inside "try" is attempted first
    # If any errors occur, it jumps to the "catch" block
    
    # ===== SECTION 4: Add the Printer =====
    Add-Printer -ConnectionName $printerPath
    Write-Host "Successfully mapped printer: $printerPath" -ForegroundColor Green
    
    # Explanation:
    # - Add-Printer is a PowerShell command that adds a network printer
    # - -ConnectionName specifies the network path to the printer
    # - If successful, we display a green success message
    
    
    # ===== SECTION 5: Set as Default Printer =====
    rundll32 printui.dll,PrintUIEntry /y /n "$printerPath"
    Write-Host "Set as default printer" -ForegroundColor Green
    
    # Explanation:
    # - rundll32 runs a Windows system function
    # - printui.dll is the Windows Print User Interface library
    # - PrintUIEntry is the function we're calling
    # - /y means "set as default printer"
    # - /n specifies the printer name
    # - This is a reliable Windows method to set default printers
}
catch {
    # This block only runs if an error occurred in the "try" block
    Write-Host "Error: $_" -ForegroundColor Red
    
    # Explanation:
    # - catch captures any errors from the try block
    # - $_ is a special variable that contains the error message
    # - We display the error in red so it's easy to spot
}
```

## Operators

### Arithmetic Operators
Arithmetic operators are used for mathematical calculations, similar to standard algebra.

Example Setup
```
 
$A = 10
$B = 20 
```


| Operator | Description | Example | Result |
| -------- | ----------- | ------- | ------ |
| + | Addition | $A + $B | 30 |
| - | Subtraction | $A - $B | -10 |
| * | Multiplication | $A * $B | 200 |
| / | Division | $B / $A | 2 |
| % | Modulus (remainder) | $B % $A | 0



### Comparison Operators
Comparison operators are used to compare two values. They return Boolean values (True or False).

Example Setup
``` 
$A = 10
$B = 20
```


| Operator | Description | Example | Result |
| -------- | ----------- | ------- | ------ |
| -eq | Equals | $A -eq $B | False |
| -ne | Not equal | $A -ne $B | True |
| -gt | Greater than | $B -gt $A | True |
| -ge | Greater than or equal | $B -ge $A | True |
| -lt | Less than | $B -lt $A | False |
| -le | Less than or equal | $B -le $A | False |

Common use:
``` 
if ($A -lt $B) {
    "A is smaller than B"
}
```
### Assignment Operators
Assignment operators are used to assign or modify variable values.


Example Setup
``` 
$A = 10
$B = 20
```
| Operator | Description | Example | Result |
| -------- | ----------- | ------- | ------ |
| = | Assign value | $C = $A + $B | $C = 30 |
| += | Add and assign | $C += $A | $C = $C + $A |
| -= | Subtract and assign | $C -= $A | $C = $C - $A |

Example:

``` 
$count = 5
$count += 2
$count
``` 

### Logical Operators
Logical operators are used to combine conditions or reverse logical values.

Example Setup
``` 
$A = $true
$B = $false
```

| Operator | Description | Example | Result |
| -------- | ----------- | ------- | ------ |
| -and | Logical AND | $A -and $B | False |
| -or | Logical OR | $A -or $B | True |
| -not | Logical NOT | -not $A | False |
Example:

``` 
if (($A -eq $true) -and ($B -eq $false)) {
    "Condition met"
}
```


### Redirection Operators
Redirection operators control where output goes.

| Operator | Description | Example |
| -------- | ----------- | ------- |
| > | Redirect output (overwrite) | dir > files.txt |
| >> | Redirect output (append) | dir >> files.txt |

Example:

``` 
Get-Process > processlist.txt
``` 

### Split and Join Operators
These operators work with strings and arrays.

#### -split
Splits a string into an array.

```
"red,blue,green" -split ","
```
#### -join
Joins array elements into a string.

```
$colors = "red","blue","green"
$colors -join ", "
```


### Type Operators
Type operators check or change data types.


| Operator | Description | Example |
| -------- | ----------- | ------- |
| -is | Checks object type | $A -is [int] |
| -as | Converts type | "123" -as [int] |

### Unary Operators
Unary operators act on a single value.


| Operator | Description | Example |
| -------- | ----------- | ------- |
| ++ | Increment | $A++ |
| -- | Decrement | $A-- |
| -not | Logical NOT | -not $true |


### Putting It Together: Real Example
``` 
$numbers = 1..10
 
$numbers |
Where-Object { $_ % 2 -eq 0 } |
Measure-Object -Count
```
What this does:

- Uses arithmetic (%)
- Uses comparison (-eq)
- Uses pipeline logic
- Counts even numbers

## Creating an Alias

You can create an alias in PowerShell using the `New-Alias` cmdlet. An alias is a shorthand name for a cmdlet or command. Here is an example of creating an alias for the `Get-ChildItem` cmdlet:

```
# Create an alias for Get-ChildItem

New-Alias -Name Grizzly -Value Get-ChildItem



# Use the alias to list items in the current directory

Grizzly
```

In this example:



1. The `New-Alias` cmdlet is used to create an alias named `ls` for the `Get-ChildItem` cmdlet.

2. After creating the alias, you can use `ls` as a shorthand for `Get-ChildItem`.



Aliases help create shortcuts or use familiar command names. However, using them judiciously is essential to avoid confusion and maintain code readability. You can use the' Get-Alias' cmdlet to see a list of all aliases in your PowerShell session.

## Creating and Calling a Function



Below is an example of creating a simple function in PowerShell and then calling that function:

```
# Define a function that adds two numbers

function Add-Numbers {

  param(

    [int]$num1,

    [int]$num2

  )



  $sum = $num1 + $num2

  return $sum

}



# Call the function with specific values

$result = Add-Numbers -num1 5 -num2 7



# Display the result

Write-Host "The sum is: $result"

```


In this example:

- The Add-Numbers function is defined, which takes two parameters ($num1 and $num2), adds them together, and returns the result.
- The function is called by providing parameter values (-num1 5 -num2 7).
- The result returned by the function is stored in the $result variable.
- Finally, the script outputs the result using Write-Host.
When you run this script, it should display:
```
The sum is: 12
```
Feel free to modify the function and its parameters based on your needs. Functions in PowerShell allow you to encapsulate code for reuse and maintainability.


## For Loop


Here's an example of a for loop in PowerShell that iterates through a range of numbers:
```
# Example for loop to iterate from 1 to 5

for ($i = 1; $i -le 5; $i++) {

  Write-Host "Current value: $i"

}
```
In this example, the for loop initializes a variable $i with the value 1. The loop continues as long as $i is less than or equal to 5, and after each iteration, $i is incremented by 1 ($i++). Inside the loop, it uses Write-Host to print the current value of $i.

## ForEach Loop

The foreach loop in PowerShell is used to iterate through each item in a collection, such as an array or a list. Here's an example using a foreach loop with an array of strings:
```
# Example array of strings

$fruits = @("Apple", "Banana", "Orange", "Grapes", "Mango")



# Use foreach loop to iterate through each element in the array

foreach ($fruit in $fruits) {

  Write-Host "Current fruit: $fruit"

}
```
In this example, the foreach loop iterates through each element in the $fruits array. The loop variable $fruit takes on the value of each element in turn, and Write-Host is used to print the current value of $fruit.

## For Loop versus ForEach Loop
In PowerShell, both for and foreach are loop constructs, but they have some differences in terms of syntax and use cases.

### Syntax:

for Loop:
```
for ($i = 1; $i -le 5; $i++) {

  # Loop body

}
```
foreach Loop:
```
$array = @(1, 2, 3, 4, 5)

foreach ($element in $array) {

  # Loop body

}
```

Use Cases:

for Loop:

- Typically used when you need to iterate a specific number of times.
- Useful for iterating over a numeric range or sequence.
- Allows fine control over the loop initialization, condition, and iteration.

foreach Loop:

- Primarily used for iterating through the elements of a collection (array, hash table, etc.).
- Automatically iterates over each element in the collection without explicitly specifying a range or condition.
===================================
Loop Variable:

for Loop:

- Requires manual declaration and management of a loop variable.
- The loop variable is explicitly defined in the loop header.


foreach Loop:

- Uses a loop variable that automatically takes on the values of elements in the collection during each iteration.
- The loop variable is defined implicitly in the loop header.


In summary, choose between for and foreach based on your specific needs. If you need to iterate a specific number of times or have fine control over the loop conditions, use for. If you are iterating through elements in a collection, use foreach. Often, the choice depends on the nature of the data you are working with and the requirements of your script or program.

## While Loop

The while loop in PowerShell is used to execute a code block repeatedly as long as a specified condition is true. Here is a simple example of a while loop:
```
# Initialize a counter variable

$counter = 1



# Define the while loop with a condition

while ($counter -le 5) {

  Write-Host "Current value: $counter"

}

   

  # Increment the counter

  $counter++

}
```
All together:

```
$counter = 1

while ($counter -le 5) {
 Write-Host "Current value: $counter"
 $counter++
}
```
In this example, the while loop executes the code block if the condition $counter -le 5 (counter is less than or equal to 5) is true. Inside the loop, it uses Write-Host to print the current value of the counter and then increments the counter using $counter++.

This will output:
```
Current value: 1

Current value: 2

Current value: 3

Current value: 4

Current value: 5
```

Make sure to include logic within the loop to make the condition false, preventing an infinite loop eventually. In this example, the counter is incremented with each iteration, ensuring that the loop will exit when the counter exceeds 5.

================================================================

An example:

```
$n = 5

while ( $n -gt 0 ) {

 $n

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(932,150)

Start-Sleep -m 150

[System.Console]::Beep(1047,150)

Start-Sleep -m 150

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[console]::Beep(699,150)

Start-Sleep -m 150

[System.Console]::Beep(740,150)

Start-Sleep -m 150

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(932,150)

Start-Sleep -m 150

[System.Console]::Beep(1047,150)

Start-Sleep -m 150

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(784,150)

Start-Sleep -m 300

[System.Console]::Beep(699,150)

Start-Sleep -m 150

[System.Console]::Beep(740,150)

Start-Sleep -m 150

[System.Console]::Beep(932,150)

[System.Console]::Beep(784,150)

[System.Console]::Beep(587,1200)

Start-Sleep -m 75

[System.Console]::Beep(932,150)

[System.Console]::Beep(784,150)

[System.Console]::Beep(554,1200)

Start-Sleep -m 75

[System.Console]::Beep(932,150)

[System.Console]::Beep(784,150)

[System.Console]::Beep(523,1200)

Start-Sleep -m 150

[System.Console]::Beep(466,150)

[System.Console]::Beep(523,150)

 $n--

}


```



## Do While Loop
The do while loop in PowerShell is similar to the while loop, but it ensures that the loop body is executed at least once before the condition is checked. Here is an example of a do while loop:

```
# Initialize a counter variable

$counter = 1



# Define the do while loop

do {

  Write-Host "Current value: $counter"

   

  # Increment the counter

  $counter++

} while ($counter -le 5)


```

In this example, the loop body is executed at least once, and then the condition $counter -le 5 is checked. If the condition is true, the loop continues to execute. The loop will keep running until the condition becomes false.

This will output the same result as the previous example:

```
Current value: 1

Current value: 2

Current value: 3

Current value: 4

Current value: 5


```

The primary difference between while and do while is that do while ensures the loop body is executed at least once, whereas a while loop may skip the loop body altogether if the initial condition is false.

## No Until Loop in PowerShell

In PowerShell, there isn't a specific until loop keyword, but you can achieve the functionality of an "until" loop using a do while loop where the condition is the opposite of what you would use in a traditional "until" loop. Here's an example:
```
# Example of an "until" loop using a "do while" loop

$counter = 1



do {

  Write-Host "Current value: $counter"

   

  # Increment the counter

  $counter++

} while ($counter -le 5)
```
In this example, the loop will continue to execute until the condition $counter -le 5 becomes false. It is essentially behaving as an "until" loop where the loop continues until the condition is not true.

This will output the following result:
```
Current value: 1

Current value: 2

Current value: 3

Current value: 4

Current value: 5
```
Feel free to adapt the loop body and condition to fit your specific requirements.


## Do Until

Repeats a block of code until a specified condition becomes true.

Example:
```
$counter = 1

do {

  # Loop body

  $counter++

} until ($counter -gt 5)
```

## Powershell Arrays

PowerShell provides a built-in data structure called an array, which stores a sequential collection of elements. An array can hold values of any type, including numbers, strings, objects, or even other arrays.

Instead of creating many individual variables (for example number0, number1, number2), you can use a single array variable and access its elements by index.

```
$numbers[0]
$numbers[1]
$numbers[2]
```

Arrays make scripts cleaner, more scalable, and easier to maintain.

### Declaring Array Variables

#### Basic Array Declaration

You can create an array by separating values with commas:

```
$A = 1, 2, 3, 4
```
You can also create an array using a range operator:

```
$A = 1..4
```

#### Typed Arrays

By default, PowerShell arrays are of type System.Object[]. You can explicitly specify a type if needed.

```
[int32[]]$intA = 1500, 2230, 3350, 4000
```

#### Checking the Array Type
```
$A = 1, 2, 3, 4
$A.GetType()
```
Result (simplified):

```
Object[]
```
This shows the array is a collection of objects.


#### Accessing Array Elements
PowerShell arrays use zero-based indexing, meaning the first element is at index 0.


```
$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123
```
| Index | Value |
| ----- | ----- |
| 0 | 5.6 |
| 1 | 4.5 |
| 2 | 3.3 |
| 9 | 11123 |

#### Examples
```
$myList[0]    # First element
$myList[1]    # Second element
```

### Processing Arrays
Arrays are commonly processed using for, foreach, or while loops.

#### Display All Elements

```
Write-Host "Print all the array elements"
$myList
```

#### Get Array Length
``` 
Write-Host "Get the length of array"
$myList.Length
```


#### Get a Specific Element
``` 
Write-Host "Get second element of array"
$myList[1]
```

#### Get a Sub-Array (Slice)
``` 
Write-Host "Get partial array"
$subList = $myList[1..3]
$subList
```

### Looping Through Arrays

#### Using a for Loop
 
```
Write-Host "Using for loop"
for ($i = 0; $i -lt $myList.Length; $i++) {
    $myList[$i]
}
```

#### Using a foreach Loop (Most Common)
``` 
Write-Host "Using foreach loop"
foreach ($element in $myList) {
    $element
}
```

#### Using a while Loop
``` 
Write-Host "Using while loop"
$i = 0
while ($i -lt 4) {
    $myList[$i]
    $i++
}
```

#### Modifying Array Elements
You can assign a new value to an existing array index:

``` 
Write-Host "Assign values"
$myList[1] = 10
$myList
```
This replaces the value at index 1.

### Array Method Examples

#### Creating an Array with @()
``` 
$myList = @(0..4)
```

#### Printing the Array
```
Write-Host "Print array"
$myList
```

#### Modifying an Element
``` 
Write-Host "Assign values"
$myList[1] = 10
$myList
```
Result:
```
0
10
2
3
4
```

### Key Points for Students
- Arrays store multiple values in one variable
- Array indexes start at 0
- .Length returns the number of elements
- Arrays are commonly processed with foreach
- PowerShell arrays are object-based
- You can easily slice, loop, and modify arrays
### When to Use Arrays
- Working with lists of files
- Processing command output
- Repeating operations
- Storing related values together
### One-sentence takeaway
Arrays allow PowerShell scripts to handle collections of data efficiently using indexed values and loops.

## PowerShell Hashtables

A hashtable in PowerShell is a data structure that stores key/value pairs.

Each key uniquely identifies a value, allowing fast lookup and organized data storage.

Unlike arrays, which use numeric indexes, hashtables use named keys, making code easier to read and maintain.

```
$student["Name"]
$student["Course"]
```
Hashtables are commonly used for:
- Configuration settings
- Lookups
- Grouped related data
- Structured script output

### Declaring and Creating Hashtables
#### Basic Hashtable Syntax

```
$student = @{
    Name   = "Owen"
    Course = "CS118"
    Grade  = 95
}
```
- Keys appear on the left
- Values appear on the right
- Keys are usually strings or numbers

#### Accessing Values by Key

```
$student["Name"]
$student["Grade"]
```

#### Displaying the Entire Hashtable
```
$student
```

### Adding and Updating Hashtable Entries
#### Add a New Key/Value Pair
```
$student["Status"] = "Active"
```

#### Update an Existing Value
``` 
$student["Grade"] = 98
```
### Removing Entries from a Hashtable
#### Remove a Key
``` 
$student.Remove("Status")
```
#### Checking for Key Existence
``` 
$student.ContainsKey("Course")
```
Returns:
- True if the key exists
- False if it does not

#### Getting Keys and Values
Get All Keys
``` 
$student.Keys
``` 
Get All Values
``` 
$student.Values
``` 

### Looping Through a Hashtable
#### Using foreach with Keys
``` 
foreach ($key in $student.Keys) {
    "$key : $($student[$key])"
}
``` 
#### Looping Through Key/Value Pairs
 
``` 
foreach ($item in $student.GetEnumerator()) {
    "$($item.Key) = $($item.Value)"
}
``` 
### Hashtable Properties and Methods
#### Count Entries
 
``` 
$student.Count
``` 
 
#### Clear Hashtable
 
``` 
$student.Clear()
``` 
#### Ordered Hashtables
By default, PowerShell hashtables do not preserve order.

To keep items in insertion order, use an ordered hashtable.

```
$orderedStudent = [ordered]@{
    Name   = "Maria"
    Course = "CS118"
    Grade  = 88
}
```

### Hashtables vs Arrays
| Feature | Hashtable | Array |
| ------- | --------- | ----- |
| Access method | Key | Index |
| Lookup speed | Fast | Slower |
| Order guaranteed | No (unless ordered) | Yes |
| Readability | High | Moderate |
| Best for | Named data | Sequential data |


### Real-World Example: Configuration Settings
``` 
$config = @{
    LogPath = "C:\Logs"
    MaxSize = 10
    Debug   = $true
}
 
if ($config["Debug"]) {
    "Debug mode is enabled"
}
```
### Hashtables with Objects
``` 
$services = @{
    "Print Spooler" = "Spooler"
    "Windows Update" = "wuauserv"
}
 
foreach ($svc in $services.Values) {
    Get-Service $svc
}
``` 

### Key Points for Students
- Hashtables store key/value pairs
- Keys must be unique
- Hashtables are ideal for structured data
- Use [ordered] if order matters
- Prefer hashtables over arrays when data has meaningful labels
### One-sentence takeaway
Hashtables allow PowerShell scripts to store and retrieve data using meaningful keys instead of numeric indexes.


## REGEX

A regular expression (regex) is a pattern used to search, match, extract, or manipulate text. PowerShell supports regex through built-in operators such as:

- -match
- -notmatch
- -replace
- -split
- Select-String
Regex is extremely useful for:

- Validating input
- Searching logs and text files
- Extracting data
- Filtering command output

### Using Regex in PowerShell

#### Basic Syntax
``` 
"Hello123" -match "\d+"
``` 
 
Returns:
 
``` 
True
``` 
To see what matched:
 
``` 
$Matches[0]
``` 

### Common Regex Metacharacters
| Symbol | Matches |
| ------ | ------- |
| ^ | Beginning of a line |
| $ | End of a line |
| . | Any single character |
| [abc] | Any one character listed |
| [^abc] | Any character not listed |
| \A | Start of entire string |
| \z | End of entire string |
| * | 0 or more occurrences |
| + | 1 or more occurrences |
| ? | 0 or 1 occurrence |
| {n} | Exactly n occurrences |
| {n,} | n or more |
| {n,m} | Between n and m |
| `a | b` |
| (re) | Capture group |
| (?:re) | Non-capturing group |
| \w | Word characters |
| \W | Non-word characters |
| \s | Whitespace |
| \S | Non-whitespace |
| \d | Digits |
| \D | Non-digits |
| \b | Word boundary |
| \B | Non-word boundary |
| \n, \t | Newline, tab |
| \Q...\E | Escape literal text |

### 1) Match Characters

#### Example: Match Digits
``` 
"CS118" -match "\d+"
$Matches[0]
```
Result:

```
118
```
#### Example: Match Beginning and End
``` 
"PowerShell" -match "^Power"
 
"PowerShell" -match "Shell$"
```

### 2) Match Character Classes
#### Example: Match Letters Only
 
```
"Hello123" -match "^[A-Za-z]+$"
```
Returns False because numbers are present.

#### Example: Match Email-like Pattern
 
```
"user123@example.com" -match "\w+@\w+\.\w+"
$Matches[0]
```
#### Example: Match Whitespace
 
```
"Hello World" -match "\s"
```

### 3) Match Quantifiers
#### Example: One or More Digits
 
```
"Order ID: 45892" -match "\d+"
```
 
#### Example: Optional Character
 
```
"color" -match "colou?r"
```
Matches both color and colour.

#### Example: Exact Length
 
```
"12345" -match "^\d{5}$"
```
 
### Using Regex with PowerShell Cmdlets
#### Select-String (Search Text)

```
Get-Content example.txt | Select-String "\d{3}"
```
 
#### -replace (Modify Text)
 
```
"Phone: 555-1234" -replace "\d", "X"
```
Result:

 
```
Phone: XXX-XXXX
```
 
#### -split (Split Using Regex)
 
```
"red, blue; green" -split "[,;]\s*"
```
 
#### Capture Groups with $Matches
 
```
"User: Mike, ID: 42" -match "User:\s(\w+),\sID:\s(\d+)"
$Matches[1]   # Name
$Matches[2]   # ID
```

### Common PowerShell Regex Operators
| Operator | Purpose |
| -------- | ------- |
| -match | Test for match |
| -notmatch | Test for no match |
| -replace | Replace text |
| -split | Split string |
| Select-String | Search files/streams |

### CS118 Safety & Best Practices
- ✔ Test patterns on small input
- ✔ Start simple, then add complexity
- ✔ Use anchors (^, $) when validating
- ✔ Comment complex regex patterns
- ✔ Avoid overly complex expressions

### Key Takeaways for Students
- Regex is a pattern-matching language
- PowerShell integrates regex natively
- Regex works on strings and text streams
- Capture groups allow data extraction
- Regex is powerful but should be readable
### One-sentence takeaway
Regular expressions let PowerShell scripts search, validate, and transform text using flexible pattern rules.

## Regex Cheat Sheet for PowerShell

### Where Regex Shows Up in PowerShell
- Match: -match, -notmatch
- Replace: -replace
- Split: -split
- Search files/text: Select-String
``` 
"CS118" -match "\d+"     # True
$Matches[0]              # "118"
"abc123" -replace "\d","X"   # "abcXXX"
"red, blue; green" -split "[,;]\s*"
Select-String -Path .\log.txt -Pattern "error|fail"
``` 

### Core Metacharacters
| Pattern | Meaning | Example Match |
| ------- | ------- | ------------- |
| . | any char (except newline) | a.c → abc |
| ^ | start of string/line | ^Hi |
| $ | end of string/line | end$ |
| \ | escape a special char | \. matches literal . |
| ` | ` | OR |
| () | capture group | (\d+) |
| (?: ) | non-capturing group | `(?:Mr |
| [] | character set | [aeiou] |
| [^] | negated set | [^0-9] |

`
### Character Classes
| Pattern | Meaning |
| ------- | ------- |
| \d / \D | digit / not digit |
| \w / \W | word char (A–Z a–z 0–9 _) / not word |
| \s / \S | whitespace / not whitespace |
| [0-9] | digit range |
| [A-Za-z] | letter range |


### Quantifiers (How Many?)
| Pattern | Meaning | Example |
| ------- | ------- | ------- |
| * | 0 or more | a* |
| + | 1 or more | \d+ |
| ? | 0 or 1 | colou?r |
| {n} | exactly n | \d{5} |
| {n,} | n or more | \w{3,} |
| {n,m} | between n and m | \d{2,4} |

#### Greedy vs Lazy

- Greedy (default): .*
- Lazy: .*?

### Anchors & Boundaries
| Pattern | Meaning | 
| ------- | ------- |
| ^ | start | 
| $ | end | 
| \b | word boundary | 
| \B | not a word boundary | 

#### Examples:

``` 
"cat" -match "^\w+$"     # only word chars
"cat." -match "\bcat\b"  # whole word cat
```

### PowerShell: $Matches and Captures
When you use -match, PowerShell fills $Matches:

``` 
"User: Mike ID: 42" -match "User:\s(\w+)\sID:\s(\d+)"
$Matches[0]  # full match
$Matches[1]  # "Mike"
$Matches[2]  # "42"
``` 
Named groups:

``` 
"User: Mike ID: 42" -match "User:\s(?<Name>\w+)\sID:\s(?<ID>\d+)"
$Matches["Name"]  # Mike
$Matches["ID"]    # 42
``` 

#### ### Handy “Copy/Paste” Patterns
#### Numbers
- Integer: ^\d+$
- 5-digit ZIP: ^\d{5}$
- US phone (simple): ^\d{3}-\d{3}-\d{4}$
#### Words / IDs
- Only letters: ^[A-Za-z]+$
- Username: ^[A-Za-z0-9_]{3,16}$
#### Dates (basic)
- YYYY-MM-DD: ^\d{4}-\d{2}-\d{2}$
#### Email (basic, not perfect)
- ^\w+@\w+\.\w+$
#### IP Address (simple)
- ^\d{1,3}(\.\d{1,3}){3}$ (doesn’t validate 0–255)

### Common PowerShell Regex Tasks
#### Test a match
``` 
if ("CS118" -match "\d+") { "Has digits" }
``` 
#### Filter objects with regex
 
``` 
Get-Process | Where-Object { $_.Name -match "^w" }
``` 
#### Replace with capture groups
 
``` 
"Last, First" -replace "(\w+),\s(\w+)", "$2 $1"
``` 
# "First Last"
#### Search a file
 
``` 
Select-String -Path .\app.log -Pattern "error|fail|critical"
``` 
 
#### Quick Tips (Worth Remembering)
- Use ^ and $ when validating an entire string.
- Escape special characters: \. \? \+ 
- Start simple, then add constraints.
- Comment your regex if it’s longer than one line.


## Backticks

### Overview
In PowerShell, the backtick (`) is the escape character.
`
It is used to:

- Escape special characters
- Insert special characters (newline, tab, etc.)
- Continue commands onto the next line (line continuation)
Key point for students:

- The backtick is powerful but should be used sparingly and carefully.

### 1) Escaping Special Characters
The backtick allows special characters to be treated as literal text instead of having special meaning.

Example: Escaping a Dollar Sign
``` 
Write-Host "The cost is `$10"
``` 
 
Output:

 
``` 
The cost is $10
``` 
Without the backtick, PowerShell would treat $10 as a variable.

Example: Escaping Quotes
 
``` 
Write-Host "She said `"Hello`" to me"
``` 
Output:

 
``` 
She said "Hello" to me
``` 

### 2) Special Characters Using Backticks
PowerShell supports several escape sequences using the backtick.

| Sequence | Meaning |
| -------- | ------- |
| `n | New line | 
| `r | Carriage return | 
| `t | Tab | 
  | `` | Literal backtick | 
| `" | Double quote | 
| `$ | Dollar sign | 
| `0 | Null character | 

### Example: New Line
 
```
Write-Host "Line one`nLine two"
```
### Example: Tab
 
```
Write-Host "Name`tScore"
Write-Host "Owen`t95"
```

### 3) Line Continuation (Multi-Line Commands)
A backtick at the end of a line tells PowerShell the command continues on the next line.

Example
``` 
Get-Process `
    | Where-Object { $_.CPU -gt 50 } `
    | Sort-Object CPU -Descending
```
This improves readability for long commands.

### 4) Backticks in Strings vs Single Quotes
#### Double-Quoted Strings
- Backticks are processed
- Variables are expanded
 
```
$name = "Alex"
Write-Host "Hello `$name"
```
#### Single-Quoted Strings
- Backticks are literal
- Variables are not expanded
``` 
Write-Host 'Hello `$name'
``` 

### 5) Common Mistakes with Backticks
#### ❌ Trailing Spaces After a Backtick
The backtick must be the last character on the line.

``` 
Get-Process `   # ❌ This will fail
```
 
#### ❌ Overusing Backticks for Line Continuation
Better alternatives exist.

#### Better option: Parentheses
``` 
Get-Process |
    Where-Object { $_.CPU -gt 50 } |
    Sort-Object CPU -Descending
``` 
#### Better option: Splatting
 
``` 
$params = @{
    Path = "C:\Logs"
    Recurse = $true
}
Get-ChildItem @params
``` 

### 6) Backticks in Here-Strings
Backticks still work inside here-strings, but usually aren’t needed.

``` 
$text = @"
First line
Second line
"@
```
### When to Use Backticks (Best Practices)
- ✔ Escaping $, ", or `
- ✔ Adding tabs or new lines in output
- ✔ Rare cases of line continuation

### When to Avoid Backticks
- ❌ Complex pipelines
- ❌ Long scripts
- ❌ Readability-sensitive code
`

### CS118 Summary Table
| Use Case | Recommended |
| -------- | ----------- |
| Escape characters | Yes |
| Newlines & tabs | Yes |
| Line continuation | Sometimes |
| Complex scripts | Avoid |

### One-Sentence Takeaway
In PowerShell, the backtick is the escape character, useful for special characters and formatting, but it should be used carefully to avoid hard-to-debug errors.

## Brackets

PowerShell supports three types of brackets, each with a different purpose:

- Parentheses ()
- Braces {}
- Square brackets []
Understanding how and when to use each type is essential for writing clear, correct PowerShell scripts.

### 1) Parentheses ()
#### What Parentheses Are Used For
Parentheses are used to:

- Pass arguments
- Group expressions
- Resolve ambiguity in calculations
- Enclose conditions
- Create arrays (with @())
### Examples
#### Grouping Expressions
``` 
$result = (5 + 3) * 2
$result
``` 
 
Without parentheses, multiplication would happen first.

#### Passing Arguments
 
``` 
Get-Process (Get-Content processlist.txt)
``` 
 
#### Enclosing Conditions
 
``` 
$x = 10
if ($x -le 20) {
    Write-Host "x is less than or equal to 20"
}
``` 
#### Creating an Array
 
``` 
$array = @("item1", "item2", "item3")
``` 
 
#### Using Parentheses in Loops
 
``` 
foreach ($element in $array) {
    $element
}
``` 
Output:
 
``` 
item1
item2
item3
``` 

### 2) Braces {}
#### What Braces Are Used For
Braces define script blocks. They are used to:

- Enclose blocks of code
- Group multiple statements
- Define logic structures
- Create functions and loops
Key idea:

Braces tell PowerShell what code belongs together.

### Examples
#### if Statement
``` 
$x = 10
 
if ($x -le 20) {
    Write-Host "This is an if statement"
}
``` 
Output:

 
``` 
This is an if statement
``` 
 
#### Loop Block
 
``` 
for ($i = 0; $i -lt 3; $i++) {
    Write-Host "Iteration $i"
}
``` 
#### Function Definition
 
``` 
function Show-Message {
    Write-Host "Hello from a function"
}
``` 

### 3) Square Brackets []
#### What Square Brackets Are Used For
Square brackets are used to:

- Access array elements
- Access hashtable values
- Define types
- Perform wildcard or pattern filtering
- Work with ranges
### Examples
#### Accessing an Array Element
``` 
$array = @("item1", "item2", "item3")
$array[0]
``` 
#### Looping Through an Array Using Index
 
``` 
for ($i = 0; $i -lt $array.Length; $i++) {
    $array[$i]
}
``` 
Output:

 
``` 
item1
item2
item3
``` 
#### Accessing Hashtable Values
 
``` 
$student = @{
    Name = "Owen"
    Course = "CS118"
}
 
$student["Name"]
``` 
#### Type Declaration
 
``` 
[int]$number = 5
 
Pattern Filtering (Wildcards / Regex-like)
 
Get-Process [r-s]*
``` 
This retrieves processes whose names start with r through s.


### Summary Table
| Bracket Type | Syntax | Common Uses |
| ------------ | ------ | ----------- |
| Parentheses | () | Arguments, conditions, expressions, arrays |
| Braces | {} | Code blocks, logic, functions |
| Square Brackets | [] | Indexing, types, filtering |


### Common Mistakes to Avoid
- ❌ Confusing {} with ()
- ❌ Forgetting that arrays are zero-based
- ❌ Mixing up array indexing [] with script blocks {}

### Key Takeaway for Students
Each type of bracket in PowerShell has a specific role: parentheses group expressions, braces define code blocks, and square brackets access data and types.

## PowerShell Cmdlets (Advanced Usage Examples)

Tip for students: Most “advanced PowerShell” is just learning to combine cmdlets using the pipeline |.

### 1) Get-Unique
Purpose: Removes duplicate items from a sorted list.

```
"apple","apple","banana","banana","cherry" | Sort-Object | Get-Unique
```
 
Get-Unique works best when the input is already sorted.

### 2) Group-Object
Purpose: Groups items and shows counts.

 
```
Get-Service | Group-Object Status
```
 
### 3) Measure-Object
Purpose: Calculates count, min, max, average, sum.

 
```
Get-Process | Measure-Object -Property CPU -Average -Maximum -Minimum
```
 
### 4) Compare-Object
Purpose: Compares two lists and shows differences.

 
```
$a = "A","B","C"
$b = "B","C","D"
Compare-Object $a $b
```
### 5) Format-List
Purpose: Displays objects in a detailed list format.

 
```
Get-Process -Name explorer | Format-List *
```
 
### 6) Format-Wide
Purpose: Displays output in wide columns (compact view).

 
```
Get-ChildItem | Format-Wide -Property Name -Column 3
```
 
### 7) Where-Object
Purpose: Filters objects based on a condition.

 
```
Get-Process | Where-Object { $_.CPU -gt 50 }
```
 
### 8) Get-ChildItem
Purpose: Lists files and folders (like dir).

 
```
Get-ChildItem -Path $env:TEMP -Filter *.log -Recurse -ErrorAction SilentlyContinue
```
 
### 9) ForEach-Object
Purpose: Performs an action for each item in the pipeline.

 
```
Get-Service | ForEach-Object { "$($_.Name) is $($_.Status)" }
```
 
### 10) Start-Sleep
Purpose: Pauses script execution.


```
Write-Host "Waiting..."
Start-Sleep -Seconds 2
Write-Host "Done."
```
### 11) Read-Host
Purpose: Prompts the user for input.

 
```
$name = Read-Host "Enter your name"
Write-Host "Hello, $name"
```
### 12) Select-Object
Purpose: Selects specific properties or limits output.

 
```
Get-Process | Select-Object -First 5 Name, Id, CPU
```
 
### 13) Sort-Object
Purpose: Sorts objects.

 
```
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 Name, CPU
```
 
### 14) Write-Warning
Purpose: Displays a warning message (yellow).

 
```
Write-Warning "This is a warning message. Proceed carefully."
```
 
### 15) Write-Host
Purpose: Prints directly to the console.

 
```
Write-Host "This prints to the screen only (not pipeline output)."
```
Teaching tip: In scripts, prefer producing output objects over Write-Host when possible.

### 16) Invoke-Item
Purpose: Opens a file or folder using the default program.

 
```
Invoke-Item $env:TEMP
```
 
### 17) Invoke-Expression (Use with caution)
Purpose: Runs a string as PowerShell code.

 
```
$cmd = "Get-Date"
Invoke-Expression $cmd
```
⚠ Security warning: Don’t use this on untrusted input.

### 18) Measure-Command
Purpose: Measures how long a command takes to run.

 
```
Measure-Command { Get-ChildItem $env:TEMP -Recurse -ErrorAction SilentlyContinue }
```
 
### 19) Invoke-History
Purpose: Runs a previous command from session history by ID.

 
```
Get-History
Invoke-History 1
```
### 20) Add-History
Purpose: Adds a command to your session history.

 
```
Add-History -InputObject (Get-History -Count 1)
Get-History
```
(Realistically, students will mostly use Get-History + rerun.)

### 21) Get-History
Purpose: Displays your session command history.

 
```
Get-History
```
 
### 22) Get-Culture
Purpose: Shows system culture settings (date/time, number formats).

 
```
Get-Culture
```
Example use:

 
```
(Get-Culture).DateTimeFormat.ShortDatePattern
```

### Quick “Pipeline Patterns” (Great for CS118)
#### Filter → Sort → Select
``` 
Get-Process |
Where-Object { $_.CPU -gt 10 } |
Sort-Object CPU -Descending |
Select-Object -First 5 Name, CPU
``` 
#### Group and Count
 
``` 
Get-ChildItem $env:TEMP |
Group-Object Extension |
Sort-Object Count -Descending |
Select-Object -First 10 Name, Count
``` 

## Exercise - File Input and Output

### PowerShell Scripts: Creating and Reading Different File Types
#### Safe Lab Setup (Run First)
``` 
$LabRoot = Join-Path $env:TEMP "PS_FileTypes_Lab"
New-Item -Path $LabRoot -ItemType Directory -Force | Out-Null
Set-Location $LabRoot
"Lab folder: $LabRoot"
``` 
 
#### 1) Create Text File
Purpose: Create a .txt file and write content to it.

``` 
"Hello from PowerShell!" | Set-Content -Path "$LabRoot\example.txt"
``` 
 
#### 2) Read Text File
Purpose: Read the contents of a .txt file.

 
``` 
Get-Content -Path "$LabRoot\example.txt"
``` 
 
#### 3) Create XML File
Purpose: Create a simple .xml file.

 
``` 
$xmlContent = @"
<Students>
  <Student>
    <Name>Owen</Name>
    <Course>CS118</Course>
  </Student>
  <Student>
    <Name>Maria</Name>
    <Course>CS118</Course>
  </Student>
</Students>
"@
 
$xmlContent | Set-Content -Path "$LabRoot\students.xml"
``` 

#### 4) Read XML File
Purpose: Load XML into an object and read nodes.

``` 
[xml]$xml = Get-Content -Path "$LabRoot\students.xml"
$xml.Students.Student | ForEach-Object {
    "Name: $($_.Name)  Course: $($_.Course)"
}
``` 
#### 5) Create CSV File
Purpose: Create a .csv file from objects.

 
``` 
$data = @(
    [pscustomobject]@{ Name="Owen";  Course="CS118"; Score=95 }
    [pscustomobject]@{ Name="Maria"; Course="CS118"; Score=88 }
)
 
$data | Export-Csv -Path "$LabRoot\grades.csv" -NoTypeInformation
``` 
#### 6) Read CSV File
Purpose: Import the CSV as objects and work with the data.

 
``` 
$grades = Import-Csv -Path "$LabRoot\grades.csv"
$grades | Format-Table -AutoSize
``` 
Example filtering:

 
``` 
$grades | Where-Object { [int]$_.Score -ge 90 }
``` 

#### 7) Create HTML File
Purpose: Create a basic HTML page.

``` 
$html = @"
<!DOCTYPE html>
<html>
<head>
  <title>PowerShell HTML Demo</title>
</head>
<body>
  <h1>Hello from PowerShell</h1>
  <p>This file was generated by a script.</p>
</body>
</html>
"@
 
$html | Set-Content -Path "$LabRoot\demo.html"
``` 
Optional: open it in your default browser:

 
``` 
Start-Process "$LabRoot\demo.html"
``` 
 
#### 8) Read HTML File
Purpose: Read the file contents (HTML is just text).

 
``` 
Get-Content -Path "$LabRoot\demo.html"
``` 
Optional: read as a single string:

 
``` 
Get-Content -Path "$LabRoot\demo.html" -Raw
``` 

#### 9) Erasing File Content
Purpose: Clear a file without deleting it.
```
Method A (Clear-Content):

 
Clear-Content -Path "$LabRoot\example.txt"
```
Method B (Overwrite with empty content):

 
```
"" | Set-Content -Path "$LabRoot\example.txt"
```
 
#### 10) Append Text Data
Purpose: Add content to the end of a file.

 
```
"New line added at $(Get-Date)" | Add-Content -Path "$LabRoot\example.txt"
```
Verify:

 
```
Get-Content -Path "$LabRoot\example.txt"
```

### Quick Reference: Best Cmdlets for File Content
| Task | Cmdlet |
| ---- | ------ |
| Write/overwrite file | Set-Content |
| Append to file | Add-Content |
| Read file | Get-Content |
| Clear file contents | Clear-Content |
| Export objects to CSV | Export-Csv |
| Import CSV to objects | Import-Csv |



### Optional Cleanup (End of Lab)
``` 
Remove-Item -Path $LabRoot -Recurse -Force
```











