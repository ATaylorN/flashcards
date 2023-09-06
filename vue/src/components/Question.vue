<template>
  <div>

  <div>
    <p>{{randomQuestion.question}}</p>
    <button @click="getQuestion()">New Question</button>
    <button @click="toggleShowAnswer">Show Answer</button>
  </div>
    
  <div v-show="showAnswer">
      <p>{{randomQuestion.answer}}</p>
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

</style>