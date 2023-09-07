<template>
  <div class="container pt-5">

  <div class="questionSection">
    <h1>{{randomQuestion.question}}</h1>
    <button class="newbtn" @click="getQuestion()">New Question</button>
    <button class="answerbtn" @click="toggleShowAnswer">Show Answer</button>
  </div>
    
  <div class="answerSection" v-show="showAnswer">
      <h3>{{randomQuestion.answer}}</h3>
  </div>

  </div>
</template>

<script>
import QuestionService from '../services/QuestionService'

export default {
 name: 'questions',
 data() {
  return {
    randomQuestion: {
      id: '',
      question: '',
      answer: ''
    },
    showAnswer: false
  }
 },
 methods: {
  getQuestion(){
    QuestionService.getQuestion().then((response) => {
      if(response.status === 200){
        this.randomQuestion.id = response.data.id;
        this.randomQuestion.question = response.data.question;
        this.randomQuestion.answer = response.data.answer;
        this.showAnswer = false;
      }
    })
    .catch (error => {
      console.error(error);
    })
 },
 toggleShowAnswer(){
  this.showAnswer = !this.showAnswer;
 }
 }
}
</script>

<style>
.questionSection {
  border: 5px solid black;
  border-radius: 10px;
  padding: 2rem;
}
.questionSection h1{
  margin-bottom: 2rem;
  font-family: 'Roboto Condensed', sans-serif;
}
.questionSection button{
  margin: 0.5rem;
  background-color: rgb(34, 216, 216);
  color: white;
  border-radius: 8px;
  padding: 1rem;
  border: none;
}
.questionSection button:hover{
  background-color: darkcyan;
}
.answerSection{
  border: 5px solid black;
  border-radius: 10px;
  padding: 2rem;
  margin-top: 2rem;
  font-family: 'Roboto Condensed', sans-serif;
}
</style>