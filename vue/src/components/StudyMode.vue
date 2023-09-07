<template>
  <div>
    <button @click="getQuestion()">Start</button>
    <button @click="getNextQuestion()">Next Question</button>

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
        if(response.status === 200){
            this.randomQuestion.id = response.data.id;
            this.randomQuestion.question = response.data.question;
            this.randomQuestion.answer = response.data.answer;
            this.showAnswer = false;
        }
      })
    },
    toggleShowAnswer(){
        this.showAnswer = !this.showAnswer;
    }
  },
};
</script>

<style>
</style>