<template>
  <div class="container pt-5" id="whole">

    <div class="start" v-show="showStart">
      <h1>Time to Study!</h1>
      <button class="startbtn" @click="getQuestion()">Start</button>
    </div>

    <div class="questionSection" v-show="showQuestion">
        <h1>{{question.question}}</h1>
        <button class="nextbtn" @click="getNextQuestion()">Next Question</button>
        <button class="answerbtn" @click="toggleShowAnswer">Show Answer</button>
        <button @click="quit()">Quit</button>
    </div>
    
    <div class="answerSection" v-show="showAnswer">
        <h3>{{question.answer}}</h3>
        <button class="correctbtn" @click="markCorrect()">Correct</button>
         <button class="incorrectbtn" @click="markIncorrect()">Incorrect</button>
    </div>

    <div v-show="showStats" class="study">
        <h3>Questions to Further Study:</h3>
        <ul class="questions">
            <li v-for="question in incorrect" :key="question">
            <span>{{question.question}}</span>
            </li>
        </ul>
        <button @click="changeRoute('/')">Done</button>
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
      question: {
        id: "",
        question: "",
        answer: ""
      },
      showAnswer: false,
      showStats: false,
      showQuestion: false,
      showStart: true,
    }
  },
  methods: {
    changeRoute(route){
      this.$router.push(route);
    },
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
    getQuestion(){
      QuestionService.getQuestionById(1).then((response) => {
        if(response.status === 200){
          this.question = response.data;
          this.showQuestion = true;
          this.showStart = false;
          this.getAllQuestions();
        }
      })
      .catch((error) => {
        console.error(error);
      })
    },
    getNextQuestion(){
      QuestionService.getQuestionById(this.question.id + 1). then((response) => {
        if(response.status === 200 && this.question.id < this.allQuestions.length){
          this.question = response.data;
          this.showAnswer = false;
        }
        else {
          this.getQuestion();
        }
      })
    },
    markCorrect(){
        this.correctlyAnswered.push(this.question);
        this.getNextQuestion();
    },
    markIncorrect(){
        this.incorrect.push(this.question);
        this.getNextQuestion();
    },
    toggleShowAnswer(){
        this.showAnswer = !this.showAnswer;
    },
    quit(){
        this.showStats = true;
        this.showQuestion = false;
        this.showAnswer = false;
    },
  },
};
</script>

<style>
#whole{
  margin-top: 2rem;
}
.start{
  border: none;
  color: #05668D;
  border-radius: 10px;
  padding: 4rem;
  background-color: white;
  box-shadow: 0px 6px 20px 0px #05668D;
  margin-left: auto;
  margin-right: auto;
  max-width: 500px;
  text-align: center;
}
.start button{
  margin-top: 2rem;
  background-color: #05668D;
  color: white;
  border-radius: 8px;
  padding: 1rem 2rem;
  border: none;
  font-size: 30px;
  font-family: 'Roboto Condensed', sans-serif;
  box-shadow: 0px 2px 8px 0px gray;
}
.start button:hover{
  background-color: #A5BE00;
}
.start h1{
  font-size: 48px;
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
.study button{
  margin: 0.5rem;
  background-color: #05668D;
  color: white;
  border-radius: 8px;
  padding: 1rem;
  border: none;
  font-family: 'Roboto Condensed', sans-serif;
  box-shadow: 0px 2px 8px 0px gray;
}
.study button:hover{
  background-color: #A5BE00;
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
  background-color: #05668D;
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