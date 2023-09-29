BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO questions (question, answer)
VALUES ('What is git? Why do we use it?',
		'Git is a distributed version control system that tracks changes to source code, enabling multiple developers to work on a project simultaneously. We use Git for its capabilities in version control, collaboration, branching and merging, and its integration with platforms like GitHub.');
		
INSERT INTO questions (question, answer)
VALUES ('What is a variable? Can you give an example of an integer expression? A boolean expression?',
		'A variable is a symbolic name for a value that can change. In programming, its used to store data. An example of an integer expression is 3 + 4 * 2, which equals 11. A boolean expression could be 10 > 9, which evaluates to True.');
		
INSERT INTO questions (question, answer)
VALUES ('What controls whether the “if” or the “else” portion of an if-else should execute?',
		'The "if" or "else" portion of an if-else statement executes based on the result of the condition in the "if" statement. If the condition is true, the "if" block executes; if the condition is false, the "else" block executes.');

INSERT INTO questions (question, answer)
VALUES ('Why should the code for each if or else be enclosed in a scope “{ }”',
		'The {} braces define a block of code or a scope. They ensure that multiple statements under an if or else execute together. If you omit {}, only the immediate next line is considered part of the if or else, which could lead to logic errors.');

INSERT INTO questions (question, answer)
VALUES ('What programming problem does a loop solve? Why would we use a loop?',
		'A loop solves the problem of repeating tasks in code. We use a loop to perform an operation multiple times without writing the same code repeatedly. This makes our code more efficient, easier to read, and simpler to maintain.');

INSERT INTO questions (question, answer)
VALUES ('How do we display information on the console? How do we take in information from the user in a console program?',
		'In C#, you use Console.WriteLine() to display information on the console. For example, Console.WriteLine("Hello, World!");. To take in information from the user, you use Console.ReadLine(). For example, string userInput = Console.ReadLine();. In Java, you use System.out.println()');

INSERT INTO questions (question, answer)
VALUES ('What is an object? What is a class?',
		'An object is an instance of a class. Its a data structure that contains data and methods. A class is a blueprint for creating objects. It defines the data and behavior that the created objects can have.');

INSERT INTO questions (question, answer)
VALUES ('How is an array like a List(C#)/ArrayList(Java)? How are they different?',
		'Arrays and Lists in C#(or ArrayLists in Java) both store multiple values. They can be accessed using indices. However, arrays have a fixed size once defined, while Lists (ArrayLists) are dynamic and can grow or shrink at runtime. Also, Lists provide more built-in methods such as Add(), Remove(), etc. compared to arrays.');

INSERT INTO questions (question, answer)
VALUES ('Tell me about a Dictionary(C#)/HashMap(Java).',
		'A Dictionary in C#(or HashMap in Java) is a collection of key-value pairs. Keys are unique, while values may not be. Unlike arrays or Lists, data in a Dictionary or HashMap is accessed via keys, not numeric indices. This allows for efficient retrieval of values when the key is known.');

INSERT INTO questions (question, answer)
VALUES ('What is Encapsulation? Why is it important?',
		'Encapsulation is a principle of object-oriented programming where the data (variables) and methods operating on that data are bundled together in a class. Its important because it hides the internal state of one object from others. This enhances security, prevents data corruption, and makes code easier to maintain and understand.');

INSERT INTO questions (question, answer)
VALUES ('What is Inheritance? Why, as a programmer, would you choose to use Inheritance?',
		'Inheritance is a concept in object-oriented programming where a class can inherit properties and methods from another class. You would use inheritance to promote code reusability and create a logical, hierarchical structure for your classes. It helps in making code easier to manage, understand, and extend.');

INSERT INTO questions (question, answer)
VALUES ('What is Polymorphism? How is Polymorphism like Inheritance? How is it different?',
		'Polymorphism, a concept in object-oriented programming, allows one interface to represent different underlying forms. This could mean methods with the same name behaving differently based on their data types or number of parameters. Polymorphism is similar to Inheritance in that they both promote flexibility and extensibility in code. However, while Inheritance allows classes to inherit properties and methods from a parent class, Polymorphism allows methods to perform different actions based on the object they are acting upon.');

