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
    - Primarily used for adding interactive behavior to web pages.
    - Commonly used in web development for front-end and increasingly for back-end (e.g., Node.js).
2. Execution Environment:
    - Runs in web browsers and on servers via environments like Node.js.
3. Syntax and Language Type:
    - Dynamically typed, meaning variable types are determined at runtime.
    - Interpreted language (though modern engines often use just-in-time compilation).
4. Integration:
    - Directly embedded in HTML and executed within the browser.
    - Works alongside HTML and CSS in web development.
5. Concurrency:
    - Uses event-driven, non-blocking I/O model through the event loop (asynchronous programming).

### Java
1. Purpose and Use:
    - General-purpose programming language.
    - Widely used in enterprise environments, Android app development, and large systems.
2. Execution Environment:
    - Runs on the Java Virtual Machine (JVM), which makes it platform-independent.
    - Requires compilation to bytecode before execution on the JVM.
3. Syntax and Language Type:
    - Statically typed, meaning variable types are known at compile time.
    - Compiled language (source code is compiled into bytecode, which runs on the JVM).
4. Integration:
    - Not directly embedded in HTML; usually used to build standalone applications, back-end servers, and Android applications.
    - Often used with frameworks like Spring for web applications.
5. Concurrency:
    - Uses multi-threading capabilities for handling concurrency (synchronous programming).

### Summary
- JavaScript is mainly used for web development to create interactive web pages and can run directly in browsers. It's dynamically typed and follows an event-driven model.
- Java is a versatile, compiled language used for building complex, large-scale applications, especially on the server side and for Android apps. It uses static typing and runs on the JVM, making it platform-independent.

Despite their similar names, they are quite different in terms of their usage, syntax, and runtime environments.

## First Webpage

```
<html>
<head>
  <meta charset="UTF-8">
  <meta name="description" content="CS118">
  <meta name="keywords" content="HTML, CSS, JavaScript">
  <meta name="author" content="Michael Lyons">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fun with JavaScript</title>
</head>
 
 
<body>
<h1>Welcome to CS118</h1>
<br>
<h2>Fun with JavaScript</h2>
<b>This is some sample text</b>
<br>
<br>
<i>That shows the different formats of the file</i>
<br>
<br>
<img src=" https://i.natgeofe.com/n/5d00b0cc-ab95-4522-ad13-7c65b7589e6b/NationalGeographic_748483.jpg?w=636&h=424">
<br>
<br>
<tt> I can insert images by referencing their locations and writing them in typewriter style.</tt>
<br>
<br>
<h3>I can make lists</h3>
<br>
<br>
<li>Dogs</li>
<li>Cats</li>
<li>Fish</li>
<li>Bears</li>
</BODY>
</HTML>
```

## `<HEAD>` vs. `<BODY>`

In HTML, the `<head>` and `<body>` elements serve distinct purposes and contain different content types crucial for a web page. Here is a basic overview:

### <head>
The `<head>` element contains metadata and other elements that are not directly visible to users but are essential for the document's functionality, search engine optimization (SEO), and linking to external resources. Common contents include:

- Title: Defined with the `<title>` tag, this specifies the webpage title that appears in the browser's title bar or tab.
- Stylesheets: External CSS files are linked here with the `<link>` tag to style the webpage.
- Scripts: JavaScript files can be included with the `<script>` tag for interactivity or functionality. While scripts can also be placed in the `<body>`, scripts in the `<head>` are loaded before the body content.
- Meta Tags: Provide metadata such as character set declaration (`<meta charset="utf-8">`), viewport settings for responsive design (`<meta name="viewport" content="width=device-width, initial-scale=1.0">`), description, keywords, and author of the document.
- Link to External Resources: Besides CSS, other resources like icons (`<link rel="icon" href="favicon.ico">`) can be specified.
- Base URL: The base URL of the document can be set with the `<base>` tag for resolving relative URLs.
### <body>
The `<body>` element contains everything visible to the user on the webpage. This includes:

- Content: Text, images, videos, and other media displayed on the page.
- Structural Markup: Elements like `<h1>` through `<h6>` for headings, `<p>` for paragraphs, `<div>` and `<span>` for grouping, and `<ul>`/`<ol>` for lists.
- Links: Hyperlinks defined with the `<a>` tag that users can interact with.
- Forms: Interactive forms for inputting data, defined with the `<form>` tag.
- Scripts: While typically included in the `<head>`, JavaScript can also be placed at the end of the `<body>` to improve page load times since it ensures that the script runs after the HTML content has been loaded.

