<template>
  <div>
    <Header/>
    <Question/>
  </div>
</template>

<script>
import Question from '@/components/Question.vue';
import Header from '@/components/Header.vue';

export default {
    components: {
        Question,
        Header
    }
}
</script>

<style>

</style>