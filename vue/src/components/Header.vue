<template>
<div> 
  <button data-bs-toggle="collapse" data-bs-target="#collapsible"> Menu</button>
  <div id="collapsible" class="collapse">
    <ul class="nav flex-column">
      <li class="nav-item"><a class="nav-link" href="http://localhost:8080/">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="http://localhost:8080/questions">Random Question</a></li>
    </ul>

  </div>
</div>
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