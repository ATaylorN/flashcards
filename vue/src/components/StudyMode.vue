<template>
  <div class="container pt-5" id="whole">

    <div class="questionSection" v-show="showQuestion">
        <h1>{{randomQuestion.question}}</h1>
        <button class="startbtn" @click="getQuestion()">Start</button>
        <button class="nextbtn" @click="getNextQuestion()">Next Question</button>
        <button class="answerbtn" @click="toggleShowAnswer">Show Answer</button>
        <button @click="quit()">Quit</button>
    </div>
    
    <div class="answerSection" v-show="showAnswer">
        <h3>{{randomQuestion.answer}}</h3>
        <button class="correctbtn" @click="markCorrect()">Correct</button>
         <button class="incorrectbtn" @click="markIncorrect()">Incorrect</button>
    </div>

    <div v-show="showStats" class="study">
        <h3>Questions to Further Study:</h3>
        <ul class="questions">
            <li v-for="question in incorrect" :key="question">
            <span>{{question}}</span>
            </li>
        </ul>
    </div>

  </div>
</template>

<script>
import QuestionService from "../services/QuestionService";

export default {
  name: "studyMode",
  data() {
    return {
      allQuestions: [],
      correctlyAnswered: [],
      incorrect: [],
      randomQuestion: {
        id: "",
        question: "",
        answer: "",
      },
      showAnswer: false,
      showStats: false,
      showQuestion: true
    }
  },
  methods: {
    getAllQuestions() {
      QuestionService.getAllQuestions()
        .then((response) => {
          if (response.status === 200) {
            this.allQuestions = response.data;
          }
        })
        .catch((error) => {
          console.error(error);
        });
    },
    getQuestion() {
      QuestionService.getQuestion()
        .then((response) => {
          if (response.status === 200) {
            this.randomQuestion.id = response.data.id;
            this.randomQuestion.question = response.data.question;
            this.randomQuestion.answer = response.data.answer;
            this.showAnswer = false;
          }
        })
        .catch((error) => {
          console.error(error);
        });
    },
    getNextQuestion() {
      QuestionService.getQuestionById(this.randomQuestion.id + 1).then((response) => {
        if(response.data.id != null){
            this.randomQuestion.id = response.data.id;
            this.randomQuestion.question = response.data.question;
            this.randomQuestion.answer = response.data.answer;
            this.showAnswer = false;
        }
        else {
            this.randomQuestion.id = 0;
        }
      })
    },
    markCorrect(){
        if(this.incorrect.includes(this.randomQuestion.id)){
            this.incorrect.pop(this.randomQuestion.question);
        }
        this.correctlyAnswered.push(this.randomQuestion.question);
        this.getNextQuestion();
    },
    markIncorrect(){
        if(this.correctlyAnswered.includes(this.randomQuestion.id)){
            this.correctlyAnswered.pop(this.randomQuestion.question)
        }
        this.incorrect.push(this.randomQuestion.question);
        this.getNextQuestion();
    },
    toggleShowAnswer(){
        this.showAnswer = !this.showAnswer;
    },
    quit(){
        this.showStats = true;
        this.showQuestion = false;
    },
  },
};
</script>

<style>
#whole{
  margin-top: 2rem;
}
.study{
  margin-top: 2rem;
  border: none;
  background-color: white;
  color: #05668D;
  padding: 2rem;
  box-shadow: 0px 6px 20px 0px #05668D;
  font-family: 'Roboto Condensed', sans-serif;
  border-radius: 10px;
}
.study h3{
  font-size: 36px;
  margin-bottom: 2rem;
}
.study span{
  font-size: 22px;
}
.questionSection {
  border: none;
  color: #05668D;
  border-radius: 10px;
  padding: 2rem;
  background-color: white;
  box-shadow: 0px 6px 20px 0px #05668D;
}
.questionSection h1{
  margin-bottom: 2rem;
  font-family: 'Roboto Condensed', sans-serif;
}
.questionSection button{
  margin: 0.5rem;
  background-color: #427AA1;
  color: white;
  border-radius: 8px;
  padding: 1rem;
  border: none;
  font-family: 'Roboto Condensed', sans-serif;
  box-shadow: 0px 2px 8px 0px gray;
}
.questionSection button:hover{
  background-color: #A5BE00;
}
.answerSection{
  background-color: white;
  border: none;
  color: #679436;
  border-radius: 10px;
  padding: 2rem;
  margin-top: 2rem;
  font-family: 'Roboto Condensed', sans-serif;
  box-shadow: 0px 6px 20px 0px #A5BE00;
}
.answerSection button{
  margin: 0.5rem;
  background-color: #679436;
  color: white;
  border-radius: 8px;
  padding: 1rem;
  border: none;
}
.answerSection button:hover{
  background-color: #A5BE00;
}

</style>