In summary, the `<head>` section is for elements that affect the whole page or link to external resources but do not directly display content to the web page's visitor. The `<body>` section is for all content meant to be visible and directly interacted with by the user.


## HTML Attributes
- All HTML elements can have attributes
- Attributes provide additional information about elements
- Attributes are always specified in the start tag
- Attributes usually come in name/value pairs like: name="value"
### The href Attribute
The `<a>` tag defines a hyperlink. The href attribute specifies the URL of the page the link goes to
```
<a href="https://www.massbay.edu">Visit MassBay</a>
```

### The src Attribute
The `<img>` tag is used to embed an image in an HTML page. The src attribute specifies the path to the image to be displayed
```
<img src="example.jpg">
<img src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Example.jpg">
```
There are two ways to specify the URL in the src attribute:

1. Absolute URL - Links to an external image hosted on another website. Example: src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Example.jpg".

2. Relative URL - Links to an image hosted within the website. Here, the URL does not include the domain name. If the URL begins without a slash, it will be relative to the current page. Example: src="img_girl.jpg". If the URL begins with a slash, it will be relative to the domain. Example: src="/images/example.jpg".

Be mindful of copyright laws.


### The width and height Attributes
The `<img>` tag should also contain the width and height attributes, which specify the width and height of the image (in pixels)

```
<img src="example.jpg" width="500" height="600">
```
### The alt Attribute
The required alt attribute for the `<img>` tag specifies an alternate text for an image if the image, for some reason, cannot be displayed. This can be due to a slow connection, an error in the src attribute, or if the user uses a screen reader.

```
<img src="example.jpg" alt="This is an image of a sign that says This is an Example.">
```
The style Attribute
The style attribute adds styles to an element, such as color, font, size, and more.
```
<p style="color:red;">This is a red paragraph.</p>
```

### The lang Attribute
You should always include the lang attribute inside the `<html>` tag to declare the Web page's language. This is meant to assist search engines and browsers.

The following example specifies English as the language:
```
<!DOCTYPE html>
<html lang="en">
<body>
...
</body>
</html>
```


Country codes can also be added to the language code in the lang attribute. So, the first two characters define the language of the HTML page, and the last two define the country.

The following example specifies English as the language and United States as the country:
```
<!DOCTYPE html>
<html lang="en-US">
<body>
...
</body>
</html>
```

### The title Attribute
The title attribute defines some extra information about an element.

The value of the title attribute will be displayed as a tooltip when you mouse over the element:
```
<p title="I am explaining title">This is a paragraph.</p>
```

## Formatting

### HTML Paragraphs
The HTML `<p>` element defines a paragraph.

A paragraph always starts on a new line, and browsers automatically add some white space (a margin) before and after a paragraph.

```
<p>This is a paragraph.</p>
<p>This is another paragraph.</p>
```
What happens when you enter it like this in your editor?

```
<p>

This paragraph

contains a lot of lines

in the source code,

but the browser

ignores it.

</p>

```

```
<p>

This paragraph

contains        a lot of spaces

in the source        code,

but the       browser

ignores it.

</p>
```

HTML contains several elements for defining text with a special meaning.

- `<b>` - Bold text
- `<strong>` - Important text
- `<i>` - Italic text
- `<em>` - Emphasized text
- `<mark>` - Marked text
- `<small>` - Smaller text
- `<del>` - Deleted text
- `<ins>` - Inserted text
- `<sub>` - Subscript text
- `<sup>` - Superscript text

```
<b>This text is bold</b>
<br>
<strong>This text is important!</strong>
<br>
<i>This text is italic</i>
<br>
<em>This text is emphasized</em>
<br>
<small>This is some smaller text.</small>
<br>
<p>Do not forget to buy <mark>milk</mark> today.</p>
<br>
<p>My favorite color is <del>blue</del> red.</p>
<br>
<p>My favorite color is <del>blue</del> <ins>red</ins>.</p>
<br>
<p>This is <sub>subscripted</sub> text.</p>
<br>
<p>This is <sup>superscripted</sup> text.</p>
```

One of my favorites was `<tt>`

