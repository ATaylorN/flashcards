<template>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Flashcards</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:8080/questions">Random Question</a>
        </li>
      </ul>
       <ul class="nav navbar-nav navbar-right">
        <li> <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link> </li>
      </ul>
    </div>
  </div>
</nav>
  <!-- <div class="header-container">
    
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="http://localhost:8080/">Home</a></li>
        <li><a href="http://localhost:8080/questions">Questions</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li> <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link> </li>
      </ul>
    </div>
  </div>
</nav>

  </div> -->
</template>

<script>
export default {
  name: "Header"
}

</script>

<style scoped>


</style>