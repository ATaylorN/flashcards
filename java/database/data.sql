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
		'Arrays and Lists in C#(or ArrayLists in Java) both store multiple values. They can be accessed using indices. However, arrays have a fixed size once defined, while Lists (ArrayLists) are dynamic and can grow or shrink at runtime. Also, Lists provide more built-in methods such as `Add()`, `Remove()`, etc. compared to arrays.');

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
		'The 3 principles of Object Oriented Programming are Encapsulation, Inheritance, and Polymorphism. Encapsulation: Data and methods are wrapped together in a class. For example, a `Person` class could encapsulate properties like `Name` and `Age`, and methods like `Speak()`. Inheritance: A class can inherit properties and methods from a parent class. For instance, a `Student` class could inherit from the `Person` class, thereby gaining its properties and methods. Polymorphism: A method can behave differently based on the object. For example, a `Shape` class might have a `Draw()` method. This method would behave differently if called on objects of the `Circle` or `Rectangle` class, assuming they inherit from `Shape`.');

INSERT INTO questions (question, answer)
VALUES ('When catching Exceptions, should the code catch a specific exception type (like "Subscript out of bounds")  or the general "Exception" type? Why?',
		'It`s generally best to catch specific exceptions. This allows you to handle different exception types in a tailored manner. Catching the general "Exception" type should be a last resort, as it can make debugging harder by masking other unexpected or unknown errors.');

INSERT INTO questions (question, answer)
VALUES ('When writing files, what does it mean to append? What does it mean to not append?',
		'Appending to a file means adding new data at the end of the file`s existing content. Not appending, often referred to as "overwriting", means replacing the file`s existing content with the new data. If the file doesn`t exist, it`s created in both cases.');

INSERT INTO questions (question, answer)
VALUES ('For an application that has a console user interface, reads and writes information to a file, and provides the ability to do CRUD (Create, Read, Update, and Delete) functions on the data in memory while executing, how might you organize and structure the classes and methods in your code?',
		'You might structure your classes as follows: 1.DataModel class: Represents the data you`re working with, encapsulates properties relevant to the data. 2.FileHandler class: Handles all file operations, with methods such as `ReadFromFile`, `WriteToFile`, and `AppendToFile`. 3.CrudOperations class: Handles the in-memory CRUD operations. Methods could include `CreateData`, `ReadData`, `UpdateData`, and `DeleteData`. 4.UserInterface class: Manages interactions with the user via console. Has methods like `DisplayMenu`, `GetUserInput`, and `DisplayData`. Each class has its own responsibilities, promoting separation of concerns and making the code more maintainable. The `Program` class would coordinate these classes to perform the required tasks.');

INSERT INTO questions (question, answer)
VALUES ('What is pair programming? What are the basic rules? What are its advantages and disadvantages?',
		'Pair programming involves two programmers working together at one workstation. One, the "driver", writes code while the other, the "navigator", reviews each line of code as it`s typed in. Basic rules include: 1.Switch roles regularly. 2.Both partners must understand the code. 3.Constant communication is key. Advantages include: 1.Improved code quality due to instant review. 2.Knowledge sharing and improved team collaboration. 3.Faster problem solving. Disadvantages include: 1.It may be less efficient for simpler tasks. 2.Conflicts may arise from differences in coding style or approach. 3.It requires good communication skills and patience.');


COMMIT TRANSACTION;