INSERT INTO questions (question, answer)
VALUES ('What is an Interface, and why would you use one?',
		'An Interface defines a contract for classes. It outlines specific methods or properties a class must implement. You use interfaces to enforce certain behaviors across different classes. This enables loose coupling, making your code more modular, adaptable, and testable.');

INSERT INTO questions (question, answer)
VALUES ('How are Abstract classes and Interfaces alike? How are they different?',
		'Abstract classes and Interfaces are alike in that they both define contracts for other classes to implement. However, they differ in several ways. An Abstract class can provide some method implementation, while Interfaces can not. A class can implement multiple Interfaces, but it can only inherit from one Abstract (or any other) class. Abstract classes can also have constructors and fields, which Interfaces cannot have.');

INSERT INTO questions (question, answer)
VALUES ('What is Unit Testing? What tools are used to do automated Unit Testing?',
		'Unit Testing involves testing individual components (or "units") of software to verify that they behave as intended. For automated unit testing in a .NET environment, NUnit and MSTest are commonly used (JUnit in Java). These frameworks allow developers to write tests, automate execution, and report results. Xunit is another popular choice for .NET Core.');

INSERT INTO questions (question, answer)
VALUES ('What are the three principles of Object Oriented Programming?  Give an example for each.',
		'The 3 principles of Object Oriented Programming are Encapsulation, Inheritance, and Polymorphism. Encapsulation: Data and methods are wrapped together in a class. For example, a "Person" class could encapsulate properties like "Name" and "Age", and methods like Speak(). Inheritance: A class can inherit properties and methods from a parent class. For instance, a "Student" class could inherit from the "Person" class, thereby gaining its properties and methods. Polymorphism: A method can behave differently based on the object. For example, a "Shape" class might have a Draw() method. This method would behave differently if called on objects of the "Circle" or "Rectangle" class, assuming they inherit from "Shape".');

INSERT INTO questions (question, answer)
VALUES ('When catching Exceptions, should the code catch a specific exception type (like "Subscript out of bounds")  or the general "Exception" type? Why?',
		'It is generally best to catch specific exceptions. This allows you to handle different exception types in a tailored manner. Catching the general "Exception" type should be a last resort, as it can make debugging harder by masking other unexpected or unknown errors.');

INSERT INTO questions (question, answer)
VALUES ('When writing files, what does it mean to append? What does it mean to not append?',
		'Appending to a file means adding new data at the end of the file`s existing content. Not appending, often referred to as "overwriting", means replacing the file`s existing content with the new data. If the file does not exist, it is created in both cases.');

INSERT INTO questions (question, answer)
VALUES ('For an application that has a console user interface, reads and writes information to a file, and provides the ability to do CRUD (Create, Read, Update, and Delete) functions on the data in memory while executing, how might you organize and structure the classes and methods in your code?',
		'You might structure your classes as follows: 1. DataModel class: Represents the data you are working with, encapsulates properties relevant to the data. 2. FileHandler class: Handles all file operations, with methods such as ReadFromFile, WriteToFile, and AppendToFile. 3. CrudOperations class: Handles the in-memory CRUD operations. Methods could include CreateData, ReadData, UpdateData, and DeleteData. 4. UserInterface class: Manages interactions with the user via console. Has methods like DisplayMenu, GetUserInput, and DisplayData. Each class has its own responsibilities, promoting separation of concerns and making the code more maintainable. The "Program" class would coordinate these classes to perform the required tasks.');

