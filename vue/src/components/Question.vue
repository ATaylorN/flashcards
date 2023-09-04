<template>
  <div>
    <p>{{randomQuestion.question}}</p>
    <p>{{randomQuestion.answer}}</p>

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
 created: {
  getQuestion() {
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
}
</script>

<style>

</style>