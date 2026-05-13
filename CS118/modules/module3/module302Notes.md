# Module 3.2 Notes (JavaScript)

## JavaScript Cheat Sheet

### 1) Add JavaScript to a Webpage
#### Inline (inside HTML)
```
<script>
  alert("Hello!");
</script>
```

#### External file (recommended)
```
<script src="script.js"></script>
```

### 2) Output / Debugging
``` 
console.log("Hello");     // prints to browser console
alert("Hi");              // popup message
```
### 3) Variables
``` 
let name = "Owen";        // can change
const school = "MassBay"; // cannot be reassigned
var oldWay = 123;         // older style (avoid in new code)
``` 
### 4) Data Types
``` 
let age = 18;             // number
let active = true;        // boolean
let message = "Hi";       // string
let nothing = null;       // null
let notSet;               // undefined
```

### 5) Strings (Common Operations)
```
let s = "CS118";
s.length;            // 5
s.toUpperCase();     // "CS118"
s.includes("118");   // true
```
Template strings:
 
```
let user = "Maria";
let text = `Hello, ${user}!`; // uses backticks
```

### 6) Numbers (Quick Tips)
 
```
Math.random();       // 0 to <1
Math.floor(4.9);     // 4
Number("42");        // 42
parseInt("42", 10);  // 42
```
### 7) Comparisons
 
```
5 == "5";   // true  (loose comparison - avoid)
5 === "5";  // false (strict comparison - use this)
5 !== 6;    // true
```
### 8) If / Else
```
let score = 85;
 
if (score >= 90) {
  console.log("A");
} else if (score >= 80) {
  console.log("B");
} else {
  console.log("Keep going!");
}
```
### 9) Loops


#### for loop
 
```
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```
#### while loop
 
```
let i = 0;
while (i < 3) {
  console.log(i);
  i++;
}
```
#### for...of (arrays)
 
```
let items = ["a", "b", "c"];
for (const item of items) {
  console.log(item);
}
```

### 10) Arrays
 
```
let nums = [10, 20, 30];
 
nums[0];          // 10
nums.length;      // 3
nums.push(40);    // add to end
nums.pop();       // remove last
```
Useful array methods:

 
```
let doubled = nums.map(n => n * 2);
let big = nums.filter(n => n > 15);
```
### 11) Objects (Key/Value)
 
```
let student = {
  name: "Owen",
  course: "CS118",
  score: 95
};
 
student.name;         // "Owen"
student["score"];     // 95
student.score = 98;   // update
```


### 12) Functions
Function declaration
 
```
function add(a, b) {
  return a + b;
}
```
Arrow function
 
```
const add2 = (a, b) => a + b;
```

### 13) Events (Buttons / Clicks)
HTML:
``` 
<button id="btn">Click me</button>
``` 
JS:
``` 
const btn = document.getElementById("btn");
 
btn.addEventListener("click", () => {
  alert("Button clicked!");
});
``` 

### 14) DOM Basics (Changing the Page)
HTML:

``` 
<p id="msg">Hi</p>
``` 
JS:

 
``` 
const p = document.getElementById("msg");
p.textContent = "New text!";
``` 
Change styles:

 
``` 
p.style.color = "red";
p.style.fontSize = "20px";
``` 

### 15) User Input
``` 
let name = prompt("Enter your name:");
console.log(name);
``` 
### 16) Timing (setTimeout / setInterval)
Run once after delay:

 
``` 
setTimeout(() => {
  alert("1 second passed");
}, 1000);
``` 
Run repeatedly:

 
``` 
let timer = setInterval(() => console.log("tick"), 1000);
 
// stop later:
clearInterval(timer);
``` 
### 17) Common Operators
``` 
let x = 5;
x += 2;   // 7
x -= 1;   // 6
x *= 3;   // 18
x++;      // 19
``` 
Logical operators:

 
``` 
(true && false) // false
(true || false) // true
!true           // false
``` 
### 18) JSON (Very Common)
Object to JSON:

 
``` 
let obj = { name: "Maria", score: 90 };
let json = JSON.stringify(obj);
``` 
JSON to object:

 
``` 
let back = JSON.parse(json);
``` 
### 19) Common Beginner Mistakes
- Using == instead of ===
- Forgetting let/const (creates accidental globals)
- Using innerHTML when textContent is safer
- Confusing arrays [] with objects {}

## Reserved Words

In JavaScript you cannot use these reserved words as variables, labels, or function names:


| 00000000 | 000000000 | 000000 | 0000000 |
| -------- | --------- | ------ | ------- |
| abstract | arguments | await* | boolean |
| break | byte | case | catch |
| char | class* | const | continue |
| debugger | default | delete | do |
| double | else | enum* | eval |
| export* | extends* | false | final |
| finally | float | for | function |
| goto | if | implements | import* |
| in | instanceof | int | interface |
| let* | long | native | new |
| null | package | private | protected |
| public | return | short | static |
| super* | switch | synchronized | this |
| throw | throws | transient | true |
| try | typeof | var | void |
| volatile | while | with | yield |

## JavaScript 1 - Basics
```
<!DOCTYPE html>
<body>
 
 
<h2>My First JavaScript</h2>
 
 
<button type="button"
onclick="document.getElementById('demo').innerHTML = Date()">
Click me to display Date and Time.</button>
 
 
<p id="demo"></p>
 
 
</body>
</html>
```
The HTML code sets up a simple webpage that uses JavaScript to display the current date and time when a button is clicked. Here is a breakdown of each part:

1. `<!DOCTYPE html>`: This declaration defines the document type and version of HTML. It tells the browser to expect HTML5 content.
2. `<html>`: The tags that will bookend the HTML elements.
3. `<body>`: Contains the content of the HTML document, such as text, hyperlinks, images, tables, lists, etc.
4. `<h2>My First JavaScript</h2>`: Defines a header for the page. It uses the <h2> tag, which is used for subheadings.
5. `<button type="button" onclick="document.getElementById('demo').innerHTML = Date()">Click me to display Date and Time.</button>`:
    - `<button type="button">`: Creates a clickable button on the webpage.
    - `onclick`: An attribute defining a JavaScript action when clicking the button. Here, it runs the code inside the quotes.
    - `document.getElementById('demo').innerHTML = Date()`: JavaScript code executed when the button clicks. It does the following:document.getElementById('demo'): Finds an HTML element with the ID demo.
    - .innerHTML = Date(): Sets the inner HTML content of the identified element to the current date and time. The Date() function in JavaScript retrieves the current date and time.
6. `<p id="demo"></p>`: Defines a paragraph element with an ID of demo. Initially, this paragraph is empty. However, when you click the button, the JavaScript code updates this element to display the current date and time.
7. `</body> and </html>`: Close the body.

When you load this HTML file in a browser, you will see a header titled "My First JavaScript," a button that says "Click me to display Date and Time," and an empty paragraph. Clicking the button will populate the paragraph with the current date and time.


## JavaScript 2 - Referencing
```
<!DOCTYPE html>
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta name="description" content="CS118 Sample">
  <meta name="keywords" content="HTML, CSS, JavaScript">
  <meta name="author" content="Michael Lyons">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fun with JavaScript</title>
</head>
 
<body>
<h1>Welcome to CS118</h1>
<br>
<p>Fun with JavaScript</p>
<img src="https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2021/12/30151747/Pembroke-Welsh-Corgi-smiling-and-happy-outdoors.jpeg"/>
 
<!-- You always want to place your JavaScript at the bottom of the body of the page.
  This way, your page loads and renders without waiting for the script to run.
  You can also notice here how to add comments to an HTML file.
  When you save and run this, you will get a pop-up box.
  -->
 
<script>
  alert ('Hello World');
</script>
</BODY>
</html>
```

The above is showing:

- How to reference an image.
- We see the script tags.
- We see how to comment out sections
- We see how to create a javascript pop-up window.
- We can take it further by splitting the code out into its own file.

index.htm: 

```
<!DOCTYPE html>
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta name="description" content="CS118 Examples">
  <meta name="keywords" content="HTML, CSS, JavaScript">
  <meta name="author" content="Michael Lyons">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fun with JavaScript</title>
</head>
 
<body>
<h1>Welcome to CS118</h1>
<br>
<h2>Fun with JavaScript</h2>
<br>
<br>
<img src="https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2021/12/30151747/Pembroke-Welsh-Corgi-smiling-and-happy-outdoors.jpeg"/>
 
<script src="main.js"></script>
</BODY>
</html>
```

script src allows for me to name the sources for my scripts. This is a relative path name.

main.js: 
```
/*Since we are in the javascript file, we do not need to worry about HTML tags any longer.
We can enter the code into main.js
You can enter your code. 
This example also shows how to make a multi-line comment in the file.
*/
 
// Or you can do a single line.
 
alert ('Hello World');
```


In JavaScript, innerHTML is a property of DOM (Document Object Model) elements that allows you to get or set the HTML content inside an element.