INSERT INTO questions (question, answer)
VALUES ('What is pair programming? What are the basic rules? What are its advantages and disadvantages?',
		'Pair programming involves two programmers working together at one workstation. One, the "driver", writes code while the other, the "navigator", reviews each line of code as it is typed in. Basic rules include: 1. Switch roles regularly. 2. Both partners must understand the code. 3. Constant communication is key. Advantages include: 1. Improved code quality due to instant review. 2. Knowledge sharing and improved team collaboration. 3. Faster problem solving. Disadvantages include: 1. It may be less efficient for simpler tasks. 2. Conflicts may arise from differences in coding style or approach. 3. It requires good communication skills and patience.');

INSERT INTO questions (question, answer)
VALUES ('What is a RDBMS? Can you name some commercial and open-source RDBMSs?',
		'An RDBMS, or Relational Database Management System, is software for creating and managing databases bases on the relational model. Commercial RDBMSs include Oracle Database, Microsoft SQL Server, and IBM DB2. Open-source RDBMSs include MySQL, PostgreSQL, and SQLite.');

INSERT INTO questions (question, answer)
VALUES ('The major elements of a SQL SELECT are written in a certain order. What is that order?',
		'The order in a SQL SELECT statement is: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY. Each clause is optional except for SELECT and FROM.');

INSERT INTO questions (question, answer)
VALUES ('What are the special considerations for GROUP BY in SQL queries?',
		'In SQL, GROUP BY is used to group rows with the same values in specified columns into aggregated data. Special considerations include: GROUP BY clause can group by one or more columns. Columns in the SELECT statement that are not aggregated should be included in the GROUP BY clause. It is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to perform calculatioins on each group. WHERE clause is applied before GROUP BY. HAVING is applied after and is used to filter the groups.');

INSERT INTO questions (question, answer)
VALUES ('What are the two forms of the INSERT statement in SQL? Which is preferred and why?',
		'The two forms of the INSERT statement in SQL are: INSERT INTO table_name VALUES (value1, value2,...) and INSERT into table_name (column1, column2,...) VALUES (value1, value2,...). The second version is preferred because it allows for clarity by specifying column names and enables insertion into specific columns even if you do not have values for all of the columns.');

INSERT INTO questions (question, answer)
VALUES ('Why would a developer want to develop and maintain a SQL script for a database under development or being changed?',
		'A developer would maintain a SQL script for a few reasons: Reproducibility - Scripts can recreate the database schema or data whenever needed which is useful for testing or deploying to new enviornments. Version Control - Script allows tracking changes over time and enables reverting to a previous state if necessary. Collaboration - Scripts make it easier for team members to understand database structure and apply consistent changes. Automation - Database creation or modification can be automated using scripts which reduces manual errors.');

INSERT INTO questions (question, answer)
VALUES ('What is a DAO and what OOP principal does it most clearly express?',
		'A DAO, or Data Access Object, is a design pattern that provides an abstract interface for accessing data from different sources like databases or APIs. A DAO most clearly expresses the principle of encapsulation by hiding the complexity of data access operations from the rest of the application, providing a simpler interface to interact with data sources.');

INSERT INTO questions (question, answer)
VALUES ('Why is it important to use parameter substitution rather than string concatenation when building SQL strings inside of code?',
		'Using parameter substitution rather than string concatenation prevents SQL Injection attacks which occur when malicious SQL code is inserted into a query. Parameter substitution ensures input is treated as literal data rather than as executable code.');

INSERT INTO questions (question, answer)
VALUES ('What software vulnerability is totally under the control of the programmer?',
		'Hardcoding sensitive information - a software vulnerability that is under the control of the programmer, even a junior developer. This includes embedding passwords, encryption keys, or API keys directly into the source code. This practice is a security risk and is easily avoidable by using secure methods of configuration management and enviornment variables.');

INSERT INTO questions (question, answer)
VALUES ('What are some examples of Integration Testing?',
		'Integration Testing involves testing how different components of a system work together. Examples include: Testing client-server communication - Checking if the client and server components interact correctly. Testing database integration - Verifying the applications interaction with the database. Testing web services - Checking how your application interacts with external services. Testing UI with backend - Ensuring the user interface works correctly with the backend logic. Testing API endpoints - Making sure different APIs interact as expected when used in combination.');

