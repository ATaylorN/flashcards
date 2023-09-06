<template>
  <div>
  <div>
    <p>{{randomQuestion.id}}</p>
    <p>{{randomQuestion.question}}</p>
    <button>See Answer</button>
  </div>
    
  <div>
      <p>{{randomQuestion.answer}}</p>
      <button>Back to Question</button>
      <button>Next Question</button>
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
    }
  }
 },
 created() {
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
 }
}
</script>

<style>

</style>