### Key Features:
- Get Content: When you access the innerHTML property, it returns a string containing the HTML content of the element, including any child elements.
- Set Content: When you assign a value to innerHTML, it replaces the element's existing HTML content with the new value.


### Syntax
```
// Getting innerHTML
let content = element.innerHTML;
 
// Setting innerHTML
element.innerHTML = '<p>New content</p>';
```

### Example
```
<!DOCTYPE html>
<html>
<body>
  <div id="myDiv">Hello, world!</div>
  <button onclick="changeContent()">Click Me</button>
 
  <script>
    function changeContent() {
      // Get the div element
      let div = document.getElementById('myDiv');
 
      // Get the current innerHTML
      console.log(div.innerHTML); // Outputs: Hello, world!
 
      // Set new innerHTML
      div.innerHTML = '<b>Content changed!</b>';
    }
  </script>
</body>
</html>
```

### Considerations
- Security: Directly setting innerHTML with user-provided data can lead to Cross-Site Scripting (XSS) attacks. Always sanitize input to avoid this risk.
- Performance: When you set innerHTML, the browser completely re-parses the HTML, which can be slower than other DOM manipulation methods for complex operations.
- Event Handlers: If the innerHTML replacement removes elements with event handlers attached, those event handlers will no longer work.
For safer alternatives, consider using methods like textContent (for plain text) or the DOM API for creating and appending elements dynamically.

## Working with the console

You can open the Firefox Developer Tools from the menu by selecting Tools > Web Developer > Web Developer Tools or use the keyboard shortcut Ctrl + Shift + I or F12 on Windows and Linux, or Cmd + Opt + I on macOS.

In Microsoft Edge - The fastest way to directly open the Console is to press Ctrl+Shift+J (Windows, Linux) or Command+Option+J (macOS).

https://learn.microsoft.com/en-us/microsoft-edge/devtools-guide-chromium/console/

Google Chrome - To open the developer console in Google Chrome, open the Chrome Menu in the upper-right-hand corner of the browser window and select More Tools > Developer Tools. You can also use Option + ⌘ + J (on macOS), or Shift + CTRL + J (on Windows/Linux).


### A couple of things to try out:

- 4*4
- alert('I like tacos')
- console.clear()
- console.log('I like tacos')
- console.warn('Beware of tacos')
- console.error('Tacos broken')


### Modify main.js and see the outcome
```
/*Since we are in the javascript file, we do not need to worry about HTML tags any longer.
We can enter the code into main.js
You can enter your code. 
This example also shows how to make a multi-line comment in the file.
*/
 
// Or you can do a single line.
 
 
alert('I like tacos');
console.log('I want tacos');
console.warn('Beware of tacos');
console.error('Tacos broken');

```

### What happens when you add?

4*4

or

console.clear()

The most frequently used feature of the console is logging text and other data. You can generate several categories of output using the  console.log(),  console.info(),  console.warn(),  console.error(), or  console.debug() methods. Each of these results in output styled differently in the log, and you can use the filtering controls provided by your browser to view only the kinds of output that interest you.

There are two ways to use each of the output methods; you can pass in a list of objects whose string representations get concatenated into one string, then output to the console, or you can pass in a string containing zero or more substitution strings followed by a list of objects to replace them.

## JavaScript 3 - Functions
Let us build a function
```
<html>
   <head>      
      <script>
            function iWantTacos() {
               alert("I want tacos")
            }
      </script>     
   </head>
   
   <body>
      <input type = "button" onclick = "iWantTacos()" value = "Do you want tacos?" />
   </body>  
</html>
```
The HTML and JavaScript code provided sets up a simple webpage with a button that, when clicked, triggers an alert displaying the message "I want tacos." Here is a breakdown of what is happening in the code:

### HTML Structure
- `<head>` section: This part of the HTML document includes a `<script>` tag that defines JavaScript code.
- `<body>` section: Contains an HTML input element of type "button." This button is visible to users when they view the page.
### JavaScript Function
- iWantTacos(): This JavaScript function is defined inside the `<script>` tag in the `<head>` section. The function uses the alert() method to display a pop-up alert box with the text "I want tacos."
###Button Interaction
- `<input type = "button" onclick = "iWantTacos()" value = "Do you want tacos?" />`: This line creates a button on the webpage with the label "Do you want tacos?".
- onclick = "iWantTacos()": This attribute on the button sets up an event listener for the 'click' event. The iWantTacos() function is called when the button is clicked, triggering the alert box.
###User Experience
When a user visits this webpage, they will see a button labeled "Do you want tacos?". Clicking on this button will execute the iWantTacos() function, which displays an alert box with the message "I want tacos." This is a simple example of using JavaScript to add interactive behavior to a webpage.

This setup is typical for introductory examples demonstrating how JavaScript functions can be triggered by user actions such as clicks. This one was done in the `<head>`.

In the body:
```
<html>
   <head>      
   </head>
   
   <body>
 
      <script>
            function iWantTacos() {
               alert("I want tacos")
            }
      </script>     
 
      <input type = "button" onclick = "iWantTacos()" value = "Do you want tacos?" />
   </body>  
</html>
```

Using external file:

Index.htm: 
```
<html>
<head>
</head>
<body>
<script src = "main.js" ></script>
<script>
document.write("Hello CS 118")
</script>
<br>
<br>
<br>
<input type = "button" onclick  = "iWantTacos()" value = "Do you want tacos?" />
</body>
</html>
Main.js

function iWantTacos() {
    alert("Yes, so HUNGRY!")
 }
```

In JavaScript, document.write() is a method used to write a string of text directly to the HTML document. This method is part of the Document object, which represents the HTML document loaded in a browser window or frame.

### How document.write() Works
When you use document.write(), the specified text is written to the page's HTML content at the point where the script is executed. If you call document.write() after the HTML document has fully loaded, it will overwrite the entire content of the document, essentially replacing all existing HTML with the new content provided to document.write().

### Basic Usage
Here’s a simple example of using document.write():
```
document.write('Hello, world!');
```

### Example within an webpage
```
<html>
<head>
    <title>Sample Page</title>
</head>
<body>
    <h1>This is a heading</h1>
    <script>
        document.write('<p>This is a new paragraph added by JavaScript.</p>');
    </script>
    <p>This is another paragraph.</p>
</body>
</html>
```

### Considerations and Modern Usage
While document.write() is very straightforward and has been used extensively in the past, it is generally discouraged in modern web development for several reasons:

- Performance: Using document.write() can interfere with the page's loading process, mainly if it is used to load scripts synchronously. This can block the page rendering and lead to performance issues.
- Overwriting the Document: As mentioned, using document.write() after the page has loaded will clear the entire document and replace it with the new content, which is often not the desired behavior and can lead to issues with page usability.
- Compatibility and Best Practices: Many modern JavaScript practices and libraries avoid using document.write() because of its invasive nature and the complexities it introduces in managing page content dynamically.
Instead of document.write(); developers may use methods like element.innerHTML or DOM manipulation functions (appendChild, insertBefore, etc.) to dynamically update the webpage's content in a safer and more controlled manner. These methods offer better performance and compatibility with dynamic page updates.

## JavaScript 4 - Variables

Working with variables

You can use "var", "let", and "const" to set the value of variables in JavaScript. Using "const" signals, the identifier will not be reassigned. "let" is a signal that the variable may be reassigned, such as a counter in a loop or a value swap in an algorithm. 

Using "let" allows you to declare variables limited in scope to the block, statement, or expression on which it is used. This is unlike the var keyword, which defines a variable globally or locally for an entire function regardless of block scope. Using var, you set a global variable.

You can use "var", but it is deprecated in the JavaScript standard, as the practice is to use let and const as they have this scoping ability.

```
<html>
<head>
</head>
<body>
<script>
const MyName = "Mike"
let MyAge = "53"
var MyColor = "green"
document.write(MyName)
document.write("<br>")
document.write(MyAge)
document.write("<br>")
document.write(MyColor)
console.log(MyName)
console.log(MyAge)
console.log(MyColor)
</script>
</body>
</html>
```

### HTML Structure
The HTML structure is simple, with no elements in the `<head>` and only a `<script>` tag in the `<body>`. There are no other HTML elements outside of the script.
### JavaScript Code
- Variable Declarations:
    - const MyName = "Mike": Declares a constant variable MyName and initializes it with the string value "Mike". As a constant, its value cannot be changed once set.
    - let MyAge = "51": Declares a variable MyAge using let, which allows it to be reassigned later if needed, and initializes it with the string "51".
    - var MyColor = "green": Declares a variable MyColor using var, which is functionally scoped or globally scoped (less strict than let), and initializes it with the string "green".