INSERT INTO questions (question, answer)
VALUES ('Why would you want to use SQL to select the specific information you need inside your program? Why not just select all the information from a table and hold it in a collection inside your program?',
		'Using SQL to select specific information is more efficient for two main reasons: Network Efficiency - it reduces the amount of data sent over the network which speeds up data transfer times and Memory Efficiency - it minimizes memory usage in your application by only holding necessary data. Selecting all the data can lead to performance issues, especially with large datasets. It also increases the risk of exposing sensitive information.');

INSERT INTO questions (question, answer)
VALUES ('What does the first forward slash in a URL represent? What does the question mark in the URL represent?',
		'In a URL, the first forward slash after the domain nname is used to seperate the domain from the path to a specific resource or page within the website. The question mark in a URL is used to start the query string which typically includes parameters to be sent to a server-side script. It seperates the path from the parameters.');

INSERT INTO questions (question, answer)
VALUES ('In HTTP, how are the GET and POST verbs alike? How are they different?',
		'GET and POST are HTTP methods used to request data from a server. Similarities include: they can both send requests to the server, they are both used in the HTTP request-response process. Differences include: GET appends data to the URL (in the query string) while POST sends data in the body of the HTTP request, GET is idempotent (repeated requests have the same effect as a single one) while POST is not, GET requests can be cached and bookmarked while POST requests cannot, GET has large restrictions while POST does not.');

INSERT INTO questions (question, answer)
VALUES ('Assume four blocks of code: 1) Controller and 2) Model-DAOs for the server and 3) User Interface and 4) API Service for a client. Describe the flow of a REST request and response. Describe the role-responsibility of each block of code.',
		'Here is the flow of a REST request and response: User Interface(Client) - The user interacts with the UI which triggers a REST request to the server (ex. to get data). API Service(Client) - The API service processes this request, formats it correctly (often as an HTTP request) and send it to the server. Controller(Server) - The servers controller receives the request, determines what the client is asking for, and directs the request to the appropriate model or DAO for processing. Model-DAOs(Server) - The Model or DAO interacts with the servers database or data source to carry out the request. It retrieves or manipulates the data as needed. The data or result is snet back to the Controller which then formats it into a suitable HTTP response. This response is sent back to the API service on the client side. API Service(Client) - The API service on the client receives this response, processes the data as necessary (like converting from JSON to JavaScript objects) and sends it to the UT. User Interface(Client) - The UI receives this data and uses it to update the interface, completing the request-response cycle. Each block of code has its own responsibilities, seperating concerns and making the system more maintainable.)');
		
INSERT INTO questions (question, answer)
VALUES ('How can we test that our client-server application is following the rules and protocols of REST?',
		'To test if a client-server application follows REST principles, you can: 1) Use tools like Postman or curl to send requests to your server and examine the responses. 2) Verify that they use standard HTTP methods (GET, POST, PUT, DELETE), have meaningful status codes, and return data in a stateless manner. Ensure resources are identified by URLS and that the application adheres to a logical, consistent URL structure. 3) Check that the responses are in a standard format like JSON or XML. 4) Ensure the application is stateless (i.e. server responses are independent of previous requests). 5) Test for idempotency, meaning multiple identical requests have the same effect as a single one. 6) Use automated testing frameworks to continuously test these aspects. These measures will help confirm that your application is abiding by REST conventions.');

INSERT INTO questions (question, answer)
VALUES ('What is a JWT? How is it generated and how is it used?',
		'JWT, or JSON Web Token, is a compact, URL-safe means of representing claims to be transferred between two parties. It is used for authentication and secure information exchange. A JWT is generated by: 1) Creating a header with token type and the hashing algorithm. 2) Creating a payload with the claims (like user details or permissions). 3) Encoding the header and payload as JSON and then BaseURL encoding. 4) Concatenating these with a dot seperator and signing this string using the specified algorithm and a secret key. In use, when a user logs in, the server generates a JWT and sends it back. For subsequent requests, the users client attaches this JWT often in the Authorization header. The server can then validate the token and verify the users identity and permissions. This allows for stateless, sessionless authentication.');