The `<tt>` tag in HTML stands for "teletype text" and was used to represent text in a monospace (fixed-width) font, which is similar to the text produced by a typewriter. This tag was commonly used to display computer code or any other content where the alignment and spacing of characters are important. However, it is important to note that the `<tt>` tag has been deprecated in HTML5, meaning it is no longer recommended for use in modern web development. Instead, CSS and other more semantic HTML tags like `<code>` for code snippets, `<pre>` for preformatted text, and `<samp>` for sample output are recommended to achieve similar effects.

```
<p>This is regular text - and this is <tt>monospace text</tt>.</p>
```

### Modern Alternative
To achieve a similar monospace styling in a manner that's compliant with HTML5, you would use CSS. Here is how you can replicate the effect of the `<tt>` tag using CSS:

In the HTML file:

```
<p>This is regular text - and this is <span class="monospace">monospace text</span>.</p>
```


In the CSS file:

```
.monospace {
    font-family: monospace;
}
```
This approach allows for greater flexibility and control over the styling of the text, as well as being semantic and accessible. It is always a good practice to use semantic HTML and CSS for styling to ensure your web content is accessible and maintainable.

### HTML Comment Tag
You can add comments to your HTML source by using the following syntax:

```
<!-- Write your comments here -->
```
Try this out:

```
<!-- This is a comment -->
 
<p>This is a paragraph.</p>
 
<!-- Remember to add more information here -->
```
Then this one:

```
<p>This is a paragraph.</p>
<!--
<p>Look at this cool image:</p>
<img border="0" src="example.jpg" alt="This is an example image">
-->
<p>This is a paragraph too.</p>
```

## Quotes and Citation

### HTML `<blockquote>` for Quotations

The HTML `<blockquote>` element defines a quoted section from another source.

Browsers usually indent `<blockquote>` elements.
```
<p>Here is a quote from WWF's website:</p>
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 60 years, WWF has worked to help people and nature thrive. As the world's leading conservation organization, WWF works in nearly 100 countries. At every level, we collaborate with people around the world to develop and deliver innovative solutions that protect communities, wildlife, and the places in which they live.
</blockquote>
```
### HTML `<q>` for Short Quotations
The HTML `<q>` tag defines a short quotation.

Browsers usually insert quotation marks around the quotation.

```
<p>WWF's goal is to: <q>Build a future where people live in harmony with nature.</q></p>
```

### HTML `<abbr>` for Abbreviations
The HTML `<abbr>` tag defines an abbreviation or an acronym, like "HTML", "CSS", "Mr.", "Dr.", "ASAP", "ATM".

Marking abbreviations can give useful information to browsers, translation systems, and search-engines.
```
<p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
```

### HTML `<address>` for Contact Information
The HTML `<address>` tag defines the contact information for the author/owner of a document or an article.

The contact information can be an email address, URL, physical address, phone number, social media handle, etc.

The text in the `<address>` element usually renders in italics, and browsers will always add a line break before and after the `<address>` element.
```
<address>
Written by John Doe.<br>
Visit us at:<br>
Example.com<br>
Box 564, Disneyland<br>
USA
</address>
```

### HTML `<cite>` for Work Title
The HTML `<cite>` tag defines the title of a creative work (e.g. a book, a poem, a song, a movie, a painting, a sculpture, etc.).

Note: A person's name is not the title of a work.

The text in the `<cite>` element usually renders in italic.
```
<p><cite>Scream</cite> directed Wes Craven. Released in 1996.</p>
```

### HTML `<bdo>` for Bi-Directional Override
BDO stands for Bi-Directional Override.

The HTML `<bdo>` tag is used to override the current text direction:
```
<bdo dir="rtl">This text will be written from right to left</bdo>
```

## Style 

### The HTML Style Attribute
Setting the style of an HTML element can be done with the style attribute.

The HTML style attribute has the following syntax:

```
<tagname style="property:value;">
```
The property is a CSS property. The value is a CSS value.

### Background Color
The CSS background-color property defines the background color for an HTML element.
```
<body style="background-color:powderblue;">
 
<h1>This is a heading</h1>
<p>This is a paragraph.</p>
 
</body>
```


The background-color CSS property specifies the background color of an element. The color can be specified in several different ways:

