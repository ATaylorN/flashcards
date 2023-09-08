<template>
  <div>
    <Header/>
    <Quiz/>
  </div>
</template>

<script>
import Quiz from '@/components/Quiz.vue';
import Header from '@/components/Header.vue';

export default {
    components: {
        Quiz,
        Header
    }
}
</script>

<style>

</style>