- Writing to the Document:
    - document.write(MyName): Writes the value of MyName ("Mike") directly to the document.
    - `document.write("<br>")`: Inserts a line break (`<br>`) into the document.
    - `document.write(MyAge)`: Writes the value of MyAge ("51") to the document.
    - `document.write("<br>")`: Inserts another line break.
    - `document.write(MyColor)`: Writes the value of MyColor ("green") to the document.
- This sequence results in the text "Mike", "51", and "green" being written to the webpage, each on a new line due to the `<br>` tags.
- Logging to the Console:
    - console.log(MyName): Logs the value of MyName to the console.
    - console.log(MyAge): Logs the value of MyAge to the console.
    - console.log(MyColor): Logs the value of MyColor to the console.
- This part of the script outputs the same values to the browser's developer console, allowing you to see the values during debugging or running the script without affecting the webpage's visual content.

Note: JavaScript is case sensitive

Reminder: You can not set a variable using one of the reserved words.

Tip: Above, I showed how I set variables using two words and wrote them with the first letter capitalized. This way, they are unique and stand out.

## Data Types

JavaScript, as a dynamically typed language, supports several data types that can be broadly categorized into primitive types and object types. Here is an overview of these data types:

### Primitive Types
- String: Represents textual data, e.g., "Hello, world!".
- Number: Represents integer and floating-point numbers, e.g., 42, 3.14159. JavaScript uses a double-precision floating-point format for all its numeric operations.
- BigInt: An integer with arbitrary precision, valid for huge numbers, e.g., 9007199254740991n.
- Boolean: Represents a logical entity and can have two values: true and false.
- Undefined: A variable not assigned a value has the type undefined.
- Null: Denotes a null value; it represents a deliberate non-value (and is distinct from undefined).
- Symbol: A unique and immutable primitive introduced in ES6, used as the key for object properties.
### Object Types
- Object: The most basic data structure in JavaScript. An object is a collection of properties; a property is an association between a name (or key) and a value. The value of a property can be a function, in which case the property is known as a method.
- Array: A special type of object, an array is a structured collection of data items where each item can be accessed by its index.
- Function: A block of code designed to perform a particular task; functions are first-class objects in JavaScript.
- Date: Represents a single moment in time in a platform-independent format.
- RegExp: Represents regular expressions and patterns used to match character combinations in strings.
### Special Mention: Global Objects
- JSON: An object that contains methods for parsing JSON (JavaScript Object Notation) and converting values to JSON.
- Math: A built-in object with properties and methods for mathematical constants and functions.
### Typed Arrays and Buffers
- ArrayBuffer, Uint8Array, Float32Array, etc.: These objects manage binary data and interact with data stored in a binary format.
JavaScript dynamically handles the data type of variables; it automatically determines the data type based on the value assigned to the variable. This flexibility allows for easier and faster coding but requires careful handling to avoid type-related bugs. The language's type system has been enhanced over the years, particularly with the addition of Symbol and BigInt, to efficiently handle more complex scenarios and large datasets.

## JavaScript 5 - Operators

### Operators

Let us do some simple math.

10 + 5 equals 15

In JavaScript, 10 and 5 are called operands, and ‘+’ is called the operator. JavaScript supports the following types of operators.

- Arithmetic Operators
- Comparison Operators
- Logical or Relational Operators
- Assignment Operators
- Conditional or Ternary Operators
- And others

### Arithmetic

Your operators are +, -, /, and * (operating as expected).

You also have %, which is the modulus and outputs the remainder of an integer.

++ (increment) will increase the value of an integer

-- (decrement) will decrease it.

```
<html>
   <body>
   
      <script>
            let a = 33;
            let b = 10;
             c = "Tacos";
            let linebreak = "<br />";
         
            document.write("a + b = ");
            result = a + b;
            document.write(result);
            document.write(linebreak);
         
            document.write("a - b = ");
            result = a - b;
            document.write(result);
            document.write(linebreak);
         
            document.write("a / b = ");
            result = a / b;
            document.write(result);
            document.write(linebreak);
         
            document.write("a % b = ");
            result = a % b;
            document.write(result);
            document.write(linebreak);
         
            document.write("a + b + c = ");
            result = a + b + c;
            document.write(result);
            document.write(linebreak);
         
            a = ++a;
            document.write("++a = ");
            result = ++a;
            document.write(result);
            document.write(linebreak);
         
            b = --b;
            document.write("--b = ");
            result = --b;
            document.write(result);
            document.write(linebreak);
      </script>
      
      Change the variables to different values and then try again.
 
   </body>
</html>
```

```
a + b = 43
a - b = 23
a / b = 3.3
a % b = 3
a + b + c = 43Tacos
++a = 35
--b = 8
```
Change the variables to different values and then try again.

### Comparison

For this explanation, lets say:

let a = 2

let b = 3

Equal tests are performed to see if the values are the same.

(a == b) is not true

Not equal checks the value of the operands the same way equals work with the opposite goal

(a != b) is true

Great than checks if the value on the left is greater than the value on the right.

(a > b) is not true

Less than tests the same as the prior but is seeing if the value on the left is lesser than the right value.

(a < b) is true

We can modify these to Greater than or Equal or Less than or Equal.

>=

<=

```
<html>
   <body>  
      <script>
            let a = 2;
            let b = 3;
            let linebreak = "<br />";
      
            document.write("(a == b) => ");
            result = (a == b);
            document.write(result);
            document.write(linebreak);
         
            document.write("(a < b) => ");
            result = (a < b);
            document.write(result);
            document.write(linebreak);
         
            document.write("(a > b) => ");
            result = (a > b);
            document.write(result);
            document.write(linebreak);
         
            document.write("(a != b) => ");
            result = (a != b);
            document.write(result);
            document.write(linebreak);
         
            document.write("(a >= b) => ");
            result = (a >= b);
            document.write(result);
            document.write(linebreak);
         
            document.write("(a <= b) => ");
            result = (a <= b);
            document.write(result);
            document.write(linebreak);
      </script>      
      Change to different values and different operators and then try...
   </body>
</html>
```

```
(a == b) => false
(a < b) => true
(a > b) => false
(a != b) => true
(a >= b) => false
(a <= b) => true
```
Change to different values and different operators and then try...


Comparison operators in JavaScript are used to compare two values in your code. These operators evaluate to Boolean values, either true or false, depending on whether the comparison is true. Here are the main comparison operators in JavaScript:

- Equal (==): Checks whether the values of two operands are equal, performing type conversion if necessary. For example, 5 == '5' evaluates to true.
- Not equal (!=): Checks whether the values of two operands are not equal, also performing type conversion. For example, 5 != '8' evaluates to true.
- Strictly equal (===): Checks whether the values of two operands are equal and of the same type, without performing type conversion. For example, 5 === '5' evaluates to false.
- Strictly not equal (!==): Checks whether the values of two operands are not equal or not of the same type. For example, 5 !== '5' evaluates to true.
- Greater than (>): Returns true if the value on the left is greater than the value on the right. For example, 10 > 5 evaluates to true.
- Greater than or equal to (>=): Returns true if the value on the left is greater than or equal to the value on the right. For example, 5 >= 5 evaluates to true.
- Less than (<): Returns true if the value on the left is less than the value on the right. For example, 5 < 10 evaluates to true.
- Less than or equal to (<=): Returns true if the value on the left is less than or equal to the value on the right. For example, 5 <= 5 evaluates to true.
These operators are essential for control flow in JavaScript, allowing you to make decisions in your code based on comparing values.

### Logical

For this description, lets say:

let a = true

let b = false



&& is AND

(a && b) is True if both are non-zero values then its true

|| is OR

(a || b) is True is only one is

! is NOT

!(a && b) is false. Adding the band in front reverses logic of the operand.

!(a || b) is false too.

```
<html>
   <body>   
      <script>
            let a = true;
            let b = false;
            let linebreak = "<br />";
      
            document.write("(a && b) => ");
            result = (a && b);
            document.write(result);
            document.write(linebreak);
         
            document.write("(a || b) => ");
            result = (a || b);
            document.write(result);
            document.write(linebreak);
         
            document.write("!(a && b) => ");
            result = (!(a && b));
            document.write(result);
            document.write(linebreak);
      </script>      
      <p>Change to different values and different operators and then try...</p>
   </body>
</html>
```


```
(a && b) => false
(a || b) => true
!(a && b) => true
```
Change to different values and different operators and then try...


In JavaScript, logical operators are used to determine the logic between variables or values. These operators evaluate to Boolean values (true or false) based on the operands provided. Here are the primary logical operators in JavaScript:

- Logical AND (&&): Returns true if both operands are true; otherwise, it returns false. It stops evaluating as soon as one operand is false (short-circuit evaluation). For example, true && true returns true, but true && false returns false.
- Logical OR (||): Returns true if at least one of the operands is true; otherwise, it returns false. It stops evaluating as soon as one operand is true (short-circuit evaluation). For example, true || false returns true, and false || false returns false.
- Logical NOT (!): Returns true if the operand is false and false if the operand is true. Essentially, it reverses the Boolean value of the operand. For example, !true returns false, and !false returns true.
These operators are very useful for controlling the flow of logic in your programs, enabling complex conditions and decision-making structures by combining multiple Boolean expressions.

