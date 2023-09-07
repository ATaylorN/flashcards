<template>
  <div>
    <button @click="getQuestion()">Start</button>
    <button @click="getNextQuestion()">Next Question</button>

    <button @click="markCorrect()">Correct</button>
    <button @click="markIncorrect()">Incorrect</button>

    <div >
      <p>{{ randomQuestion.question }}</p>
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
      showAnswer: false
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
            this.incorrect.pop(this.randomQuestion.id);
        }
        this.correctlyAnswered.push(this.randomQuestion.id);
        this.getNextQuestion();
    },
    markIncorrect(){
        if(this.correctlyAnswered.includes(this.randomQuestion.id)){
            this.correctlyAnswered.pop(this.randomQuestion.id)
        }
        this.incorrect.push(this.randomQuestion.id);
        this.getNextQuestion();
    },
    toggleShowAnswer(){
        this.showAnswer = !this.showAnswer;
    }
  },
};
</script>

<style>
</style>