INSERT INTO questions (question, answer)
VALUES ('Describe MVC in the context of a Web Service running on a server.',
		'MVC, or Model-View-Controller, is a design pattern often used in webservices: 1) Model - this represents the data and the rules that govern access to and updates of this data. In a webservice, models interact with the database, handling create, read, update, and delete(CRUD) operations. 2) View - in the context of a web service, is the format and structure of the output sent to the client. This could be JSON, XML, or HTML depending on the service. It is how the data from the model is presented. 3) Controller - the intermediary between the Model and the View. It receives client requests, interacts with the Modal to get or manipulate data, and then formats this data witht eh View to send as a response. In MVC, each component has a distinct responsibility, making the web service easier to maintain, test, and scale.');

INSERT INTO questions (question, answer)
VALUES ('Why do HTTP POST and PUT use a request body? Why not just put information in the path or query string of the URL?',
		'HTTP POST and PUT use a request body primarily for two reasons: 1) Data Security - sensitive information is safer in the request body than in the URL as URLs can be logged or cached. 2) Data Size - HTTP methods that use the request body can send much larger amounts of data than those using a URL. URLs have length limitations. Using the request body allows sending of complex data types, like nested JSON, which would not be feasible in a URL. Thus, for operations that involve sending large or sensitive data, methods with request bodies are preferred.');

INSERT INTO questions (question, answer)
VALUES ('What should HTTP status codes in the 200s indicate? The 400s? The 500s? What specific HTTP status codes do you know and what should they mean?',
		'HTTP status codes indicate the result of the HTTP request: 200s - These are successful response codes (ex. 200 OK - the request was successful), 201 Created - The request has been fulfilled and resulted in a new resource being created, 204 No Content - The server successfully processed the request and is not returning any content. 400s - These are client error response codes (ex. 400 Bad Request - The server could not understand the request due to invalid syntax, 401 Unauthorized - The request requires user authorization, 404 Not Found - The server has not found anything matching the Request-URI). 500s - Internal Server Error: the server encountered an unexpected condition which prevented it from fulfilling the request (ex. 503 Service Unavailable - The server is currently unable to handle the request due to a temporary overloading or maintenance). These codes help clients understand the servers response to their requests.');

INSERT INTO questions (question, answer)
VALUES ('In JavaScript, should you use let or var to create variables? Why?',
		'In modern JavaScript, it is recommended to use let or const over var to declare variables. This is because let and const have block scope, meaning they only exist within the block they are in. Var has function scope which can lead to unexpected behavior. Let allows you to declare variables that can be reassigned while const allows you to declare variables that are constant or unchangeable. Car is still valid JavaScript, but its usage can lead to confusion, especially for those coming from other languages where block scoping is standard.');

INSERT INTO questions (question, answer)
VALUES ('In a world of HTML, CSS, and JavaScript, what role do each provide in the browser?',
		'HTML, or HyperText Markup Language, is the structure of the webpage. It creates and organizes content in the form of text, images, and more. CSS, or Cascading Style Sheets, is the design of the webpage. It determines how the HTML elements are displayed, including colors, layouts, fonts, and animations. JavaScript is the behavior of the webpage. It provides interactivity allowing elements on the page to respond to user actions like clicks, input, and form submission. Together they create dynamic, interactive webpages. HTML provides the base content, CSS makes it visually appealing, and JavaScript adds user interaction.');

INSERT INTO questions (question, answer)
VALUES ('What are some common selectors used with HTML and CSS and how are they specified in CSS?',
		'Tag or Element selector - applies style to all elements of a specifed type. It is simply the name of the HTML tag. Class selector - applies styles to all elements with the specified class. It is denoted by a period followed by the class name. ID selector - applies styles to the element with the specified ID. It is denoted by the hash followed by the ID. Note: an ID should be unique within a page while classes can be applied to multiple elements.');