Choosing between comparison operators and logical operators in JavaScript depends on the specific requirements of your condition checks within the code. Here's how you can decide when to use each:

### When to Use Comparison Operators
Comparison operators are used when you need to compare two values directly. This includes checking for equality, inequality, or relational checks (greater than, less than, etc.). Use comparison operators:

- To determine equality or inequality: Whether two values are the same or different, optionally converting types if necessary (using == or !=) or checking strictly without type conversion (using === or !==).
- For ordering comparisons: To find out if one value is greater than, less than, greater than or equal to, or less than or equal to another value (using >, <, >=, <=).
- In conditional statements: To decide which code branch to execute based on the result of the comparison (e.g., in if, while, for conditions).
### When to Use Logical Operators
Logical operators are used when you need to combine multiple Boolean expressions or values. They are essential for controlling the flow of logic in more complex conditions. Use logical operators:

- To combine conditions: When your decision depends on multiple conditions being true or false. For example, checking if a user is logged in and has the correct permissions.
- To negate conditions: When you want to execute a block of code only if a certain condition is not met (using !).
- In complex if statements or loops: Where multiple conditions need to be evaluated to decide the execution path. For example, using && or || to combine conditions in if statements for more detailed decision-making.
### Practical Example
For instance, if you need to check if a user is an adult and lives in a specific country to be eligible for a service, you would use both types of operators:
```
if (age >= 18 && country === 'USA') {
    console.log('Eligible for service');
}
```

In this example:

- The comparison operators (>= and ===) are used to compare the variables "age" and "country" to specific values.
- The logical operator (&&) is used to ensure both conditions are true to proceed with the eligibility check.
Understanding when to use each type of operator helps you write clearer and more efficient JavaScript code by properly structuring condition checks and logic flows within your applications.

### Assignment

= (Simple Assignment )

Assigns values from the right side operand to the left side operand

C = a + B

+= (Add and Assignment)

It adds the right operand to the left operand and assigns the result to the left operand.

C += A is equivalent to C = C + A

−= (Subtract and Assignment)

It subtracts the right operand from the left operand and assigns the result to the left operand.

C -= A is equivalent to C = C - A

   

*= (Multiply and Assignment)

It multiplies the right operand with the left operand and assigns the result to the left operand.

C *= A is equivalent to C = C * A

   

/= (Divide and Assignment)

It divides the left operand with the right operand and assigns the result to the left operand.

C /= A is equivalent to C = C / A

```
<html>
   <body>   
      <script>
            let a = 33;
            let b = 10;
            let linebreak = "<br />";
         
            document.write("Value of a => (a = b) => ");
            result = (a = b);
            document.write(result);
            document.write(linebreak);
         
            document.write("Value of a => (a += b) => ");
            result = (a += b);
            document.write(result);
            document.write(linebreak);
         
            document.write("Value of a => (a -= b) => ");
            result = (a -= b);
            document.write(result);
            document.write(linebreak);
         
            document.write("Value of a => (a *= b) => ");
            result = (a *= b);
            document.write(result);
            document.write(linebreak);
         
            document.write("Value of a => (a /= b) => ");
            result = (a /= b);
            document.write(result);
            document.write(linebreak);
         
            document.write("Value of a => (a %= b) => ");
            result = (a %= b);
            document.write(result);
            document.write(linebreak);
      </script>      
      <p>Change it different values and different operators and then try...</p>
   </body>
</html>
```

```
Value of a => (a = b) => 10
Value of a => (a += b) => 20
Value of a => (a -= b) => 10
Value of a => (a *= b) => 100
Value of a => (a /= b) => 10
Value of a => (a %= b) => 0
```
Change it different values and different operators and then try...


## Math Objects

JavaScript Math Object


Overview
The JavaScript Math object provides built-in properties and methods for performing mathematical operations. Unlike other objects, Math is not a constructor — you do not create instances of it. You use it directly.

``` 
Math.method()
```

The Math object is commonly used for:

- Calculations
- Rounding numbers
- Generating random values
- Working with powers, roots, and constants

### Common Math Properties (Constants)
| Property | Description | Example Value |
| -------- | ----------- | ------------- |
| Math.PI | Value of π | 3.141592653589793 |
| Math.E | Euler’s number | 2.718 |
| Math.SQRT2 | Square root of 2 | 1.414 |

### Example
``` 
console.log(Math.PI);
``` 
### Rounding Methods (Very Common)
#### Math.round()
Rounds to the nearest integer.

```
Math.round(4.6); // 5
Math.round(4.4); // 4
```
#### Math.floor()
Rounds down.

``` 
Math.floor(4.9); // 4
``` 
#### Math.ceil()
Rounds up.

``` 
Math.ceil(4.1); // 5
``` 
 
#### Math.trunc()
Removes the decimal part.

 
``` 
Math.trunc(4.9); // 4
``` 
 
Random Numbers
#### Math.random()
Returns a number between 0 (inclusive) and 1 (exclusive).

 
``` 
Math.random();
``` 
 
#### Random Integer (1–10)
 
``` 
Math.floor(Math.random() * 10) + 1;
``` 
Explanation:

Math.random() → 0 to 0.999…
Multiply by 10 → 0 to 9.999…
Math.floor() → 0 to 9
+ 1 → 1 to 10

### Power and Roots
#### Math.pow()
Raises a number to a power.

``` 
Math.pow(2, 3); // 8
``` 
 
#### Exponent Operator (Modern JS)
 
``` 
2 ** 3; // 8
``` 
 
#### Math.sqrt()
Square root.

 
``` 
Math.sqrt(25); // 5
``` 
 
### Absolute Values
#### Math.abs()
Removes the negative sign.

 
``` 
Math.abs(-10); // 10
``` 

### Min and Max
#### Math.max()
``` 
Math.max(3, 7, 2); // 7
``` 
#### Math.min()
 
``` 
Math.min(3, 7, 2); // 2
``` 
 
#### With Arrays (Very Useful)
 
``` 
let nums = [3, 7, 2];
Math.max(...nums);
Math.min(...nums);
``` 

### Trigonometry (Intro Level)
| Method | Description |
| ------ | ----------- |
| Math.sin() | Sine |
| Math.cos() | Cosine |
| Math.tan() | Tangent |

```
Math.sin(Math.PI / 2); // 1
```
JavaScript expects radians, not degrees.

### Common Math Use Cases
#### Dice Roll (1–6)
``` 
let roll = Math.floor(Math.random() * 6) + 1;
``` 
 
#### Grade Average
 
``` 
let avg = (85 + 90 + 78) / 3;
Math.round(avg);
``` 
#### Clamp a Value (Limit Range)
 
``` 
function clamp(num, min, max) {
  return Math.min(Math.max(num, min), max);
}
 
clamp(120, 0, 100); // 100
``` 

### Math Object vs Number Methods
| Feature | Math Object | Number |
| ------- | ----------- | ------ |
| Static methods | Yes | No |
| Instance methods | No | Yes |
| Example | Math.round(x) | num.toFixed(2) |

### Common Beginner Mistakes
- Trying to create new Math() ❌
- Forgetting to round random numbers
- Confusing Math.floor() vs Math.ceil()
- Forgetting radians in trig functions
- Off-by-one errors in random ranges
Best Practices
- Use Math.floor() for random integers
- Use constants like Math.PI instead of hardcoding
- Comment formulas for readability
- Test edge cases (0, negatives, large numbers)

### CS118 Key Takeaway
The JavaScript Math object provides reliable, built-in tools for calculations, rounding, and randomness, making it essential for interactive and data-driven programs.

## JavaScript 6 - If
### if

if works very similar to how it did in bash. You are testing an expression and implementing a flow to the actions.

Format:
```
if (expression) {
   Statement(s) to be executed if expression is true
}
```

index.htm:
```
<html>
   <body>     
      <script type>
            let age = 20;
         
            if( age > 16 ) {
               document.write("<b>Qualifies for driving</b>");
            }
      </script>      
      <p>Set the variable to a different value and then try...</p>
   </body>
</html>
```


### if ... else
 
Format:
``` 
if (expression) {
   Statement(s) to be executed if expression is true
} else {
   Statement(s) to be executed if expression is false
}
```
```
<html>
   <body>   
      <script>
            let age = 15;
         
            if( age > 16 ) {
               document.write("<b>Qualifies for driving</b>");
            } else {
               document.write("<b>Does not qualify for driving</b>");
            }
      </script>     
      <p>Set the variable to a different value and then try...</p>
   </body>
</html>
```

### if...else...else if

