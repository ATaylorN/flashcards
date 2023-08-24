<template>
  <div>
    <p>{{question.answer}}</p>
  </div>
</template>

<script>
import QuestionService from "@/services/QuestionService";

export default {
  name: "questions",
  data(){
    return{
        question: []
    }
  },
  methods: {
    getQuestion(){
        QuestionService.getQuestion().then(response => {
            if(response.status === 200){
                this.question = response.data;
            }
        }) .catch(error => {
            console.error(error);
        })
    }
  } 
};
</script>

<style>
</style>