INSERT INTO questions (question, answer)
VALUES ('In CSS, what does it mean when multiple selectors are used together with spaces between them? With no spaces between them? With commas between them? With the greater than symbol between them?',
		'Multiple selectors with spaces is a descendant selector. With no spaces, is a class selector for a specific element. With commas between them is a group selector. The greater than symbol is a child selector.');

INSERT INTO questions (question, answer)
VALUES ('In general, what part of a webpage layout should be controlled by CSS grid? What part should be controlled by CSS flex?',
		'CSS grid is generally used for defining two-dimensional layouts, handling both columns and rows. It is ideal for larger scale layouts like whole pages or significant page sections. Flex is typically used for one-dimensional layouts, dealing with either a column or a row at a time. It is useful for smaller-scale layouts within a page, like aligning items in a header, footer, or controlling the layout of specific components.');

INSERT INTO questions (question, answer)
VALUES ('In JavaScript, this symbol (=>) is referred to by what name? What JavaScript keyword does it replace? Bonus: what are some other names that this symbol is called?',
		'It is called an arrow function and replaces the function keyword when defining a function. Bonus: It is also referred to as a fat arrow, lambda, anonymous function, or closure, but these terms have broader meanings.');

INSERT INTO questions (question, answer)
VALUES ('Describe some advantages of Vue.js over Vanilla JavaScript?',
		'The advantages include supporting encapsulation by bundling the HTML, CSS, and JavaScript together for an element in a web application which allows individuals to work on a component without having to understand the complexity of the wider application. It supports reusability and allows you to share these components across applications and teams. It also allows for single-responsibility which helps to support component reuse and makes a component easier to test and maintain.');

INSERT INTO questions (question, answer)
VALUES ('How is the event-driven style of program execution different from the sequential style of execution utilized in simple console programs during the first few weeks of the program?',
		'Sequential execution runs code line by line from top to bottom. It is straightforward but does not handle user interaction or simultaneous tasks well. Event-driven execution responds to user actions or system events (like clicks or key presses). It is less predictable because code execution depends on the events and their order. This style is more suited for interactive applications like websites or desktop applications where user input needs to be processed at unknown times.');

INSERT INTO questions (question, answer)
VALUES ('What is mustache notation in Vue.js and how is it different from v-model binding? Where is v-model binding mostly seen in Vue.js?',
		'The double curly braces aka mustache notation are used to render data properties from a components HTML through data binding. V-model binding creates a two-way binding relationship. Elements update automatically to reflect changes to data properties AND data properties update to reflect changes to elements.');

INSERT INTO questions (question, answer)
VALUES ('Why do we use prevent with some Vue.js events? Bonus: what event on what element should be handled for an input element of type submit?',
		'We use prevent because some events trigger a default action in the browser and prevent allows you to stop that action if you do not want it to occur. For example, you may need to use the preventDefault() method in your form element because when a user clicks a submit button, the browser attempts to send form data to a remote server.');

INSERT INTO questions (question, answer)
VALUES ('How are v-if and v-show alike? How are they different?',
		'When you wrap an element in v-if, you associate it with a boolean condition which determines whether the element appears in the DOM. While v-if conditionally renders an element, v-show conditionally displays an element. The difference is that v-if needs to destroy and recreate elements with every status change while v-show hides an element by toggling its CSS display status.');

INSERT INTO questions (question, answer)
VALUES ('What are two ways that Vue.j components can pass data from component to component? Which one is intended to be used between parent and child components? Which one can be used between any commponents in an application?',
		'You can import a component to be used in another component by: importing the component, declaring the component in the components object, and then use the component in your template or through using props. Props are intended to be used between parent and child components while the first method can be used between any components.');

INSERT INTO questions (question, answer)
VALUES ('What is the role of router-view in the default Vue.js router?',
		'It is a functional component that renders the matched component for the given path, meaning that it will display the component that corresponds to the URL.');

