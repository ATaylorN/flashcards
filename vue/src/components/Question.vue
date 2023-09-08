<template>
  <div class="container pt-5" id="whole">

    <div class="start" v-show="showStart">
      <h1>Let's Begin!</h1>
      <button class="startbtn" @click="getQuestion()">Start</button>
    </div>

  <div class="questionSection" v-show="showQuestion">
    <h1>{{randomQuestion.question}}</h1>
    <button class="newbtn" @click="getQuestion()">New Question</button>
    <button class="answerbtn" @click="toggleShowAnswer">Show Answer</button>
    <button @click="changeRoute('/')">Done</button>
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
    showAnswer: false,
    showStart: true,
    showQuestion: false
  }
 },
 methods: {
  changeRoute(route){
      this.$router.push(route);
    },
  getQuestion(){
    QuestionService.getQuestion().then((response) => {
      if(response.status === 200){
        this.randomQuestion.id = response.data.id;
        this.randomQuestion.question = response.data.question;
        this.randomQuestion.answer = response.data.answer;
        this.showAnswer = false;
        this.showQuestion = true;
        this.showStart = false;
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

<style scoped>
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
#whole{
  margin-top: 2rem;
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
</style>