Format:
```
if (expression 1) {
   Statement(s) to be executed if expression 1 is true
} else if (expression 2) {
   Statement(s) to be executed if expression 2 is true
} else if (expression 3) {
   Statement(s) to be executed if expression 3 is true
} else {
   Statement(s) to be executed if no expression is true
}
```
```
<html>
   <body>   
      <script>
            let book = "maths";
            if( book == "history" ) {
               document.write("<b>History Book</b>");
            } else if( book == "maths" ) {
               document.write("<b>Maths Book</b>");
            } else if( book == "economics" ) {
               document.write("<b>Economics Book</b>");
            } else {
               document.write("<b>Unknown Book</b>");
            }
      </script>      
      <p>Set the variable to a different value and then try...</p>
   </body>
</html>
```

Lets put it together
```
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Pick a Book</title>
<script>
function checkBookAvailability() {
    var books = ["1984", "To Kill a Mockingbird", "The Great Gatsby", "Pride and Prejudice"];
    var userInput = document.getElementById("bookInput").value;
    var message = document.getElementById("message");
 
 
    if (books.includes(userInput)) {
        message.textContent = "Yes, we have " + userInput + " available!";
    } else {
        message.textContent = "Sorry, we do not have " + userInput + ".";
    }
}
</script>
</head>
<body>
<h1>Pick a Book</h1>
<p>Enter the title of the book you're looking for:</p>
<input type="text" id="bookInput">
<button onclick="checkBookAvailability()">Check Availability</button>
<p id="message"></p>
</body>
</html>
```

Explanation of the Code:
- HTML Structure: This simple HTML page has an input field for the user to enter a book title and a button that, when clicked, triggers the JavaScript function checkBookAvailability().
- JavaScript Function: The function checkBookAvailability() retrieves the user's input and compares it against a predefined list of books. It uses the .includes() method to check if the book is in the array. Depending on the result, it updates the text content of a paragraph (<p> element with the ID message) to display whether the book is available.
- Dynamic Response: The message is updated dynamically on the page without reloading, providing immediate feedback to the user.

## JavaScript 7 - Switch

### Switch Statement

The switch works similarly to how it did in Powershell or how the case works in BASH. The switch statement evaluates an expression, matching the expression's value against a series of case clauses, and executes statements after the first case clause with a matching value until a break statement is encountered. The default clause of a switch statement will be jumped to if no case matches the expression's value.

Format:

```
switch (expression) {
   case condition 1: statement(s)
   break;
   
   case condition 2: statement(s)
   break;
   ...
   
   case condition n: statement(s)
   break;
   
   default: statement(s)
}
```

```
<html>
   <body>   
      <script>
            let grade = 'A';
            document.write("Entering switch block<br />");
            switch (grade) {
               case 'A': document.write("Good job<br />");
               break;
            
               case 'B': document.write("Pretty good<br />");
               break;
            
               case 'C': document.write("Passed<br />");
               break;
            
               case 'D': document.write("Not so good<br />");
               break;
            
               case 'F': document.write("Failed<br />");
               break;
            
               default:  document.write("Unknown grade<br />")
            }
            document.write("Exiting switch block");
      </script>      
      <p>Set the variable to different value and then try...</p>
   </body>
</html>
```
Note: break is key above for getting out of the block and not going to the next line in the code.

Switch out if for switch from last example:

```
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Book Selector</title>
<script>
function checkBook() {
    var userInput = document.getElementById("bookInput").value.trim();
    var message = document.getElementById("message");
 
 
    switch (userInput) {
        case "1984":
            message.textContent = "Yes, we have '1984' available!";
            break;
        case "To Kill a Mockingbird":
            message.textContent = "Yes, we have 'To Kill a Mockingbird' available!";
            break;
        case "The Great Gatsby":
            message.textContent = "Yes, we have 'The Great Gatsby' available!";
            break;
        case "Pride and Prejudice":
            message.textContent = "Yes, we have 'Pride and Prejudice' available!";
            break;
        default:
            message.textContent = "Sorry, we do not have '" + userInput + "'.";
            break;
    }
}
</script>
</head>
<body>
<h1>Book Selector</h1>
<p>Type the title of the book you're looking for:</p>
<input type="text" id="bookInput" placeholder="Enter book title here">
<button onclick="checkBook()">Check Book</button>
<p id="message"></p>
</body>
</html>
```


## JavaScript 8 - Loops

### While Loops

Again similar to what we have done in other languages. In JavaScript is the while loop is to execute a statement or code block repeatedly as long as an expression is true. Once the expression becomes false, the loop end.

Format:

``` 
while (expression) {
   Statement(s) to be executed if expression is true
}
``` 
```
<html>
   <body>
      
      <script>
            let count = 0;
            document.write("Starting Loop ");
         
            while (count < 10) {
               document.write("Current Count : " + count + "<br />");
               count++;
            }
         
            document.write("Loop stopped!");
      </script>
      
      <p>Set the variable to different value and then try...</p>
   </body>
</html>
```

Note we are using the ++ operator to increase the value of the variable

### do loop
 
This loop is similar to the while loop except that the condition check happens at the end of the loop. 
This means that the loop will always be executed at least once, even if the condition is false.
 
Format:
```
do {
   Statement(s) to be executed;
} while (expression);
```

```
<html>
   <body>   
      <script>
            let count = 0;
            
            document.write("Starting Loop" + "<br />");
            do {
               document.write("Current Count : " + count + "<br />");
               count++;
            }
            
            while (count < 5);
            document.write ("Loop stopped!");
      </script>      
      <p> play with the variable.</p>
   </body>
</html>

```

### for loop

The 'for' loop is the most compact form of looping. It includes the following three important parts −

1. The loop initialization where we initialize our counter to a starting value. The initialization statement is executed before the loop begins.

2. The test statement which will test if a given condition is true or not. If the condition is true, then the code given inside the loop will be executed, otherwise the control will come out of the loop.

3. The iteration statement (++ operator) where you can increase or decrease your counter

Format:
```
for (initialization; test condition; iteration statement) {
   Statement(s) to be executed if test condition is true
}
```

```
<html>
   <body>      
      <script>
            let count;
            document.write("Starting Loop" + "<br />");
         
            for(count = 0; count < 10; count++) {
               document.write("Current Count : " + count );
               document.write("<br />");
            }         
            document.write("Loop stopped!");
      </script>      
      <p>PLay.</p>
   </body>
</html>
```

### More Practical Example: Iterating Over an Array
Let us say you have an array of fruits and you want to print each fruit's name to the console. Here is how you could use a for loop to achieve this:
```
var fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"];
 
 
for (var i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}
```

### For..In

The  for...in loop is used to loop through an object's properties. We saw this in powershell where items are objects with attribute that have a value. This reports on those properties.

Format:
```
for (variablename in object) {
   statement or block to execute
}
```
```
<html>
   <body>      
      <script>
            let aProperty;
            document.write("Object Properties<br /> ");        
            for (aProperty in navigator) {
               document.write(aProperty);
               document.write("<br />");
            }
            document.write ("Exiting from the loop!");
      </script>      
      <p>Set the variable to different object and then try...</p>
   </body>
</html>
```
The provided HTML code contains a JavaScript script that performs the following tasks:

1. Declaration of a Variable: It starts by declaring a variable aProperty using let, which will be used to store each property name of an object temporarily.
2. Displaying Initial Text: The script then uses document.write("Object Properties<br /> "); to output some text to the webpage. Here, it outputs "Object Properties" followed by a line break (<br />), which serves as a header or title for the list that follows.
3. Loop Through navigator Object: The for...in loop is used to iterate through all properties of the navigator object. The navigator object in JavaScript contains information about the browser and the operating system. For each property of the navigator object:
    - The property name is stored in the variable aProperty.
    - document.write(aProperty); outputs the name of the current property.
    - document.write("<br />"); inserts a line break after each property name, ensuring that each property is listed on a new line.
4. Post-Loop Message: After exiting the loop, document.write ("Exiting from the loop!"); is executed to display a message indicating that the loop has finished executing.
5. Instruction Note: Finally, there is a paragraph (<p>Set the variable to different object and then try...</p>) suggesting that the reader can modify the script by setting aProperty to a different object and seeing how the script behaves. This seems to encourage experimentation with different JavaScript objects to see what properties they contain.
In summary, this script is used to list all the properties of the navigator object on the webpage, helping someone understand what information is available within this object in their current browsing context.

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Person Properties Display</title>
    <script>
        function displayProperties() {
            let person = {
                name: "John Doe",
                age: 30,
                occupation: "Web Developer"
            };
 
 
            let output = "";
            for (var property in person) {
                if (person.hasOwnProperty(property)) {
                    output += property + ": " + person[property] + "<br />";
                }
            }
 
 
            document.getElementById("properties").innerHTML = output;
        }
    </script>
</head>
<body>
    <h1>Person's Details</h1>
    <button onclick="displayProperties()">Show Details</button>
    <p id="properties"></p>
