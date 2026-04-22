# Module 3 Notes (Javascript)

## HTML Cheat Sheet

### 1) Basic HTML Page Template
```
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Page</title>
</head>
<body>
  <h1>Hello, world!</h1>
</body>
</html>
```

### 2) Text Content
```
<h1>Main Heading</h1>
<h2>Section Heading</h2>
<p>This is a paragraph.</p>
<p><strong>Bold</strong> and <em>italic</em>.</p>
<br /> <!-- line break -->
<hr /> <!-- horizontal line -->
```

### 3) Links
```
<a href="https://www.boston.com">Boston.com</a>
<a href="page2.html">Go to Page 2</a>
<a href="https://www.google.com" target="_blank">Open in new tab</a>
```

### 4) Images
```
<img src="image.jpg" alt="Description of image" width="300" />
```
Tip: Always include alt text (accessibility).

### 5) Lists

#### Unordered (bullets)
```
<ul>
  <li>Item one</li>
  <li>Item two</li>
</ul>
```
#### Ordered (numbers)
```
<ol>
  <li>Step one</li>
  <li>Step two</li>
</ol>

```
### 6) Tables
```
<table border="1">
  <tr>
    <th>Name</th>
    <th>Score</th>
  </tr>
  <tr>
    <td>Owen</td>
    <td>95</td>
  </tr>
</table>
```
### 7) Forms (Input)
```
<form>
  <label for="name">Name:</label>
  <input id="name" type="text" placeholder="Enter name" />
 
  <label for="email">Email:</label>
  <input id="email" type="email" />
 
  <label for="pw">Password:</label>
  <input id="pw" type="password" />
 
  <button type="submit">Submit</button>
</form>
```
Common input types:
- text, email, password, number, date, checkbox, radio
### 8) Buttons
```
<button>Click Me</button>
<button type="button">Button</button>
<button type="submit">Submit Form</button>
```
### 9) Page Layout Tags
```
<header>Header area</header>
<nav>Navigation links</nav>
<main>Main content</main>
<section>Section</section>
<article>Article</article>
<aside>Side content</aside>
<footer>Footer area</footer>
    
```
### 10) Div and Span
- <div> = block container
- <span> = inline container

```
<div>
  <p>This is inside a div.</p>
</div>
 
<p>This word is <span>inside a span</span>.</p>

```
### 11) Comments
```
<!-- This is an HTML comment -->

```
### 12) Add CSS (Quick)
#### Inline CSS (quick but not best practice)
```
<p style="color: red;">Red text</p>

```
#### Internal CSS
```
<style>
  body { font-family: Arial; }
  h1 { color: blue; }
</style>
```
#### External CSS
```
<link rel="stylesheet" href="style.css" />

```
### 13) Add JavaScript (Quick)
#### Inline script
```
<script>
  alert("Hello!");
</script>
```
#### External script
```
<script src="script.js"></script>
```
### 14) “Must Know” Attributes

| Attribute | Used For | Example |
| --------- | -------- | ------- |
| id | unique identifier | id="header" |
| class | group styling | class="card" |
| href | link target | href="page.html" |
| src | image/script source | src="pic.jpg" |
| alt | image description | alt="Logo" |
| title | hover text | title="Info" |

## Introduction
JavaScript is a high-level, interpreted programming language. Defining it further by comparison with machine language. C and C++ is a low-level language that speaks to the hardware more directly and deals with items like memory management. A high-level language is on the other extreme, running on top of other software or what we can call levels of abstraction. It is a scripting language and is run directly through the use of a JavaScripting engine as opposed to JAVA which is a completely different language and requires you to compile code before you run it.

JavaScript is a highly used language currently, as it is preferred for web development. This is closely followed by SQL and Python, as these are the languages of the internet. It is also a leader in mobile game development through node.js. Node.js is an open-source server environment. Node.js is cross-platform and runs on Windows, Linux, Unix, and macOS. Node.js is a back-end JavaScript runtime environment. Node.js runs on the V8 JavaScript Engine and executes JavaScript code outside a web browser. The V8 JavaScript engine is the same engine inside the Chrome browser.

JavaScript conforms to the ECMAScript specification. The ECMAScript specification is a standardized specification of a scripting language developed by Brendan Eich of Netscape; initially named Mocha, then LiveScript, and finally JavaScript. In December 1995, Sun Microsystems and Netscape announced JavaScript in a press release. -  https://en.wikipedia.org/wiki/ECMAScript#:~:text=The%20ECMAScript%20specification%20is%20a,JavaScript%20in%20a%20press%20release.

| Browser | Name of Javascript Engine |
| ------- | ------------------------- |
| Google Chrome | V8 |
| Edge (Internet Explorer) | Chakra |
| Mozilla Firefox | Spider Monkey |
| Safari | Javascript Core Webkit |

JavaScript is considered a full-stack language. A full-stack web developer is a person who can develop both client and server software. In addition to mastering HTML and CSS, they also know how to Program a browser (using JavaScript, jQuery, Angular, or Vue) and Program a server (using PHP, ASP, Python, or Node). So to be a full stack developer I will need to show you some HTML and CSS  in this module.

### Current JavaScript Version
- The current JavaScript version is ES2025.
- ECMAScript is the official name of the JavaScript standard.
- JavaScript was invented by Brendan Eich in 1995 and became an ECMA standard in 1997.
- The first ECMAScript versions were abbreviated by numbers. (ES1, ES2, ES3, ES5, ES6).
- From 2016, versions are named by year (ECMAScript 2016, 2017, 2018, ..., 2025).

#### What is a front-end developer?
A front-end developer is a type of programmer who focuses on the development of the user interface (UI) and user experience (UX) of a website or web application. They work on the client side of web development, which involves writing code that runs in a user's web browser.