INSERT INTO questions (question, answer)
VALUES ('What is the role of the created function of a Vue.js component?',
		'');

INSERT INTO questions (question, answer)
VALUES ('In Vue.js component script sections, what elements are peers - exist at the same level - as the data section?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What information does a promise retrun in JavaScript? What are three possible states for a promise?',
		'');

INSERT INTO questions (question, answer)
VALUES ('In Vue.js, where must we use this with variables and methods-functions in the methods section? Where do we not need to use the this keyword?',
		'');

INSERT INTO questions (question, answer)
VALUES ('In Vue.js, router-link and router.push are both used to navigate from the current view to another view using the router. When should you use each?',
		'');

INSERT INTO questions (question, answer)
VALUES ('You are developing a Vue.js application with a web service providing the data. The web service has been tested with Postman and is working correctly. You create a Vue.js component that should display informtaion retrieved from the web service. Nothing is displayed on the web browser. What do you look at and what do you do to determine where the problem exists?',
		'');

INSERT INTO questions (question, answer)
VALUES ('How are a for-loop and a while-loop alike? How are they different?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the difference between overloading and overriding? Does JavaScript support overloading?',
		'');

INSERT INTO questions (question, answer)
VALUES ('In Java or C#, how are methods and constructors alike? How are they different?',
		'');

INSERT INTO questions (question, answer)
VALUES ('In Java or C#, what it the difference between value-primitive types and reference types? How are they represented in memory?',
		'');

INSERT INTO questions (question, answer)
VALUES ('You are retrieving data from a database for a server program. All other things being equal, should you retrieve all of the data from a table and filter it in the server application OR should you use the RDBMs to select just the information that you want? Why? What factors might cause you to change your decicion?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What purpose does the Vuex data store serve in Vue.js? What is a circumstance when you might NOT want to use Vuex?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What elements make us the signature of a method in Java or C#?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is a static class? How is it used differently than a non-static class?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the difference between a stack and a queue?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the difference between a primary key and a foreign key in a relational database?',
		'');

INSERT INTO questions (question, answer)
VALUES ('The first element of the signature of a method is the access modifier. What access modifiers fo you know and what do they mean?',
		'');

INSERT INTO questions (question, answer)
VALUES ('How is JavaScript like C# or Java? How is it different?',
		'');

INSERT INTO questions (question, answer)
VALUES ('How would you explain APIs to a non-technical team member?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is REST?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the purpose of computed properties in Vue.js? How are they different from methods?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the purpose of semantic HTML?',
		'');

INSERT INTO questions (question, answer)
VALUES ('Describe the CSS box model.',
		'');

INSERT INTO questions (question, answer)
VALUES ('How does garbage collectioni work? What things are not garbage collected?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What are serialization and deserialization? How are they used when communicating using the REST architecture?',
		'');

INSERT INTO questions (question, answer)
VALUES ('Can you describe a Vue.js lifecycle hook that you have used and how you have used it?',
		'');

INSERT INTO questions (question, answer)
VALUES ('How is an if statement like a while statement? How are they different?',
		'');

INSERT INTO questions (question, answer)
VALUES ('How many constructors can a class have? How may constructors can be used when creating a simple object?',
		'');

INSERT INTO questions (question, answer)
VALUES ('WHat value-primitive data types can you name for Java or C#? What kind of information would you use each one for?',
		'');

INSERT INTO questions (question, answer)
VALUES ('The keywords final in Java and const in C# mean approximately the same thing. What do the mean?',
		'');

INSERT INTO questions (question, answer)
VALUES ('Explain the concept of a RESTful API',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the difference between the HTTP and HTTPS protocols?',
		'');

INSERT INTO questions (question, answer)
VALUES ('What is the different data types in JavaScript?',
		'');		

INSERT INTO questions (question, answer)
VALUES ('What are truthy and falsy values in JavaScript?',
		'');




COMMIT TRANSACTION;