</body>
</html>
```


## Objects

Objects are variables but objects can contain many values.

This code assigns many values (Fiat, 500, white) to a variable named car:
```
const car = {type:"Fiat", model:"500", color:"white"};
```


### Object Definition
You define (and create) a JavaScript object with an object literal:
```
const person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
```


Spaces and line breaks are not important. An object definition can span multiple lines:

```
const person = {
  firstName: "John",
  lastName: "Doe",
  age: 50,
  eyeColor: "blue"
};
```

### Object Properties
The name:values pairs in JavaScript objects are called properties:

| Property | Property Value |
| -------- | -------------- |
| firstName | John |
| lastName | Doe |
| age | 50 |
| eyeColor | blue |

### Accessing Object Properties
You can access object properties in two ways:
```
objectName.propertyName
```
or
```
objectName["propertyName"]
```

### Object Methods
Objects can also have methods.

Methods are actions that can be performed on objects.

Methods are stored in properties as function definitions.

| Property | Property Value |
| -------- | -------------- |
| firstName | John |
| lastName | Doe |
| age | 50 |
| eyeColor | blue |
| fullName | function() {return this.firstName + " " + this.lastName;} |

```
const person = {
  firstName: "John",
  lastName : "Doe",
  id       : 5566,
  fullName : function() {
    return this.firstName + " " + this.lastName;
  }
};
```

In the example above, this refers to the person object:

this.firstName means the firstName property of person.

this.lastName means the lastName property of person.

### What is this?
In JavaScript, the this keyword refers to an object.

Which object depends on how this is being invoked (used or called).

The this keyword refers to different objects depending on how it is used:

| ----------------------------------------------- |
| In an object method, this refers to the object. |
| Alone, this refers to the global object. |
| In a function, this refers to the global object. |
| In a function, in strict mode, this is undefined. |
| In an event, this refers to the element that received the event. |
| Methods like call(), apply(), and bind() can refer this to any object. |


### Exercise:
Alert "John" by extracting information from the person object.
```
const person = {
  firstName: "John",
  lastName: "Doe"
};

alert(WHAT GOES HERE?);
```
answer: 
```
alert(`${person.firstName} ${person.lastName}`);;
```

## JavaScript 9 - Events

HTML Events
An HTML event can be something the browser does, or something a user does.

Here are some examples of HTML events:

- An HTML web page has finished loading
- An HTML input field was changed
- An HTML button was clicked
Often, when events happen, you may want to do something.

JavaScript lets you execute code when events are detected.

HTML allows event handler attributes, with JavaScript code, to be added to HTML elements.

With single quotes:

```
<button onclick="document.getElementById('demo').innerHTML = Date()">The time is?</button>
```


In the example above, the JavaScript code changes the content of the element with id="demo".

In the next example, the code changes the content of its own element (using this.innerHTML):

```
<button onclick="this.innerHTML = Date()">The time is?</button>
```
In JavaScript, innerHTML is a property of an element in the HTML DOM that gets or sets an element's HTML content (inner HTML). When you use innerHTML, you can read the current HTML content of the element, or you can insert new HTML content into the element. This makes innerHTML a powerful tool for dynamically modifying the content of a webpage without reloading the page.

### Reading HTML Content
You can access the innerHTML property to retrieve the current HTML content of an element. For example:
```
var content = document.getElementById("myElement").innerHTML;
console.log(content);
```

This code snippet retrieves the HTML content inside the element with the ID myElement and logs it to the console.

### Setting HTML Content
You can also use innerHTML to set or change the HTML content inside an element:
```
document.getElementById("myElement").innerHTML = '<p>New content added!</p>';
```

This will replace whatever content was previously inside myElement with a new paragraph containing "New content added!".

### Advantages and Uses
- Dynamic Content: innerHTML helps add dynamic content to a webpage. This can include user-generated content, such as comments or form submissions, or content from external sources like APIs.
- Manipulating Page Structure: It can add, remove, or change elements within a page, which is handy for creating interactive and responsive UI elements.
### Considerations
- Security Risks: One important consideration when using innerHTML is the risk of cross-site scripting (XSS) attacks. Since innerHTML parses the content it receives as HTML, malicious content could be executed if not properly sanitized.
- Performance: Overusing innerHTML to manipulate the DOM can lead to performance issues, especially if large amounts of HTML are added or manipulated frequently. It also causes a re-parse and reflow of the page's content, which might be inefficient in some scenarios.
- Alternative Methods: For safer and sometimes more efficient updates to the DOM, consider using textContent when you only need to manipulate text (as it does not parse the text as HTML) or methods like createElement(), appendChild(), and removeChild() for more controlled and potentially safer manipulations of the DOM.

### Common HTML Events
Here is a list of some common HTML events:

| Event | Description |
| ----- | ----------- |
| onchange | An HTML element has been changed |
| onclick | The user clicks an HTML element |
| onmouseover | The user moves the mouse over an HTML element |
| onmouseout | The user moves the mouse away from an HTML element |
| onkeydown | The user pushes a keyboard key |
| onload | The browser has finished loading the page |

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mouseover Example</title>
    <style>
        #hoverDiv {
            width: 300px;
            height: 100px;
            background-color: lightblue;
            text-align: center;
            line-height: 100px;
            font-size: 20px;
            border: 2px solid navy;
        }
    </style>
    <script>
        function changeText(element) {
            element.innerHTML = "Mouse is over me!";
        }
 
 
        function resetText(element) {
            element.innerHTML = "Hover over me!";
        }
    </script>
</head>
<body>
    <div id="hoverDiv" 
         onmouseover="changeText(this)" 
         onmouseout="resetText(this)">
        Hover over me!
    </div>
</body>
</html>
```


### Explanation
- HTML Structure: The page includes a `<div>` element styled to be clearly visible and sizable enough for easy hovering. This `<div>` has id="hoverDiv".
- CSS Styling: The `<div>` is styled with a background color, size, and center alignment to make the effect visually clear. It also has a border for better visibility.
- JavaScript Functions:
- changeText(element): This function changes the inner HTML of the `<div>` to "Mouse is over me!" when the mouse hovers over the `<div>`.
- resetText(element): This function resets the inner HTML back to "Hover over me!" when the mouse leaves the `<div>`.
- Event Handlers:
- `onmouseover="changeText(this)"`: This event handler calls the changeText function, passing the current element (this) as an argument when the mouse pointer enters the `<div>`.
- `onmouseout="resetText(this)"`: This event handler calls the resetText function, also passing the current element when the mouse pointer leaves the `<div>`.

## JavaScript 10 - Arrays

### The Difference Between Arrays and Objects
In JavaScript, arrays use numbered indexes.  

In JavaScript, objects use named indexes.

### Creating an Array
Using an array literal is the easiest way to create a JavaScript Array.

Syntax:
```
const array_name = [item1, item2, ...]; 
const cars = ["Ford", "Volvo", "BMW"];
```
 
or
 
```
const cars = [
  "Ford",
  "Volvo",
  "BMW"
];
```
You can also create an array and then provide the elements:

```
const cars = [];
cars[0]= "Ford";
cars[1]= "Volvo";
cars[2]= "BMW";
```
Accessing the Array to set other variables

```
const cars = ["Ford", "Volvo", "BMW"];
let car = cars[0];
```
Changing the values in the array

```
const cars = ["Ford", "Volvo", "BMW"];
cars[1] = "Chevy";
```
Objects use names to access it's "members". In this example, person.firstName returns John:

```
const person = {firstName:"John", lastName:"Doe", age:46};
```

### JavaScript Objects
JavaScript uses names to access object properties.

The length property of an array returns the length of an array (the number of array elements).

```
<!DOCTYPE html>
<html>
<body>
<h1>JavaScript Arrays</h1>
<h2>The length Property</h2>
 
 
<p>The length property returns the length of an array:</p>
 
 
<p id="demo"></p>
 
 
<script>
const fruits = ["Banana", "Orange", "Apple", "Mango"];
let size = fruits.length;
document.getElementById("demo").innerHTML = size;
</script>
 
 
</body>
</html>
```

Accessing the first is straight forward:


```
<!DOCTYPE html>
<html>
<body>
<h1>JavaScript Arrays</h1>
<h2>Bracket Indexing</h2>
 
 
<p>JavaScript array elements are accesses using numeric indexes (starting from 0).</p>
 
 
<p id="demo"></p>
 
 
<script>
const fruits = ["Banana", "Orange", "Apple", "Mango"];
document.getElementById("demo").innerHTML = fruits[0];
</script>
 
 
</body>
</html>
```

Accessing the last you need some math:
```
const fruits = ["Banana", "Orange", "Apple", "Mango"];
let fruit = fruits[fruits.length - 1];
```

Adding to an array
```
const fruits = ["Banana", "Orange", "Apple"];
fruits.push("Lemon");  // Adds a new element (Lemon) to fruits
```
 
