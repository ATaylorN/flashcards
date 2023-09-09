<template>
  <div class="home">
    <Header class="header"/>

    <div class="container pt-5" id="home">
      <div class="title">
      <h1>Choose Your Study Style:</h1>
      </div>

      <div class="studyOptions">
      <router-link class="link" :to="{name: 'questions'}"> <h2>Random</h2></router-link>
      <h3>Questions are listed at random and there's no limit. Study until your heart's content!</h3>
      <router-link class="link" :to="{name: 'studyMode'}"><h2>Study Mode</h2></router-link>
      <h3>Select whether or not you got the question correct as you go and keep track of what you should spend more time studying on!</h3>
      <router-link class="link" :to="{name: 'quiz'}"><h2>Take a Quiz</h2></router-link>
      <h3>Tired of flashcards? Put your knowledge to the test with a quiz!</h3>
    </div>

    </div>
  </div>
</template>

<script>
import Header from '@/components/Header';


export default {
  name: "home",
  components:{
    Header,
  }
};
</script>

<style>
body {
  background-image: url('@/Images/keyboard.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
}
#home{
  margin-top: 6rem;
}
.title{
  font-family: 'Roboto Condensed', sans-serif;
  border: none;
  text-align: center;
  padding: 2rem;
  border-radius: 10px;
  background: white;
  box-shadow: 0px 6px 20px 0px #05668D;
  max-width: 800px;
  margin: auto;
}
.title h1{
  font-weight: 600;
  font-size: 40px;
  background: white;
  color: #05668D;
}
.studyOptions{
  border-radius: 10px;
  font-family: 'Roboto Condensed', sans-serif;
  border: none;
  padding: 2rem;
  margin-top: 2rem;
  background: white;
  box-shadow: 0px 6px 20px 0px #05668D;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}
.studyOptions a{
  text-decoration: none;
}
.studyOptions h2:hover{
  color: #A5BE00;
}
.studyOptions h2{
  background:white;
  font-size: 34px;
  color: #05668D;
}
.studyOptions h3{
  background: white;
  font-size: 20px;
  color: #427AA1;
  margin-bottom: 3rem;
}
</style>