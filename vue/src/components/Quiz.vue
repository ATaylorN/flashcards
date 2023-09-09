<template>
  <div class="container pt-5">
    <form class="quiz">
      <div class="questions" v-if="questionIndex < questions.length">
        <label>{{ question.question }}</label>
        <div class="choices" v-for="eachChoice of question.choices" :key="eachChoice">
          <input type="radio" name="choice" v-model="answer" :value="eachChoice"/>
          {{ eachChoice }}
        </div>
        <button class="submitbtn" type="button" @click="submit">Submit</button>
      </div>

      <div v-else class="done">
        <h1 v-show="score !== questions.length">Want to Try Again?</h1>
        <h1 v-show="score === questions.length">Perfect Score!</h1>
        <button class="restartbtn" type="button" @click="restart">
          Restart
        </button>
      </div>
    </form>

    <div id="score" class="container pt-5">
    <h1>Score: {{ score }} / {{ questions.length }}</h1>
    </div>

  </div>
</template>

<script>
const questions = [
  {
    question: "What is Polymorphism?",
    choices: [
      "A principle of object-oriented programming where the data (variables) and methods operating on that data are bundled together in a class",
      "A principle in object-oriented programming that allows one interface to represent different underlying forms",
      "A principle in object-oriented programming where a class can inherit properties and methods from another class",
      "A special method of a class that initializes an object of that class",
    ],
    rightAnswer:
      "A principle in object-oriented programming that allows one interface to represent different underlying forms",
  },
  {
    question: "What is an Interface?",
    choices: [
      "Something that defines a contract for classes and requires classes to implement public methods that can be used in a specific way",
      "A way to organize classes similar to organizing files on your computer",
      "A special method of a class that initializes an object of that class",
      "That you can generate a value by relying on other properties within the class",
    ],
    rightAnswer:
      "Something that defines a contract for classes and requires classes to implement public methods that can be used in a specific way",
  },
  {
    question: "What does it mean when something is declared as static?",
    choices: [
      "That a property or method belongs to the class itself and not the instance of it",
      "That you can generate a value by relying on other properties within the class",
      "That other classes can't inherit from them",
      "That there's a symptom in the program that indicates there may be a deeper problem",
    ],
    rightAnswer:
      "That a property or method belongs to the class itself and not the instance of it",
  },
  {
    question: "What are the 3 principles of Object Oriented Programming?",
    choices: [
      "Encapsulation, MVC, and Inheritance",
      "Inheritance, Polymorphism, Abstraction",
      "Observer, MVC, Adaptation",
      "Encapsulation, Inheritance, and Polymorphism",
    ],
    rightAnswer: "Encapsulation, Inheritance, and Polymorphism",
  },
  {
    question: "How is an Array like an ArrayList in Java or List in C#?",
    choices: [
      "They both have a fixed size once defined",
      "They both are dynamic and can grow or shrink",
      "They both store multiple values and can be accessed using indices",
      "None of the above",
    ],
    rightAnswer:
      "They both store multiple values and can be accessed using indices",
  },
  {
    question: "What is Inheritance?",
    choices: [
      "Something that defines a contract for classes and requires classes to implement public methods that can be used in a specific way",
      "A principle in object-oriented programming where a class can use the properties and methods from another class",
      "A special method of a class that initializes an object of that class",
      "A principle in object-oriented programming that allows one interface to represent different underlying forms",
    ],
    rightAnswer:
      "A principle in object-oriented programming where a class can use the properties and methods from another class",
  },
  {
    question:
      "What software vulnerability is totally under the control of the programmer?",
    choices: [
      "Server malfunctions",
      "A SQL Injection attack",
      "Man in the middle attacks",
      "None of the above",
    ],
    rightAnswer: "A SQL Injection attack",
  },
  {
    question: "What is an RDMBS?",
    choices: [
      "A SQL Injection attack",
      "Testing individual components of software to verify that they behave as intended",
      "Something that defines a contract for classes and requires classes to implement public methods that can be used in a specific way",
      "A system that handles the definition, storage, retrieval, and administration of data",
    ],
    rightAnswer:
      "A system that handles the definition, storage, retrieval, and administration of data",
  },
  {
    question: "What is a DAO?",
    choices: [
      "A class that encapsulates the logic for connecting to a data source and returning data",
      "A principle in object-oriented programming that allows one interface to represent different underlying forms",
      "Testing individual components of software to verify that they behave as intended",
      "A system that handles the definition, storage, retrieval, and administration of data",
    ],
    rightAnswer:
      "A class that encapsulates the logic for connecting to a data source and returning data",
  },
  {
    question: "What is Unit Testing?",
    choices: [
      "Testing code that interacts with external systems like a database",
      "Testing individual components of software to verify that they behave as intended",
      "Testing where you look for missing features or where there's room for improvement",
      "Testing that the software meets the needs of users",
    ],
    rightAnswer:
      "Testing individual components of software to verify that they behave as intended",
  },
];
export default {
  name: "App",
  data() {
    return {
      questions,
      score: 0,
      questionIndex: 0,
      question: questions[0],
      answer: "",
    };
  },
  methods: {
    submit() {
      const { answer, question, questions, questionIndex } = this;
      if (answer === question.rightAnswer) {
        this.score++;
      }

      if (questionIndex < questions.length) {
        this.questionIndex++;
        this.question = { ...questions[this.questionIndex] };
      }
    },
    restart() {
      this.question = questions[0];
      this.answer = "";
      this.questionIndex = 0;
      this.score = 0;
    },
  },
};
</script>

<style scoped>
#score{
    background-color: white;
    color: #A5BE00;
    border: none;
    border-radius: 10px;box-shadow: 0px 6px 20px 0px #A5BE00;
    text-align: center;
    margin-left: auto;
    margin-right: auto;
    max-width: 500px;
    margin-top: 4rem;
    padding: 0rem 4rem 2rem 4rem;
}
#score h1{
    font-size: 36px;
}
.done{
    text-align: center;
}
.quiz {
  border: none;
  color: #05668d;
  border-radius: 10px;
  padding: 2rem;
  background-color: white;
  box-shadow: 0px 6px 20px 0px #05668d;
  margin-top: 2rem;
  margin-right: auto;
  margin-left: auto;
  max-width: 900px;
}
.quiz label{
    margin-bottom: 2rem;
    font-size: 30px;
  font-family: 'Roboto Condensed', sans-serif;
}
.quiz button {
    margin-top: 2rem;
  background-color: #05668D;
  color: white;
  border-radius: 8px;
  padding: 1rem;
  border: none;
  font-family: 'Roboto Condensed', sans-serif;
  box-shadow: 0px 2px 8px 0px gray;
}
.quiz button:hover{
    background-color: #A5BE00;
}
.choices {
    font-size: 20px;
}
</style>