Front-end developers use a combination of programming languages such as HTML, CSS, and JavaScript to create interactive and visually appealing web pages. They are responsible for implementing designs provided by UI/UX designers, ensuring that the website or web application is responsive, accessible, and works across different devices and browsers.

In addition to coding, front-end developers may collaborate with back-end developers to integrate front-end components with server-side logic and databases. They often use frameworks and libraries such as React.js, Angular, or Vue.js to streamline the development process and enhance the functionality of their projects.

Overall, front-end developers play a crucial role in creating the visual and interactive aspects of websites and web applications, making them user-friendly and engaging for visitors.

#### What is a back-end developer?

A back-end developer is a type of programmer who specializes in building and maintaining the server-side logic, databases, and other components that power the functionality of websites, web applications, and software systems. While front-end developers focus on the user interface (UI) and user experience (UX) aspects that users interact with directly, back-end developers work on the behind-the-scenes aspects that enable those interactions to happen.

Back-end developers typically work with programming languages such as Python, Java, Ruby, PHP, or Node.js, as well as frameworks and technologies like Django, Spring Boot, Ruby on Rails, Laravel, or Express.js. They are responsible for tasks such as:

- Implementing server-side logic: Writing code that processes requests from the front end interacts with databases, performs calculations, and generates dynamic content.
- Database management: Designing and maintaining databases, writing queries to retrieve and manipulate data, and ensuring data integrity and security.
- API development: Creating application programming interfaces (APIs) to allow communication between different software components or external services.
- Performance optimization: Optimizing code and infrastructure to ensure efficient handling of requests, minimize latency, and scale the application as needed.
- Security: Implementing measures to protect against common security threats such as SQL injection, cross-site scripting (XSS), and data breaches.

Back-end developers often work closely with front-end developers, designers, and other stakeholders to ensure that the entire system functions seamlessly and meets the requirements of the project. Together with front-end developers, they form a crucial part of the development team responsible for building complex web applications and software systems.


#### What is a full-stack developer?

A full-stack developer is someone who possesses skills and expertise in both front-end and back-end web development. They are proficient in working with both the client-side and server-side components of web applications, allowing them to handle all aspects of development, from designing user interfaces to managing databases and server infrastructure.

In essence, a full-stack developer is capable of developing a complete web application independently, from the user interface to the server-side logic and database management. They understand the entire web development process and can work on all layers of the technology stack.

The skills required to become a full-stack developer typically include:

1. Front-end development: Proficiency in HTML, CSS, and JavaScript, as well as knowledge of front-end frameworks and libraries such as React.js, Angular, or Vue.js. Full-stack developers are adept at creating responsive and visually appealing user interfaces.
2. Back-end development: Strong understanding of server-side programming languages such as Python, Java, Ruby, PHP, or Node.js, along with expertise in back-end frameworks and technologies like Django, Spring Boot, Ruby on Rails, Laravel, or Express.js. They can develop server-side logic, manage databases, and create APIs to support client-server communication.
3. Database management: Knowledge of database systems such as SQL databases (e.g., MySQL, PostgreSQL) or NoSQL databases (e.g., MongoDB, Redis) and proficiency in writing database queries, designing schemas, and ensuring data integrity and security.
4. Version control: Familiarity with version control systems like Git and understanding of collaborative development workflows, enabling them to work effectively in team environments.
5. DevOps and deployment: Basic understanding of server administration, deployment processes, and cloud platforms such as AWS, Azure, or Google Cloud Platform. Full-stack developers can deploy and manage applications on servers, ensuring they are secure, scalable, and performant.

Full-stack developers are versatile professionals who can take on various roles within a development team and contribute to all stages of the software development lifecycle. They are in high demand in the tech industry due to their ability to work on end-to-end development projects and their capacity to bridge the gap between front-end and back-end development.

## JavaScript vs. Java

JavaScript and Java are both popular programming languages, but they have different purposes, characteristics, and uses. Here are the key differences:

### JavaScript
1. Purpose and Use:
    Primarily used for adding interactive behavior to web pages.
    Commonly used in web development for front-end and increasingly for back-end (e.g., Node.js).
2. Execution Environment:
    Runs in web browsers and on servers via environments like Node.js.
3. Syntax and Language Type:
    Dynamically typed, meaning variable types are determined at runtime.
    Interpreted language (though modern engines often use just-in-time compilation).
4. Integration:
    Directly embedded in HTML and executed within the browser.
    Works alongside HTML and CSS in web development.
5. Concurrency:
    Uses event-driven, non-blocking I/O model through the event loop (asynchronous programming).

### Java
1. Purpose and Use:
    General-purpose programming language.
    Widely used in enterprise environments, Android app development, and large systems.
2. Execution Environment:
    Runs on the Java Virtual Machine (JVM), which makes it platform-independent.
    Requires compilation to bytecode before execution on the JVM.
3. Syntax and Language Type:
    Statically typed, meaning variable types are known at compile time.
    Compiled language (source code is compiled into bytecode, which runs on the JVM).
4. Integration:
    Not directly embedded in HTML; usually used to build standalone applications, back-end servers, and Android applications.
    Often used with frameworks like Spring for web applications.
5. Concurrency:
    Uses multi-threading capabilities for handling concurrency (synchronous programming).

### Summary
- JavaScript is mainly used for web development to create interactive web pages and can run directly in browsers. It's dynamically typed and follows an event-driven model.
- Java is a versatile, compiled language used for building complex, large-scale applications, especially on the server side and for Android apps. It uses static typing and runs on the JVM, making it platform-independent.

Despite their similar names, they are quite different in terms of their usage, syntax, and runtime environments.