- Keyword: Using predefined color names like red, blue, green, etc. There are over 140 named colors recognized by modern browsers.
- Hexadecimal (Hex): A # followed by either 3, 4, 6, or 8 hexadecimal characters. For example, #ff0000 is red, #00ff00 is green, and #0000ff is blue. The 3- and 4-character notations are shorthand for the 6- and 8-character forms, where each character is repeated (e.g., #f00 is shorthand for #ff0000).
- RGB and RGBA: rgb() and rgba() functions are used, where rgb stands for red, green, blue, and stands for alpha (opacity). For example, rgb(255, 0, 0) is red, rgba(255, 0, 0, 0.5) is red with 50% opacity.
- HSL and HSLA: Standing for hue, saturation, lightness, and alpha (opacity), this is another functional notation. For example, hsl(0, 100%, 50%) is bright red, and hsla(0, 100%, 50%, 0.5) adds 50% opacity to that color.
- Transparent: Specifies that the background color should be transparent. This can be useful when overlaying elements on top of each other.
- CurrentColor: This keyword specifies that the value of the background color should be the same as the computed value of the color property for the element.

- System Colors (deprecated): These names were originally intended to allow web designers to match their content to the user's system theme. However, they are now deprecated due to inconsistencies across platforms and browsers.
You can choose any of these methods based on your specificity, opacity, and compatibility needs. Hexadecimal and RGB(A) are the most commonly used methods due to their simplicity and broad support across all browsers.

What happens with this?

```
<body>
 
<h1 style="background-color:powderblue;">This is a heading</h1>
<p style="background-color:tomato;">This is a paragraph.</p>
 
</body>
```


### Text Color
The CSS color property defines the text color for an HTML element
```
<h1 style="color:green;">This is a heading</h1>
<p style="color:blue;">This is a paragraph.</p>
```

#### Color Names Supported by All Browsers
All modern browsers support the following 140 color names (click on a color name, or a hex value, to view the color as the background color along with different text colors): https://www.w3schools.com/colors/colors_hex.asp

### Fonts
The CSS font-family property defines the font for an HTML element.
```
<h1 style="font-family:verdana;">This is a heading</h1>
<p style="font-family:courier;">This is a paragraph.</p>
```
You have several options when you specify fonts in CSS using the font-family property. These can be broadly categorized into web-safe fonts and web fonts.

### Web-Safe Fonts
Web-safe fonts are widely installed across different operating systems, ensuring a consistent look of your text across different devices without downloading additional fonts. Here are some commonly used web-safe font families:

1. Serif Fonts:
    - Times New Roman
    - Georgia
    - Garamond
2. Sans-Serif Fonts:
    - Arial
    - Helvetica
    - Verdana
    - Tahoma
    - Trebuchet MS
3. Monospace Fonts:
    - Courier New
    - Lucida Console
    - Monaco

These fonts are called "web-safe" because they are likely to be present on most devices, and therefore, the page will display as intended without needing to fetch and load an external font.

### Web Fonts
Web fonts are fonts that are not pre-installed on a user’s device and are downloaded from the web as needed. This allows web designers more flexibility and creativity in their designs but requires ensuring that the fonts are correctly loaded and accessible to users. Some sources for web fonts include:

1. Google Fonts: A popular library of licensed fonts that can be included in your web pages.
2. Adobe Fonts: Offers a vast collection of quality fonts accessible through Adobe's subscription services.
3. Font Squirrel: Provides hand-selected fonts that are licensed for commercial work.

To use web fonts, you typically link to the font externally using <link> in your HTML or @import in your CSS, then specify the font in your font-family property.

### Specifying Fonts in CSS
When specifying the font-family in CSS, it is a good practice to list multiple font names as a "fallback" system if the first choice font is unavailable. You should end the list with one of the five generic font families: serif, sans-serif, monospace, cursive, and fantasy.

Remember, the availability of web fonts depends on the method you use to include them in your project (e.g., direct linking, downloading, etc.), and ensuring they are accessible across all devices requires proper font licensing and inclusion techniques.

### Text Size
The CSS font-size property defines the text size for an HTML element.
```
<h1 style="font-size:300%;">This is a heading</h1>
<p style="font-size:160%;">This is a paragraph.</p>
```

### Text Alignment
The CSS text-align property defines the horizontal text alignment for an HTML element.
```
<h1 style="text-align:center;">Centered Heading</h1>
<p style="text-align:center;">Centered paragraph.</p>
```