or
 
```
const fruits = ["Banana", "Orange", "Apple"];
fruits[fruits.length] = "Lemon";  // Adds "Lemon" to fruits
```

or
 
```
const fruits = ["Banana", "Orange", "Apple"];
fruits[6] = "Lemon";  // Creates undefined "holes" in fruits
```

Last example can create gaps in the list


## Simple example of an array
```
<html>
   <head>
   </head>
   
   <body>
      <Script>
let fruits = [ "apple", "orange", "mango" ];  
document.write(fruits[0] + " is the first" + "</br>");
document.write(fruits[1] + " is the second" + "</br>");
document.write(fruits[2] + " is the third" + "</br>");
</Script>
</body>
</html>
```

## REGEX

### JavaScript Regular Expressions (Regex)
Overview
A regular expression (regex) is a pattern used to search, match, validate, extract, or replace text. In JavaScript, regex is commonly used for:

- Validating user input (email, passwords, IDs)
- Searching text
- Replacing parts of strings
- Extracting values from strings
Regex in JavaScript is built directly into the language and works closely with string methods.

### Creating a Regular Expression in JavaScript
#### 1) Regex Literal (Most Common)
``` 
let pattern = /abc/;
``` 
 
#### 2) RegExp Object
 
``` 
let pattern = new RegExp("abc");
``` 
Best practice: Use regex literals unless you need to build patterns dynamically.

### Basic Regex Methods in JavaScript
#### test() – Returns true or false
 
```
let pattern = /cs118/;
pattern.test("Welcome to cs118");
```
Result: true

#### match() – Returns matching results
 
```
let text = "Course CS118 is great";
text.match(/CS118/);
```
#### replace() – Replace matched text
 
```
let text = "Phone: 555-1234";
text.replace(/\d/g, "X");
```
Result:

 
```
Phone: XXX-XXXX
```
 
#### search() – Returns position of match
 
```
"Hello World".search(/World/);
```

### Common Regex Metacharacters
| Symbol | Meaning |
| ------ | ------- |
| . | Any character |
| ^ | Start of string |
| $ | End of string |
| * | 0 or more |
| + | 1 or more |
| ? | 0 or 1 |
| {n} | Exactly n times |
| {n,m} | Between n and m |
| ` | ` |
| () | Group |
| [] | Character set |


### Character Classes
| Pattern | Matches |
| ------- | ------- |
| \d | Digit (0–9) |
| \D | Non-digit |
| \w | Letter, number, underscore |
| \W | Non-word |
| \s | Whitespace |
| \S | Non-whitespace |

### Quantifiers (How Many?)
 
```
/\d+/     // one or more digits
/\d{5}/   // exactly 5 digits
/\d{2,4}/ // 2 to 4 digits
```

### Anchors (Validation)
Anchors ensure the entire string matches the pattern.

 
```
/^\d{5}$/   // exactly 5 digits
```

### Flags (Very Important)

| Flag | Meaning |
| ---- | ------- |
| g | Global (find all matches) |
| i | Case-insensitive |
| m | Multiline |

Example
``` 
"CS118 cs118".match(/cs118/gi);
```

### Practical Examples
#### Validate Email (Basic)
``` 
let emailPattern = /^\w+@\w+\.\w+$/;
emailPattern.test("user@example.com");
``` 
#### Validate ZIP Code
 
``` 
/^\d{5}$/.test("02446");
``` 
 
#### Extract Numbers from a String
 
``` 
let text = "Order 123 shipped on 5/12";
text.match(/\d+/g);
``` 
#### Replace Multiple Spaces
 
``` 
"Too    many   spaces".replace(/\s+/g, " ");
``` 
 
#### Capture Groups
Capture groups allow you to extract parts of a match.

 
``` 
let text = "Name: Owen, Score: 95";
let result = text.match(/Name:\s(\w+),\sScore:\s(\d+)/);
 
result[1]; // "Owen"
result[2]; // "95"
``` 
#### Named Capture Groups (Modern JavaScript)
 
``` 
let text = "ID: 42";
let match = text.match(/ID:\s(?<id>\d+)/);
 
match.groups.id; // "42"
``` 

#### Regex with Forms (Very Common Use Case)
 
``` 
let password = "Pass123";
 
if (!/^(?=.*\d).{6,}$/.test(password)) {
  alert("Password must be at least 6 characters and contain a number");
}
``` 

### Regex vs Wildcards (Important Distinction)
| Feature | Regex | Wildcards |
| ------- | ----- | --------- |
| Complexity | High | Low |
| Use case | Validation, parsing | Filenames |
| Supported in JS | Yes | No |

### Common Beginner Mistakes
- Forgetting ^ and $ when validating
- Not using the g flag when needed
- Overcomplicating patterns
- Confusing regex with wildcards
- Forgetting regex is case-sensitive by default
### Best Practices
- ✔ Start simple
- ✔ Test patterns incrementally
- ✔ Use comments for complex regex
- ✔ Prefer readability over cleverness
- ✔ Validate input both client-side and server-side
### Key Takeaway for Students
JavaScript regular expressions provide a powerful way to validate, search, and transform text, but they should be written clearly and used carefully.

## What is a runtime environment?

In JavaScript, a runtime environment refers to the infrastructure that executes JavaScript code. It provides all the necessary tools and capabilities for JavaScript to function, including the JavaScript engine, APIs, and event loop mechanisms. Essentially, it's where your JavaScript code runs and interacts with other components, like the operating system or the web browser.

Here are some key aspects of JavaScript runtime environments:

### 1. JavaScript Engine
- The core component of any JavaScript runtime is the JavaScript engine, such as Google Chrome's V8, Firefox's SpiderMonkey, or Safari's JavaScriptCore. These engines parse, compile, and execute JavaScript code. They convert JavaScript into machine code, either through interpretation or just-in-time compilation, allowing it to run on the host hardware.
### 2. Host Environment APIs
- Beyond the core language, runtime environments provide various APIs that JavaScript can interact with to perform tasks which are not part of the ECMAScript specifications. These APIs include:
    - DOM (Document Object Model) APIs for manipulating web pages (specific to web browsers).
    - Timers APIs like setTimeout and setInterval.
    - HTTP requests APIs like the fetch API in browsers or http module in Node.js.
    - Filesystem access APIs in Node.js, which allow manipulation of the file system.
    - Other hardware interaction such as accessing the GPS, camera, etc., in mobile browsers or through frameworks like Electron in desktop applications.
### 3. Event Loop and Callback Queue
- JavaScript is single-threaded, meaning it can only execute one block of code at a time. The event loop is what allows JavaScript to perform non-blocking I/O operations, despite its single-threaded nature. It works by polling a queue of events and executing callbacks associated with these events.
### 4. Concurrency and Threading Model
- Although JavaScript is single-threaded, runtime environments can handle concurrency through mechanisms like Web Workers in browsers or Worker Threads in Node.js. These features enable tasks to be carried out in parallel threads separate from the main execution thread.
### Examples of JavaScript Runtime Environments
- Web Browsers: Such as Chrome, Firefox, Safari, and Edge, where JavaScript interacts with the web page and browser through the DOM and other web APIs.
- Node.js: A server-side runtime that allows JavaScript to run on servers and access file systems, handle network operations, and more.
- Other: Frameworks like Electron for desktop applications, or platforms like React Native for mobile app development, also provide custom runtime environments for JavaScript.
In summary, the runtime environment is critical as it extends the capabilities of JavaScript beyond what is defined in the ECMAScript standard, enabling it to be a versatile tool in both client-side and server-side programming.

## What is a library?

In JavaScript, a library is a collection of pre-written JavaScript code that provides functionality to help developers implement features more efficiently and effectively in their projects. These libraries consist of functions, methods, and objects that can be included and reused in your own JavaScript code. Here are some of the core characteristics and purposes of JavaScript libraries:

1. Simplification of Complex Tasks: Libraries often simplify complex tasks, such as AJAX calls, DOM manipulation, animations, or handling cross-browser compatibility issues, by providing a higher-level interface than raw JavaScript.

2. Code Reusability: They promote code reusability. Rather than rewriting common functionalities, developers can include a library and use its functions.

3. Efficiency: Libraries can make development faster and more efficient by providing robust solutions that have been tested and optimized by other developers.

4. Community Support: Many JavaScript libraries have strong community support, which means a wealth of tutorials, forums, and third-party plugins are available.

Some popular JavaScript libraries include:

1. jQuery: Simplifies HTML document traversing, event handling, animating, and Ajax interactions.

2. React: A library for building user interfaces, particularly single-page applications where you need a fast and interactive user interface.

Lodash: Provides utility functions for common programming tasks using a functional programming paradigm.

3. D3.js: Helps in manipulating documents based on data, which is highly effective for creating complex visualizations.

Libraries differ from JavaScript frameworks in that libraries provide specific, reusable functionality and are used as part of a larger application's codebase, whereas frameworks dictate the structure of an entire application and how the code should be organized.

Here's a basic HTML page that includes jQuery from a CDN (Content Delivery Network) and uses it to change the text of a paragraph element:

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>jQuery Example</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#changeTextButton').click(function() {
                $('#textToChange').text('The text has been changed!');
            });
        });
    </script>
</head>
<body>
    <h1>Simple jQuery Example</h1>
    <p id="textToChange">Click the button to change this text.</p>
    <button id="changeTextButton">Change Text</button>
</body>
</html>
```

Here's what each part does:

1. Including jQuery: The `<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>` line in the `<head>` includes the jQuery library in the webpage. It's hosted on Google's CDN, which makes it easy to include without having to host the library yourself.
2. jQuery Script: The script inside the `<script>` tags waits for the document to be fully loaded ($(document).ready()). Once it's ready, it sets up an event listener for clicks on the button with the ID changeTextButton. When the button is clicked, the text of the paragraph with the ID textToChange is changed to "The text has been changed!".
3. HTML Elements: The body of the HTML includes a heading, a paragraph, and a button. The paragraph and the button have IDs that the jQuery script uses to identify them.
This example showcases how jQuery can make it easy to manipulate DOM elements with minimal code. It is particularly useful for such tasks, making JavaScript development quicker and less verbose.

Here are some of the most commonly used JavaScript libraries, their primary uses, and reference links to their official documentation or homepages:

1. jQuery
    Use: Simplifies HTML DOM tree traversal and manipulation, event handling, and Ajax. It's great for adding interactive elements to websites with less code and handling cross-browser inconsistencies.
    Reference: jQuery Documentation
2. React
    Use: A library for building user interfaces, particularly dynamic single-page applications (SPAs). React is known for its virtual DOM feature that optimizes updates to the actual DOM, making it very efficient.
    Reference: React Documentation
3. Lodash
    Use: Provides utility functions for common programming tasks including manipulating arrays, numbers, objects, strings, etc., based on functional programming.
    Reference: Lodash Documentation
4. D3.js
    Use: A library for producing dynamic, interactive data visualizations in web browsers. It uses SVG, HTML5, and CSS and is highly favored for the capability to use real data to drive the generation and control of the visualization.
    Reference: D3.js Documentation
5. Moment.js
    Use: Parses, validates, manipulates, and displays dates and times in JavaScript. It's very useful for handling dates and times in various formats and locales.
    Reference: Moment.js Documentation
6. Chart.js
    Use: Simple yet flexible charting library that provides eight different types of charts which are beautifully animated and highly customizable. It's perfect for adding simple but effective visual data representations.
    Reference: Chart.js Documentation
7. Three.js
    Use: A library for creating 3D graphics in the web browser using WebGL. It provides `<canvas>`, `<svg>`, CSS3D or WebGL renderers which can be seamlessly integrated into existing web pages.
    Reference: Three.js Documentation
8. Vue.js
    Use: Although often considered a framework, Vue.js can also be used as a library to build web interfaces. It is very lightweight and integrates seamlessly with other libraries or existing projects. It is particularly known for its simplicity and detailed documentation.
    Reference: Vue.js Documentation

These libraries are staples in many web development projects and offer robust solutions for a range of common and complex tasks in web application development.


## What is a framework?

The terms "library" and "framework" in software development, while both are reusable sets of code, have a fundamental difference in how they are used and the level of control they offer to the developer:

### Library
- Definition: A library is a collection of functions and procedures that can be used by other programs. It provides specific, often repetitive, functionalities that are designed to be used as is.
- Control: When you use a library, you are in charge of the flow of the application. You decide when to call the library. It does not dictate the architecture or framework of your project.
- Usage: You use a library for tasks that need specific behavior encapsulated within a set of functions without influencing the overall architecture. For example, you might use a charting library like Chart.js to add visualizations to your application.
### Framework
- Definition: A framework, on the other hand, provides not only reusable pieces of code but also a blueprint for the entire application. It dictates the architecture of your software.
- Control: In a framework, the inversion of control (also known as the Hollywood Principle: "Don't call us, we'll call you") applies. This means the framework calls your code, not the other way around.
- Usage: You use a framework to define the overall structure of your application. Frameworks often come with built-in support for certain functionalities like database handling, URL routing, and session management. Examples include React for front-end web development or Django for Python-based web development.
### Summary
In essence, while a library offers specific functionalities and allows you to maintain control over your application, a framework defines a way of working with its own rules and patterns, often leading to faster development times at the cost of flexibility. This distinction helps developers choose between them based on the needs of a particular project, whether they need just a bit of additional functionality (library) or a full set of tools and guidelines to structure an entire application (framework).

Several frameworks have gained prominence due to their robust features, active community support, and suitability for a variety of applications. Here are some of the most widely used frameworks across different programming languages:

### Web Development
1. React (JavaScript)
- Primarily a library, but often referred to and used as a framework for building interactive user interfaces. Known for its virtual DOM feature for efficient updates.
- https://reactjs.org/

2. Angular (TypeScript)
- A platform and framework for building client-side single-page web applications. It includes a comprehensive solution with tools and libraries that cover everything from routing, forms, and client-server communication.
- https://angular.io/

3. Vue.js (JavaScript)
- A progressive framework used for building user interfaces. Unlike Angular, it is designed from the ground up to be incrementally adoptable.
- https://vuejs.org/

4. Ruby on Rails (Ruby)
- A server-side web application framework written in Ruby under the MIT License. It is a model-view-controller (MVC) framework, providing default structures for a database, a web service, and web pages.
- https://rubyonrails.org/

5. Django (Python)
- A high-level Python web framework that encourages rapid development and clean, pragmatic design. It includes an ORM, routing, and authentication tools out of the box.
- https://www.djangoproject.com/

### Mobile Development
1. Flutter (Dart)
- Google’s UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.
- https://flutter.dev/

2. React Native (JavaScript)
- Allows developers to create native apps for Android and iOS using React. It uses the same design as React, letting you compose a rich mobile UI from declarative components.
- https://reactnative.dev/

### Backend Development
1. Express (JavaScript)
- A minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications.
- https://expressjs.com/

2. Spring Boot (Java)
- Makes it easy to create stand-alone, production-grade Spring based Applications that you can "just run". It takes an opinionated view of the Spring platform and third-party libraries so you can get started with minimum fuss.
- https://spring.io/projects/spring-boot

### Full-Stack Development
1. Meteor (JavaScript)
- A full-stack JavaScript platform for developing modern web and mobile applications. Meteor includes a key set of technologies for building connected-client reactive applications, a build tool, and a curated set of packages from the Node.js and JavaScript community.
- https://www.meteor.com/

These frameworks offer extensive functionality and are chosen based on project requirements, developer preference, language familiarity, and the specific needs of the application being developed. Each framework often comes with a substantial ecosystem of tools and extensions that enhance its capabilities.

An example of how to create a basic React webpage. This example will demonstrate a simple React component that displays a button and a message. When the button is clicked, the message changes.

### Setting up the React Environment
To run a React application, you typically need a development environment set up with Node.js, npm (or yarn), and a build tool like Create React App, which simplifies the setup. However, for the sake of simplicity, this will show you how to create a React component using script tags directly in an HTML file, which is suitable for learning and small experiments.

### Example: Simple React Component
Here's the complete HTML file with embedded React and Babel scripts, allowing you to use JSX directly in the browser:

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>React Example</title>
    <!-- Load React. -->
    <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
    <script src="https://unpkg.com/react@17/umd/react.development.js"></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"></script>
    <!-- Load Babel Compiler -->
    <script src="https://unpkg.com/@babel/standalone@7.8.7/babel.min.js"></script>
</head>
<body>
    <div id="app"></div>
    <script type="text/babel">
        class App extends React.Component {
            constructor(props) {
                super(props);
                this.state = {
                    message: "Hello, world!"
                };
            }
 
 
            changeMessage = () => {
                this.setState({
                    message: "Button clicked!"
                });
            }
 
 
            render() {
                return (
                    <div>
                        <h1>{this.state.message}</h1>
                        <button onClick={this.changeMessage}>Click me!</button>
                    </div>
                );
            }
        }
 
 
        ReactDOM.render(<App />, document.getElementById('app'));
    </script>
</body>
</html>
```

### Explanation of the Code:
- React and ReactDOM: The scripts include React and ReactDOM from a CDN. These are the core libraries needed to use React in the browser.
- Babel: The Babel script allows us to use JSX directly in the browser. JSX is a syntax extension for JavaScript recommended for use with React to describe the UI.
- App Component: This is a simple React class component that maintains its own state. It displays a message and a button on the webpage.
- changeMessage Method: This method updates the component's state when the button is clicked, which triggers a re-render of the component to update the displayed message.
- ReactDOM.render: This function renders the App component inside the div with the id of app.



